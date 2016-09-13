<%@page import="com.leapfrog.jspapp.dao.impl.StudentDAOImpl"%>
<%@page import="com.leapfrog.jspapp.dao.StudentDAO"%>
<%@page import="com.leapfrog.jspapp.entity.Student"%>
<div class="container">
<%@include file="../header.jsp" %>
<%
    Student student=new Student();
    StudentDAO studentDAO= new StudentDAOImpl();
    if(request.getParameter("id")==null || request.getParameter("id").isEmpty()){
        response.sendRedirect("index.jsp?error");
    }
    else{
        int id=Integer.parseInt(request.getParameter("id"));
        student= studentDAO.getById(id);
        
        if(student==null){
            student=new Student();
            response.sendRedirect("index.jsp?error");
        }
    }
%>
<h1>Edit Student</h1>

<form method="post" action="">
    <div class="form-group">
        <label>Name</label>
        <input type="text" name="name" class="form-control" required="required" placeholder="Student Name" value="<%=student.getFirstName()%>">
    </div> 
    </br>
    <div class="form-group">
        <label>Email</label>
        <input type="text" name="name" class="form-control" required="required" placeholder="Student Description" value="<%=student.getEmail()%>">
    </div>
        </br>

    <div class="form-group">
        <label>Contact No</label>
        <input type="text" name="name" class="form-control" required="required" placeholder="Student Description" value="<%=student.getContactNo()%>">
    </div>
        </br>

        <button type="submit" class="btn btn-success">Save</button>
        <a href="index.jsp" class="btn btn-danger">Cancel</a>
</form>
<%@include file="../footer.jsp" %>
</div>