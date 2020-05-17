
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%
        Connection con;
        PreparedStatement pst, pstCheckDatabase;
        ResultSet rs;

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/universitate", "andrei", "12345");

        pstCheckDatabase = con.prepareStatement("select * from students where student_number = '" + studentnumber + "' ");
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
    pst = con.prepareStatement("insert into students (first_name,last_name, student_number)values(?,?,?)");
    pst.setString(1, firstname);
    pst.setString(2, lastname);
    pst.setString(3, studentnumber);
    pst.executeUpdate();
%>
<script>alert('Record added');</script>
<%
        }
    }

%>




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Students List</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Students List</h1>
        </br>
        <a href="add_course.jsp">Add course</a>     &nbsp;
        <a href="add_schedule.jsp">Add schedule</a>
        <div class= "row">
            <div class ="col-sm-4">
                <form  method="POST" action ="#">
                    <div allight ="left">
                        <label class="form-label">Student First Name</label>    
                        <input type="text" class="form-control" placeholder="Student Firts Name" name="sfirstname" id="sfirstname" required>                        
                    </div>

                    <div allight ="left">
                        <label class="form-label">Student Last Name</label>    
                        <input type="text" class="form-control" placeholder="Student Last Name" name="slastname" id="slastname" required>                        
                    </div>

                    <div allight ="left">
                        <label class="form-label">Student number</label>    
                        <input type="text" class="form-control" placeholder="Student Number" name="snumber" id="snumber" required>                        
                    </div>
                    </br>
                    <div allight ="right">
                        <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">    
                        <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning"> 
                    </div>        


                </form>
            </div>


            <div class="col-sm-8">

                <div class="panel-body">
                    <table id="table-student" class="table table-responsive table-bordered"  cellpadding ="0" width="100%">
                        <thead>
                            <tr>
                                <th> Student Name </th>
                                <th> Course </th>
                                <th> Edit </th>
                                <th> Delete </th>
                            </tr>

                            <tr>
                                <td> </td>
                                <td> </td>
                                <td> </td>
                                <td> </td>
                                <td> </td>
                            </tr>    

                    </table>    

                </div>
            </div>       
    </body>
</html>
