package kr.goott.tour.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CommandService {
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException , IOException;
	
}
