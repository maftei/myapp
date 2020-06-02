
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.mavenproject1.classes.Person"%> 


<%
   
    if (request.getParameter("submit") != null) {
       
        String studentnumber = request.getParameter("snumber");
        
        Person p1 =new Person();
        
        int ok = 1;
        if (p1.set_firstname(request.getParameter("sfirstname")) == 0)
            ok = 0;
        
        if(p1.set_lastname(request.getParameter("slastname")) == 0)
            ok =0;
        
        
        if (ok == 1)
        {
            Connection con;
            PreparedStatement pst, pstCheckDatabase;
            ResultSet rs;

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/universitate", "andrei", "12345");

            pstCheckDatabase = con.prepareStatement("SELECT * FROM students WHERE student_number = '" + studentnumber + "' ");
            rs = pstCheckDatabase.executeQuery();

            int nr = 0;
            while (rs.next()) 
            {
                nr++;
                break;
            }

            if (nr > 0) {
            %>
            <script>alert('Datele exista deja in baza!');</script>
            <%
            } else {
                pst = con.prepareStatement("INSERT INTO students (first_name,last_name, student_number) VALUES (?,?,?)");
                pst.setString(1, p1.get_firstname());
                pst.setString(2, p1.get_lastname());
                pst.setString(3, studentnumber);
                pst.executeUpdate();
                %>
                <script>alert('Record added');</script>
                <%
            }
        }
    }

%>




<%@include file="index1.jsp" %>


<h1>Student Registration System</h1>
</br>

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



</body>
</html>
