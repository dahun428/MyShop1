package com.MyshoppingMall.bbs.util;

import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.MyshoppingMall.bbs.vo.BbsFile;

public class BbsFileUtil {

	
	static {

		

	}

	public static BbsFile fileUploadExecute(HttpServletRequest request, String directory) {


		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		String fileName = "";
		String fileRealName = "";
		BbsFile bbsFile = null;

		try {
			bbsFile = new BbsFile();
			if(isMultipart) {
				DiskFileItemFactory factory = new DiskFileItemFactory();
				ServletFileUpload upload = new ServletFileUpload(factory);
				upload.setHeaderEncoding("utf-8");


				List<FileItem> items = upload.parseRequest(request);
				Iterator<FileItem> iter = items.iterator();
				while(iter.hasNext()) {
					FileItem item = iter.next();
					item.getString("utf-8");

					if(item.isFormField()) {

						fileName = item.getFieldName();
						fileName = duplicateFile(fileName);
						fileRealName = new String((item.getString().getBytes("8859_1")),"utf-8");
						bbsFile.setFileName(fileName);
						bbsFile.setFileRealName(fileRealName);
					} else {

						fileName = new File(item.getName()).getName();
						fileName = duplicateFile(fileName);
						fileRealName = new File(item.getName()).getName();
						File storeFile = new File(directory + "/" +fileName);
						bbsFile.setFileName(fileName);
						bbsFile.setFileRealName(fileRealName);
						item.write(storeFile);
						
					}
				}

			}

			return bbsFile;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}
	
	public static void fileDownloadExecute(HttpServletRequest request, HttpServletResponse response, BbsFile bbsFile, String directory) throws Exception{

		String fileName = bbsFile.getFileName();
		String fileRealName = bbsFile.getFileRealName();
		
		File file = new File(directory + "/" + fileName);
		
		String mimeType = request.getSession().getServletContext().getMimeType(file.toString());
		if(mimeType == null) {
			response.setContentType("application/octet-stream; charset=utf-8");
			response.setContentLength((int)file.length());
		}
		
		String userAgent = request.getHeader("User-Agent");
		boolean internetExplorer = userAgent.indexOf("MSIE") > 1;
        if( !internetExplorer ) {
            internetExplorer = userAgent.indexOf("Gecko") > -1;
        }
		
        String downloadFileName = null;

        FileInputStream fis = null;
		FileChannel inputChannel = null;
		WritableByteChannel outputChannel = null;
		try {
			
			downloadFileName = new String(fileRealName.getBytes(), "utf-8");
			
			if(internetExplorer) {
				downloadFileName = URLEncoder.encode(fileName, "UTF-8").replaceAll("\\+", "%20");
			} else {
				downloadFileName = new String(fileName.getBytes("UTF-8"), "ISO-8859-1");
			}
			response.setHeader("Content-Disposition", "attachment; filename=\"" + downloadFileName + "\";");
			response.setHeader("Content-Transfer-Encoding", "binary");
			
			
			fis = new FileInputStream(file);
			inputChannel = fis.getChannel();
			
			outputChannel = Channels.newChannel(response.getOutputStream());
			inputChannel.transferTo(0, fis.available(), outputChannel);
			
			
		} catch(Exception e) {
        	e.printStackTrace();
        } finally {
        	try {
                if (outputChannel.isOpen())
                    outputChannel.close();
            } catch (Exception e) {}
            try {
                if (inputChannel.isOpen())
                    inputChannel.close();
            } catch (Exception e) {}
            try {
                if (fis != null)
                	fis.close();
            } catch (Exception e) {}

        }
		
	}
	
	private static String duplicateFile(String originFileName) {
		UUID uuid = UUID.randomUUID();
		String savedName = uuid.toString()+"_"+originFileName;
		return savedName;
	}
}
