
   <%@ page import="model.User" %> 
   <%@ page import="java.util.List" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
*{
margin: 0;
padding: 0;
box-sizing: border-box;
}

body{
height: 100vh;
display:flex;
flex-direction:column;
justify-content: center;
align-items: center;
background: linear-gradient(to right, #417af8, #749df3);
}



</style>
<body>

  <%  List<User> l =  (List<User>) request.getAttribute("list") ; %> 
  
  <table  border="2px"  cellspacing="30px" cellpadding="30px" >
  
  <tr  >
       <th>ID</th>
       <th>FNAME</th>
       <th>LNAME</th>
       <th>GENDER</th>
       <th>EMAIL</th>
       <th>PASSWORD</th>
       <th>PHONE</th>
       <th>DELETE</th>
       <th>UPDATE</th>
  
  </tr>
  
   <% for (User u : l){ %>  
   <tr>
   
   <td><%=u.getId()  %></td>
    <td><%= u.getFname() %></td>
    <td><%= u.getLname() %></td>
    <td><%= u.getGender() %></td>
    <td><%= u.getEmail() %></td>
    <td><%= u.getPassword() %></td>
    <td><%= u.getPhone() %></td>   
    <td><a href="delete?id=<%=u.getId()%>">delete</a></td>
    <td><a href="findById?id=<%=u.getId()%>">Update</a></td>

   </tr>
  
  <% } %>
  </table>
  
</body>
</html>