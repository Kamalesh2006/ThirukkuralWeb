<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.thirukkural.repository.Repository,com.thirukkural.dto.Kural,com.thirukkural.searchthirukkural.SearchThirukkuralController"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ThirukkuralApplication</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<div class = "header">
	<img src="https://d18x2uyjeekruj.cloudfront.net/wp-content/uploads/2021/01/th.jpg">
	<h1>திருக்குறள்</h1>
	</div>
	<div class ="kuralsearch">
		<form class="kuralbox">
			<input type="text" class = "kuralno" name="kuralno" placeholder="குறள் எண் உள்ளிடவும்">
			<input type="submit" class = "submitbutton" value ="search">
			
		</form>
	</div>
	
		
		<%
		
		String kuralStr = request.getParameter("kuralno");
		if(kuralStr!=null){
			out.println("<div class =\"kuraldescription\">");
			out.println("<div class = \"kuralinner\">");
			if(kuralStr.equals("")|| Integer.parseInt(kuralStr)>1330 || Integer.parseInt(kuralStr)<0){
				out.println("<p>சரியான எண்ணை உள்ளிடவும்</p>");
			}
			else{
				Kural kural =SearchThirukkuralController.getInstance().getThirukkural(kuralStr);
				
				out.println("<p>"+kural.getNumber()+"</p>");
				out.println("<hr>");
				out.println("<p class =\"kuralline\"><b>"+kural.getLine1()+"</b></p>");
				out.println("<p class =\"kuralline\"><b>"+kural.getLine2()+"</b></p>");
				out.println("<hr>");
				out.println("\nதமிழ் விளக்கம்");
				out.println("<p>"+kural.getTamilExplanation()+"</p>");
				out.println("\nEnglish Translation:");
				out.println("<p><em>"+kural.getTranslation()+"</em></p>");
				out.println("\nEnglish Explanation:");
				out.println("<p><em>"+kural.getEnglishExplanation()+"</em></p>");
				out.println("</div>");
				out.println("</div>");
			}
		}
		%>
		<div class="adhigarambuttondiv">
			<form action="Adhigaram.jsp" method="get">
				<button>அதிகாரம் தேடல்</button>
			</form>		
		</div>
</body>
</html>