
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="index1.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="register-form.css">
    </head>
    <style>
        @import url(https://fonts.googleapis.com/css?family=Roboto:400,300,600,400italic);
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            -webkit-font-smoothing: antialiased;
            -moz-font-smoothing: antialiased;
            -o-font-smoothing: antialiased;
            font-smoothing: antialiased;
            text-rendering: optimizeLegibility;
        }

        body {
            font-family: "Roboto", Helvetica, Arial, sans-serif;
            font-weight: 100;
            font-size: 12px;
            line-height: 30px;
            color: #777;
            background: #87CEEB;
        }

        .container {
            max-width: 400px;
            width: 100%;
            margin: 0 auto;
            position: relative;
        }

        #contact input[type="text"],
        #contact input[type="email"],
        #contact input[type="tel"],
        #contact input[type="url"],
        #contact textarea,
        #contact button[type="submit"] {
            font: 400 12px/16px "Roboto", Helvetica, Arial, sans-serif;
        }

        #contact {
            background: #F9F9F9;
            padding: 25px;
            margin: 150px 0;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }

        #contact h3 {
            display: block;
            font-size: 30px;
            font-weight: 300;
            margin-bottom: 10px;
        }

        #contact h4 {
            margin: 5px 0 15px;
            display: block;
            font-size: 13px;
            font-weight: 400;
        }

        fieldset {
            border: medium none !important;
            margin: 0 0 10px;
            min-width: 100%;
            padding: 0;
            width: 100%;
        }

        #contact input[type="text"],
        #contact input[type="email"],
        #contact input[type="tel"],
        #contact input[type="url"],
        #contact textarea {
            width: 100%;
            border: 1px solid #ccc;
            background: #FFF;
            margin: 0 0 5px;
            padding: 10px;
        }

        #contact input[type="text"]:hover,
        #contact input[type="email"]:hover,
        #contact input[type="tel"]:hover,
        #contact input[type="url"]:hover,
        #contact textarea:hover {
            -webkit-transition: border-color 0.3s ease-in-out;
            -moz-transition: border-color 0.3s ease-in-out;
            transition: border-color 0.3s ease-in-out;
            border: 1px solid #aaa;
        }

        #contact textarea {
            height: 100px;
            max-width: 100%;
            resize: none;
        }

        #contact button[type="submit"] {
            cursor: pointer;
            width: 100%;
            border: none;
            background: #0000CD;
            color: #FFF;
            margin: 0 0 5px;
            padding: 10px;
            font-size: 15px;
        }

        #contact button[type="submit"]:hover {
            background: #87CEEB;
            -webkit-transition: background 0.3s ease-in-out;
            -moz-transition: background 0.3s ease-in-out;
            transition: background-color 0.3s ease-in-out;
        }

        #contact button[type="submit"]:active {
            box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.5);
        }

        .copyright {
            text-align: center;
        }

        #contact input:focus,
        #contact textarea:focus {
            outline: 0;
            border: 1px solid #aaa;
        }

        ::-webkit-input-placeholder {
            color: #888;
        }

        :-moz-placeholder {
            color: #888;
        }

        ::-moz-placeholder {
            color: #888;
        }

        :-ms-input-placeholder {
            color: #888;
        }
    </style>

    <body>
        <div class="container">  
            <form id="contact" action="" method="post">
                <h3> Register Form</h3>
                <h4>Please enter your credentials</h4>
                <fieldset>
                    <input placeholder="Firsta Name" type="text" tabindex="1" required autofocus>
                </fieldset>
                <fieldset>
                    <input placeholder="Last Name" type="text" tabindex="2" required>
                </fieldset>
                <fieldset>
                    <input placeholder=" Adress " type="text" tabindex="3" required>
                </fieldset>
                <fieldset>
                    <input placeholder="Phone Number (optional) " type="tel" tabindex="4" required>
                </fieldset>
                <fieldset>
                    <input placeholder="Email Address" type="email" tabindex="5" required>
                </fieldset>
                <fieldset>
                    <input placeholder="Username" type="text" tabindex="6" required>
                </fieldset>
                <fieldset>
                    <input placeholder="Password" type="password" tabindex="7" required>
                </fieldset>
                
<!--                <fieldset>
                    <select name="cbo_user_type">
                        <option value="0">Student</option>
                        <option value="1">Professor</option>
                    </select>
                </fieldset>-->
                
<!--                <fieldset>
                    <textarea placeholder="Type your message here...." tabindex="5" required></textarea>
                </fieldset>-->
                <fieldset>
                    <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Submit</button>
                </fieldset>
            </form>
        </div>


    </body>
</html>