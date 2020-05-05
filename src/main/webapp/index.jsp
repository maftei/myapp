
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student registration</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Student Registration System</h1>
        </br>

        <div class= "row">
            <div class ="col-sm-4">
                <form  method="POST" action ="#">
                    <div allight ="left">
                        <label class="form-label">Student Name</label>    
                        <input type="text" class="form-control" placeholder="Student Name" name="sname" id="sname" required>                        
                    </div>
                    
                    <div allight ="left">
                        <label class="form-label">Student number</label>    
                        <input type="text" class="form-control" placeholder="Student Name" name="sname" id="snumber" required>                        
                    </div>

                    
                    <div allight ="left">
                        <label class="form-label">Course</label>    
                        <input type="text" class="form-control" placeholder="Course" name="course" id="course" required>                        
                    </div>    

                    <div allight ="left">
                        <label class="form-label">Feed</label>    
                        <input type="text" class="form-control" placeholder="Feed" name="feed" id="fedd" required>                        
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
