<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>


<html>
      <head>
         <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
         <title>Karan Movie Theater</title>
      </head>



        <h1 style="display:inline;float:center;">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Welcome to Karan's Movie Theater</h1>
        <h2 style="display:inline;float:right;margin-top: 0.321em;"><%= new java.util.Date() %></h2>



        <%!
        public static String getfilename(){
                    File folder = new File("C:/Users/Admin/Desktop/MovieProgram/src/main/webapp");
                    File[] listOfFiles = folder.listFiles();
                        for (int i = 0; i < listOfFiles.length; i++) {
                          if (listOfFiles[i].isFile() && listOfFiles[i].getName().equals("index.jsp") == false && listOfFiles[i].getName().equals("moviepic.jpg") == false) {
                                return listOfFiles[i].getName();
                          }
                        }
                        return "";
                    }

        %>

      <body>
      <style>
      body  {
            background-image: url(moviepic.jpg);
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
      }
      h1   {color: white;}
      h1   {font-size: 200%;}
      h2   {color: white;}
      h2   {font-size: 100%;}
      h3   {color: white;}
      h3   {font-size: 150%;}
      h3   {text-align: center;}
      </style>
        <br><br>
        <h3>In Theaters Now: <%= getfilename().substring(0,getfilename().length() - 4) %></h3>
        <center>
        <video width="500" controls>
          <source src = <%= getfilename() %> type="video/mp4">
          <source src = <%= getfilename() %> type="video/ogg">
          <source src = <%= getfilename() %> type="video/wav">
          Your browser does not support HTML5 video.
        </video>
        </center>
      <br><br><br><br><br><br>
      <center>
      <font size="5"><a href="https://docs.google.com/forms/d/e/1FAIpQLSfOyboXCKWikTzb9HHNgml3bdL8HrJzychxSPbZlrOP4bEL6Q/viewform?entry.409180267" target="_blank" style="color:#FFFFFF;">Movie Form</a></font>
      </center>
      </body>
</html>



