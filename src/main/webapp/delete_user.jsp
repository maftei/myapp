<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.mavenproject1.classes.User"%> 

<%String id = request.getParameter("id");%>

<form action="delete_user_final.jsp" method="post" name="forma">
      <input type="hidden" name="hdn_id_user" value="<% out.print(id); %>" />
      Sunteti sigur ca doriti stergerea utilizatorului <% out.print(id); %> ?
      <input type="submit" name="submit" value="Da" />
</form>
      