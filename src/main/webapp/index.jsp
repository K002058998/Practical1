<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <div id="mydiv">
            
              <script>
            
    const request = new XMLHttpRequest();
request.open('GET', 'https://jsonplaceholder.typicode.com/users');
request.send(); 
 
request.onload = () => {
  if (request.status === 200) {
    console.log("Success"); // So extract data from json and create table
    
    //Extracting data
    var name = JSON.parse(request.response).value.name;
    var username = JSON.parse(request.response).value.username;
    var email = JSON.parse(request.response).value.email;
  
    //Creating table
    var table="<table>";
	table+="<tr><th>Name</th><th>Username</th><th>Email</th></tr>"; 
	table+="<tr><td>"+name+"</td><td>"+username+"</td><td>"+email+"</td></tr>";
	table+="</table>";
 
    //Showing the table inside table
    document.getElementById("mydiv").innerHTML = table;   
  } 
};
 
request.onerror = () => {
  console.log("error")
};</script>
              
              </div>
    </body>
</html>
