<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%


String un=request.getParameter("u");
String em=request.getParameter("e");
String pwd=request.getParameter("p");
String repeat_pwd=request.getParameter("r");
System.out.print(un);
try
{

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root", "lithan");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into signup(Username,Email,Password,Repeatpassword)values('"+un+"','"+em+"','"+pwd+"','"+repeat_pwd+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>