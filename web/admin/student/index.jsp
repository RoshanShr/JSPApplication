

<%@page import="com.leapfrog.jspapp.dao.impl.StudentDAOImpl"%>
<%@page import="com.leapfrog.jspapp.dao.StudentDAO"%>
<%@page import="com.leapfrog.jspapp.entity.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="../header.jsp" %>

<div class="container" style="margin-top: 20px;">
<div class="panel panel-default">
    <div class="panel-heading"><h1 style="color:blueviolet">Students</h1></div>
  <div class="panel-body">
           
            <div class="pull-right">
                <p>
                    <a href="add.jsp" class="btn btn-primary">
                        <span class="glyphicon glyphicon-plus"></span> Add
                    </a>
                </p>
            </div>

            <table class="table table-bordered table-hover table-striped">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Contact No</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
                <%
                    StudentDAO studentDAO = new StudentDAOImpl();
                    for (Student s : studentDAO.getAll()) {

                %>   
                <tr>
                    <td><%=s.getId()%></td>
                    <td><%=s.getFirstName()%> <%=s.getLastName()%></td>
                    <td><a href="mailto:<%=s.getEmail()%>" target="_blank"><%=s.getEmail()%></a></td>
                    <td><%=s.getContactNo()%></td>
                    <td><%=s.isStatus()%></td>
                    <td>
                        <a href="edit.jsp?id=<%=s.getId()%>" class="btn btn-success">
                            <span class="glyphicon glyphicon-pencil"></span> Edit
                        </a>
                        <a href="delete.jsp?id=<%=s.getId()%>" class="btn btn-danger"  onclick="return confirm('Are you sure to delete?')">
                            <span class="glyphicon glyphicon-trash"></span> Delete
                        </a>    
                    </td>
                </tr>

                <%}%>
            </table>
            <a href="../course/index.jsp" class="btn btn-info"  >
                View Course Details
            </a>
        </div>
</div>


    </body>
</html>
