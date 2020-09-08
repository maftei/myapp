<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.mavenproject1.classes.User"%> 

<!--C:\Users\razvan\AppData\Roaming\NetBeans\8.2\config\GF_4.1.1\domain1\logs-->
<%

    String id = request.getParameter("hdn_id_user");
    Connection con;
    PreparedStatement pst, pstCheckDatabase;
    int rez = 1;

    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost/universitate", "andrei", "12345");
    
    String sir_stergere = "DELETE FROM user WHERE id=" + id.toString();
    out.println(sir_stergere);
    pstCheckDatabase = con.prepareStatement(sir_stergere);
    rez = pstCheckDatabase.executeUpdate();
    
    out.println(rez);
    
    if (rez == 1)
    {
        out.println("Utilizatorul a fost sters");
    }
    else
    {
        out.println("Stergerea nu a fost posibila!");
    }
      
%>
