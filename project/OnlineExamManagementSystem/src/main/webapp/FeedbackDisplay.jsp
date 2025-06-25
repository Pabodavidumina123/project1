<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Feedback Table</title>
  <link rel="stylesheet" href="FeedbackDisplay.css">
  
</head>
<body>
    

  <div class="container">
    <h2>Feedback Submissions</h2>
    <table>
      <thead>
        <tr>
          <th>Id</th>
          <th>Name</th>
          <th>Email</th>
          <th>Subject</th>
          <th>Message</th>
           <th>Action</th>
        </tr>
        
      </thead>
      <c:forEach var="Feeds" items="${allFeeds}"> 
        <!-- Sample Data -->
        <tr>
          <td>${Feeds.id}</td>
          <td>${Feeds.name}</td>
          <td>${Feeds.email}</td>
          <td>${Feeds.subject}</td>
          <td>${Feeds.message}</td>
          
          <td>
       
          
          		<a href="FeedbackUpdate.jsp?Id=${Feeds.id}&Name=${Feeds.name}&Email=${Feeds.email}&Subject=${Feeds.subject}&Message=${Feeds.message}">
  <button>Update</button>
</a>      									
       <form action="FeedbackDeleteServlet" method="post">
  <input type="hidden" name="Id" value="${Feeds.id}" />
  <button type="submit">Delete</button>
</form>
       
          </td>
        </tr>
       
        <!-- More rows can be added dynamically using JSP or JS -->
      </c:forEach>
    </table>
  </div>

</body>
</html>
