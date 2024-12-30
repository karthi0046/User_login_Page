<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ page import="model.User" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

body{
height: 100vh;
display:flex;
flex-direction:column;
justify-content: center;
align-items: center;
background: linear-gradient(to right, #417af8, #749df3);

}

form{
padding: 30px 120px;
display:flex;
flex-direction:column;
text-align:center;
justify-content: center;
align-items: center;
gap:10px;
border: 2px solid black;
border: none;
border-radius: 20px;
background: linear-gradient(to right, #f8d213, #fbe249);
}
#btn{
margin-top: 5px;
width: 100px;
border-radius: 10px;
}
form> input{

padding: 8px 30px;
border-radius: 10px;
border: none;
}

</style>
<body>

<% User u = (User) request.getAttribute("u") ; %>

<form action="update">

  <label>Enter ID</label>
  <input type="number" name="id" value="<%= u.getId()%>"  >
  
   <label>Enter Fname</label>
  <input type="text" name="fname"  value="<%= u.getFname()%>" >
  
   <label>Enter Lname</label>
  <input type="text" name="lname" value="<%= u.getLname()%>" >
  
   <label>Enter Gender </label>
  <input type="text" name="gender" value="<%= u.getGender()%>"  >
  
   <label>Enter Email</label>
  <input type="text" name="email"  value="<%= u.getEmail()%>"  >
  
   <label>Enter Password</label>
  <input type="text" name="password"  value="<%= u.getPassword()%>"  >
  
   <label>Enter Phone Number</label>
  <input type="number" name="phone" value="<%= u.getPhone()%>"  >

<input id="btn"  type="submit">

</form>

</body>
</html>