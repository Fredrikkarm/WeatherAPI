<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>

<%
//Cookie Cookies[] = request.getCookies();
//Cookie cityCookie = new Cookie("city", request.getParameter("cityStr"));
//Cookie countryCookie = new Cookie("country", request.getParameter("countryStr"));
//cityCookie.setMaxAge(60);
//countryCookie.setMaxAge(60);
//response.addCookie(cityCookie);
//response.addCookie(countryCookie);

Cookie cookie = null;
Cookie[] cookies = null;

cookies = request.getCookies();

if( cookies != null ) {
    out.println("<h2> Found Cookies Name and Value</h2>");
    
    for (int i = 0; i < cookies.length; i++) {
       cookie = cookies[i];
       out.print("Name : " + cookie.getName( ) + ",  ");
       out.print("Value: " + cookie.getValue( )+" <br/>");
       if(cookie.getName().equals("cityname")){
    	   RequestDispatcher rd = request.getRequestDispatcher("Cookiecount");
   		rd.forward(request, response);
       }
       
    }
 }

/*
if(cookie[1] != null){
	int i;
	for(i = 1; i < cookie.length; i++){
		
	}
}*/
%>
<p>You have yet to make a search or you've cleared your cookies... 
that would be unfortunate because i like cookies: </p>
<header>
            <div class="header-text-content">
                <h1>Welcome to Weather API</h1>
                <h5>By Fredrik Karmsten</h5>
            </div>
        </header>

<div class="formdiv">
	<form action="OWservlet" method="GET">
		enter country: <input type="text" name="city"><br> 
		enter city: <input type="text" name="country"><br> 
		<input type="submit" value="submit">
	</form>
	</div>
	
<footer>
	<p>This project is brought to you by Open Weather map API, Kim Jong Un has a funny hairstyle and i HODL bitcoin</p>
</footer>

	

</body>
</html>