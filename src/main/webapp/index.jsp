<%@page import="com.mavenproject1.classes.Course"%>
<%@page import="java.util.List"%>

<%@include file="index1.jsp" %>
        <% 
            if (session.getAttribute("stegulet") == null)
            {
                session.setAttribute("stegulet", "1");
                
                
                
                Course vectorCursuri[] = new Course[100];
                int dimensiuneVectorCursuri = 0;
                session.setAttribute("vector_cursuri", vectorCursuri);
                session.setAttribute("n", dimensiuneVectorCursuri);
                
                
                
                
                // creare colectie de obiecte de tip curs
//                List<Course> courses_collection = null;
//                session.setAttribute("courses_collection", courses_collection);
            }
            
        %>









