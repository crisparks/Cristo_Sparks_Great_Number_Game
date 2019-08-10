<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="styles.css">
		<title>Great Number Game</title>
	</head>
	<body>
		<div id="container">
			<h1>Great Number Game</h1>
			<h2>I'm thinking of a number between 1 and 100.</h2>
			<h2>Submit your guess below.</h2>
			<div id="display">
				<% String theResponse = (String) session.getAttribute("response");
					if(theResponse == "correct"){ %>
						<div id="correct">
							<h1>Winner!</h1>
							<a href="Reset"><button>New Round</button></a>
						</div>
				<% } else if(theResponse == "low"){%>
						<div id="incorrect">
							<h1>Too Low!</h1>
						</div>
				<% } else if(theResponse == "high"){ %>
						<div id="incorrect">
							<h1>Too High!</h1>
						</div>
				<% } %>
			</div>
			<form action="/GreatNumberGame/checker" method="post">
				<p><input type="text" name="guess"></p>
				<p><input type="submit" value="Submit"></p>
			</form>	
			</div>
	</body>
</html>