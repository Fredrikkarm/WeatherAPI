package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.GettheWeather;
import model.weatherBean;

/**
 * Servlet implementation class Cookiecount
 */
@WebServlet("/Cookiecount")
public class Cookiecount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cookiecount() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		Cookie cookie = null;
		Cookie[] cookies = null;

		cookies = request.getCookies();
		
		String cityStr = "";
		String countryStr = "";
		
		

		if( cookies != null ) {
		   
		    
		    for (int i = 0; i < cookies.length; i++) {
		       cookie = cookies[i];
		       if(cookie.getName().equals("cityname")){
		    	
		    	   cityStr= cookie.getValue();
		    	   
		    	   
		    	   
		       }
		       
		       else if(cookie.getName().equals("countryname")) {
		    	   
		    	   countryStr = cookie.getValue();
		       }
		       
		    }
		    
		    weatherBean wBean = new weatherBean(cityStr, countryStr);

			GettheWeather.getWeather(wBean);

			request.setAttribute("wBean", wBean);
			

			RequestDispatcher rd = request.getRequestDispatcher("showWeather.jsp");
			rd.forward(request, response);		  
		 }

	}


}
