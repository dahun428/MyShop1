package com.MyshoppingMall.frontcontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.MyshoppingMall.bbs.vo.User;
import com.MyshoppingMall.command.Bcommand;
import com.MyshoppingMall.service.UserService;

public class UserUpdateCommand implements Bcommand {

	public void execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		UserService service = new UserService();
		User user = service.getUserById(userId);
		request.setAttribute("user", user);
		
		System.out.println("session" + userId);
		
	}

}
