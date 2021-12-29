<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.weatherBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>

<!-- för G fixa: nedan med for loop istället för for each loop på ett snyggare sätt och checka
	så det alltid funkar istället för cookies 2.
	lägg till en parameter till som den checkar efter, samma som tid ez
	fixa css på hemsidan
 -->
	<%
	//Cookie Cookies[] = request.getCookies();
		
	/*if (Cookies != null) {
		
		for (Cookie cookie : Cookies) {
			if (cookie.getName().equals("cityCookie")) {
				out.print("in " + Cookies[2].getValue() + " ");
				out.print(Cookies[1].getValue());
		

			}
		}
	} else {
		response.sendRedirect("index.jsp");
	}*/
	%>

	<%
	weatherBean wBean = (weatherBean) request.getAttribute("wBean");
	out.println("Weather in " + wBean.getCountryStr() + " " + wBean.getCityStr() + " is now " + wBean.getCloudsStr());
	out.println(" and current date and time is: " + wBean.getCurrentTime() + " Londom time ");
	out.println("and humidity level is: " + wBean.getCurrentHumidity() + "%");
	%>
	
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