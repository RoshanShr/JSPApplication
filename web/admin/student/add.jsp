<%@page import="com.leapfrog.jspapp.dao.impl.StudentDAOImpl"%>
<%@page import="com.leapfrog.jspapp.dao.StudentDAO"%>
<%@page import="com.leapfrog.jspapp.entity.Student"%>
<div class="container">
<%@include file="../header.jsp" %>
<%
    Student student=new Student();
    StudentDAO studentDAO= new StudentDAOImpl();
   /* if(request.getParameter("id")==null || request.getParameter("id").isEmpty()){
        response.sendRedirect("index.jsp?error");
    }
    else{
        int id=Integer.parseInt(request.getParameter("id"));
        
        
        if(student==null){
            student=new Student();
            response.sendRedirect("index.jsp?error");
        }
    }*/
%>
<h1>Add Student</h1>

<form method="post" action="">
    <div class="form-group">
        <label>Name</label>
        <input type="text" name="name" class="form-control" required="required" placeholder="Student Name" >
    </div>
    </br>
   <div class="form-group">
        <label>Email</label>
        <input type="text" name="name" class="form-control" required="required" placeholder="Email" >
    </div>
        </br>

     <div class="form-group">
        <label>Contact No</label>
        <input type="text" name="name" class="form-control" required="required" placeholder="Contact No" >
    </div>
        <button type="submit" class="btn btn-success">Add</button>
        <a href="index.jsp" class="btn btn-danger">Cancel</a>
</form>
<%@include file="../footer.jsp" %>
</div>