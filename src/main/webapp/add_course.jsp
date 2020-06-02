
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%
 // verificare daca este logat
 int ok = 1;
 if(session["id_logat"] <= 0)
 {
     out.println("Nu sunteti autentificat!");
     ok = 0;
 }
 if(session["tip_user_logat"] != 1 && session["tip|] != 2])
 {
     out.println("Nu aveti drepturi de acces la aceasta sectiune!");
     ok = 0;
 }
 if(ok == 0)
 {
     die();
 }
%>


<%
    if (request.getParameter("submit") != null) {
        String coursename = request.getParameter("scoursename");
        String coursefee = request.getParameter("scoursefee");
        String coursedescription = request.getParameter("scoursedescription");
        String courseduration = request.getParameter("scourseduration");

        Connection con;
        PreparedStatement pst, pstCheckDatabase;
        ResultSet rs;

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/universitate", "andrei", "12345");

        pstCheckDatabase = con.prepareStatement("select * from courses where course_name = '" + coursename + "' ");
        rs = pstCheckDatabase.executeQuery();

        int nr = 0;
        while (rs.next()) {
            nr++;
        }

        if (nr > 0) {
%>
<script>alert('Datele exista deja in baza!');</script>
<%
} else {
    pst = con.prepareStatement("insert into courses (course_name,course_fee,course_description,duration)values(?,?,?,?)");
    pst.setString(1, coursename);
    pst.setString(2, coursefee);
    pst.setString(3, coursedescription);
    pst.setString(4, courseduration);

    pst.executeUpdate();
%>
<script>alert('Record added');</script>
<%
        }
    }

%>


<%@include file="index1.jsp" %>


<div class= "row">
    <div class ="col-sm-4">
        <form  method="POST" action ="#">
            <div allight ="left">
                <label class="form-label">Course Name</label>    
                <input type="text" class="form-control" placeholder="Course Name" name="scoursename" id="scoursename" required>                        
            </div>

            <div allight ="left">
                <label class="form-label">Course Fee</label>    
                <input type="number" class="form-control" placeholder="Course Fee" name="scoursefee" id="scoursefee" required>                        
            </div>

            <div allight ="left">
                <label class="form-label">Course Description</label>    
                <input type="text" class="form-control" placeholder="Course Description" name="scoursedescription" id="scoursedescription" required>                        
            </div>
            <div allight ="left">
                <label class="form-label">Course Duration</label>    
                <input type="text" class="form-control" placeholder="Course Duration" name="scourseduration" id="scourseduration" required>                        
            </div>
            </br>
            <div allight ="right">
                <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">    
                <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning"> 
            </div>        


        </form>
    </div>



</body>
</html>
