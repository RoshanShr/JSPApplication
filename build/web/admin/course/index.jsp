

<%@page import="com.leapfrog.jspapp.entity.Student"%>
<%@page import="com.leapfrog.jspapp.dao.impl.CourseDAOImpl"%>
<%@page import="com.leapfrog.jspapp.dao.CourseDAO"%>
<%@page import="com.leapfrog.jspapp.entity.Course"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>
<div class="container" style="margin-top: 20px;">
<div class="panel panel-default">
    <div class="panel-heading"><h1 style="color:blueviolet">Courses</h1></div>
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
                <th>Status</th>
                <th>Action</th>
            </tr>
            <%
                CourseDAO courseDAO = new CourseDAOImpl();
                for (Course s : courseDAO.getAll()) {

            %>   
            <tr>
                <td><%=s.getId()%></td>
                <td><%=s.getName()%> </td>
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
         <a href="../student/index.jsp" class="btn btn-info"  >
                View Student Details
            </a>
 <%@include file="../footer.jsp" %>
  </div>
</div>
</div>