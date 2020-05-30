package com.MyshoppingMall.bbs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.MyshoppingMall.bbs.checkFunction.BBSFileCheckFunction;
import com.MyshoppingMall.bbs.util.ConnUtil;
import com.MyshoppingMall.bbs.util.QueryUtil;
import com.MyshoppingMall.bbs.vo.BbsFile;
import com.MyshoppingMall.bbs.vo.User;

public class BbsFileDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	private static BbsFileDAO instance = new BbsFileDAO();
	public static BbsFileDAO getInstance() {
		return instance;
	}

	/**
	 * 업로드 기능이 끝난후 FILE_NO 를 반환한다.
	 * @return
	 */
	public BbsFile recentBbsFileNo() {

		String query = "SELECT BBS_FILE_SEQ.CURRVAL AS FILE_NO FROM DUAL ";

		BbsFile bbsFile = null;

		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();

			if(rs.next()) {

				bbsFile = new BbsFile();
				bbsFile.setFileNo(rs.getInt("FILE_NO"));
			}
			return bbsFile;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();

			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return bbsFile;
	}
	public int addBbsFile(BbsFile bbsFile) {

		String query = QueryUtil.getSQL("BBSFile.addBbsFile_1");
		String query1 = QueryUtil.getSQL("BBSFile.addBbsFile_2");
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, bbsFile.getFileName());
			pstmt.setString(2, bbsFile.getFileRealName());
			pstmt.setString(3, bbsFile.getUser().getUserId());
			pstmt.executeQuery();
			pstmt = conn.prepareStatement(query1);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				return rs.getInt("FILE_NO");
			}

			return BBSFileCheckFunction.BBS_FILE_UPLOAD_FAIL;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();

			} catch(Exception e) {
				e.printStackTrace();
			}
		}

		return BBSFileCheckFunction.BBS_FILE_DATA_BASE_ERROR;
	}

	public BbsFile getBbsFileByFileNo(int fileNo) {

		String query = QueryUtil.getSQL("BBSFile.getBbsFileByFileNo");

		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, fileNo);
			rs = pstmt.executeQuery();

			BbsFile bbsFile = null;
			if(rs.next()) {
				bbsFile = resultSetForm(rs);
			}

			return bbsFile;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();

			} catch(Exception e) {
				e.printStackTrace();
			}
		}


		return null;
	}

	public BbsFile getBbsFileByFileName(String fileName) {

		String query = QueryUtil.getSQL("BBSFile.getBbsFileByFileName");

		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, fileName);
			rs = pstmt.executeQuery();

			BbsFile bbsFile = null;
			if(rs.next()) {
				bbsFile = resultSetForm(rs);
			}

			return bbsFile;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();

			} catch(Exception e) {
				e.printStackTrace();
			}
		}


		return null;
	}
	public String getBbsFileRealNameByFileName(String fileName) {

		String query = QueryUtil.getSQL("BBSFile.getBbsFileRealNameByFileName");

		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, fileName);
			rs = pstmt.executeQuery();

			if(rs.next()) {

				return rs.getString(1);
			}

			return "";
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();

			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	public int updateFile(BbsFile bbsFile) {

		String query = "UPDATE BBS_FILE SET FILE_NAME = ? , FILE_REAL_NAME = ?, REGISTERED_DATE = sysdate WHERE FILE_NO = ? ";

		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, bbsFile.getFileName());
			pstmt.setString(2, bbsFile.getFileRealName());
			pstmt.setInt(3, bbsFile.getFileNo());
			pstmt.executeUpdate();

			return BBSFileCheckFunction.BBS_FILE_UPDATE_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();

			} catch(Exception e) {
				e.printStackTrace();
			}
		}

		return BBSFileCheckFunction.BBS_FILE_UPDATE_FAIL;
	}
	public int deleteFileByFileNo(BbsFile bbsFile) {
		
		String query = "update bbs_file set file_name = ? , file_real_name = ? ,"
							+ "registered_date = sysdate where file_no = ? ";

		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, bbsFile.getFileName());
			pstmt.setString(2, bbsFile.getFileRealName());
			pstmt.setInt(3, bbsFile.getFileNo());
			pstmt.executeUpdate();

			return BBSFileCheckFunction.BBS_FILE_UPDATE_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();

			} catch(Exception e) {
				e.printStackTrace();
			}
		}

		return BBSFileCheckFunction.BBS_FILE_UPDATE_FAIL;
	}


	private BbsFile resultSetForm(ResultSet rs) throws SQLException {

		BbsFile bbsFile = new BbsFile();
		bbsFile.setFileNo(rs.getInt("file_no"));
		bbsFile.setFileName(rs.getString("file_name"));
		bbsFile.setFileRealName(rs.getString("file_real_name"));

		User user = new User();
		user.setUserId(rs.getString("user_id"));
		bbsFile.setUser(user);
		bbsFile.setRegisteredDate(rs.getDate("registered_date"));

		return bbsFile;
	}
}
