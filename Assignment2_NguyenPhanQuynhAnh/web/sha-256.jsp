<%-- 
    Document   : sha-256
    Created on : Jan 23, 2021, 8:21:48 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/alert.css" rel="stylesheet" />
        <script src="js/alert.js"></script>
        <style>
            body {
                font-family: sans-serif;
                display: grid;
                height: 100vh;
                place-items: center;
            }

            .base-timer {
                position: relative;
                width: 300px;
                height: 300px;
            }

            .base-timer__svg {
                transform: scaleX(-1);
            }

            .base-timer__circle {
                fill: none;
                stroke: none;
            }

            .base-timer__path-elapsed {
                stroke-width: 7px;
                stroke: grey;
            }

            .base-timer__path-remaining {
                stroke-width: 7px;
                stroke-linecap: round;
                transform: rotate(90deg);
                transform-origin: center;
                transition: 1s linear all;
                fill-rule: nonzero;
                stroke: currentColor;
            }

            .base-timer__path-remaining.green {
                color: rgb(65, 184, 131);
            }

            .base-timer__path-remaining.orange {
                color: orange;
            }

            .base-timer__path-remaining.red {
                color: red;
            }

            .base-timer__label {
                position: absolute;
                width: 300px;
                height: 300px;
                top: 0;
                display: flex;
                align-items: center;
                justify-content: center;
                font-size: 48px;
            }
        </style>
    </head>
    <body>
        <h1>SHA-256</h1>
        <form name="" action="TestServlet">
            <input type="text" name="txtTest" value="" />
            <input type="submit" value="Encrypt" name="btAction" />
        </form>
          

    </body>
</html>
