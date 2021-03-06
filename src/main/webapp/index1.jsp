<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student registration</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


        <style>
            .dropbtn {
                background-color: #000000;
                color: white;
                padding: 16px;
                font-size: 16px;
                border: none;
                cursor: pointer;
            }

            .dropdown {
                position: relative;
                display: inline-block;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            .dropdown-content a:hover {background-color: #f1f1f1}

            .dropdown:hover .dropdown-content {
                display: block;
            }

            .dropdown:hover .dropbtn {
                background-color: #3e8e41;
            }
        </style>

    </head>


    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">

                <div class="navbar-header">
                    <a class="navbar-brand" href="index.jsp">Project</a>
                </div>

                <div class="dropdown">
                    <button class="dropbtn">Home</button>
                    <div class="dropdown-content">
                        <a href="index.jsp">Home</a>
                        <a href="#">Link 2</a>
                        <a href="#">Link 3</a>
                    </div>
                </div>

                <div class="dropdown">
                    <button class="dropbtn">Add data</button>
                    <div class="dropdown-content">
                        <a href="add_user.jsp">Add user</a>
                        <a href="add_course.jsp">Add course</a>
                        <a href="add_schedule.jsp">Add schedule</a>
                    </div>
                </div>

                <div class="dropdown">
                    <button class="dropbtn">Reports</button>
                    <div class="dropdown-content">
                        <a href="report_user.jsp">Users</a>
                        <a href="report_course.jsp">Courses</a>
                        <a href="report_schedule.jsp">Schedule</a>
                    </div>
                </div>

                <div class="navbar-header">
                    <a class="navbar-brand" href="save_collection.jsp">Save courses</a>
                </div>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                    <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                </ul>

            </div>
        </nav>






