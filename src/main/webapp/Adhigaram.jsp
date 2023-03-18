<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"
    import="com.thirukkural.repository.Repository,com.thirukkural.dto.Adhigaram,com.thirukkural.dto.Kural,com.thirukkural.adhigaram.AdhigaramController"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ThirukkuralAdhigaram</title>
</head>
<link rel="stylesheet" href="style.css">
<body>
<div class = "header">
	<img src="https://d18x2uyjeekruj.cloudfront.net/wp-content/uploads/2021/01/th.jpg">
	<h1>திருக்குறள்</h1>
	</div>
	<div class ="kuralsearch">
		<form class="kuralbox">
			<input type="text" class = "kuralno" name="adhigaramno" placeholder="அதிகாரம் எண் உள்ளிடவும்">
			<input type="submit" class = "submitbutton" value ="search">
			
		</form>
	</div>
	<%
		
		String adhigaramStr = request.getParameter("adhigaramno");
		if(adhigaramStr!=null){
			out.println("<div class =\"kuraldescription\">");
			out.println("<div class = \"kuralinner\">");
			
			if(adhigaramStr.equals("")|| Integer.parseInt(adhigaramStr)>133 || Integer.parseInt(adhigaramStr)<0){
				out.println("<p>சரியான எண்ணை உள்ளிடவும்</p>");
			}
			else{
				int adhigaramEnn = Integer.parseInt(adhigaramStr);
				Adhigaram adhigaram =AdhigaramController.getInstance().adhigaramSearch(adhigaramEnn);
				out.println("அதிகாரம் பெயர் "+adhigaram.getName());
				int start =0;
				while(start<10){
					Kural kural = adhigaram.getKuralArr()[start];
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
					
					start++;
				}
				out.println("</div>");
				out.println("</div>");
			}
		}
		%>
		<div class="adhigarambuttondiv">
			<form action="Home.jsp" method="get">
				<button>குறள் தேடல்</button>
			</form>		
		</div>
</body>
</html>