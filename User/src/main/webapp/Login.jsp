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

<form action="login">

 <label >Enter email</label>
 <input type="text" name="email">


 <label >Enter password</label>
 <input type="text" name="password">
 
 <input type="submit" id="btn">
 
</form>

</body>
</html>