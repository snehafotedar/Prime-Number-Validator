<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id1=request.getParameter("primenum");
            int id = Integer.parseInt(id1);
            String ans1 = "Number you entered is prime";
            String ans2 = "Number you entered is not prime";
            int c = 0;
            String answer;

            for(int i=2;i<id;i++)
                {
                    if(id%i==0)
                                                {
                            c=i;
                        }
                }
            if(c==0)
                {
                    answer=ans1;
                }
            else
                {
                                        answer=ans2;
                }
        %>
<body>
	<body style="background-color:powderblue;" align="center">
<center>
	<div class="container" style="color:black">
	<h3>Introduction to Cloud Computing - Assignment 1</h3>
	<h4>Submitted by - Sneha Fotedar</h4>
	<h3 style="color:blue;">Prime Number Validator</h3>
	<form role="form" action="prime2.jsp" method="post">
		<label for="prime">Enter your number:</label>
		<input type="number" name ="primenum" id="primenum" placeholder="Enter number"></input>
	<br/>
	<br/>
	<input type="submit" value="Submit">
	</form>
	<br/>
		<% out.println(answer); %>
	</body>
</html>
