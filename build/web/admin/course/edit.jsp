<%@page import="com.leapfrog.jspapp.dao.impl.CourseDAOImpl"%>
<%@page import="com.leapfrog.jspapp.dao.CourseDAO"%>
<%@page import="com.leapfrog.jspapp.entity.Course"%>
<div class="container">
<%@include file="../header.jsp" %>
<%
    Course course=new Course();
    CourseDAO courseDAO= new CourseDAOImpl();
    if(request.getParameter("id")==null || request.getParameter("id").isEmpty()){
        response.sendRedirect("index.jsp?error");
    }
    else{
        int id=Integer.parseInt(request.getParameter("id"));
        course= courseDAO.getById(id);
        
        if(course==null){
            course=new Course();
            response.sendRedirect("index.jsp?error");
        }
    }
%>
<h1>Edit Course</h1>

<form method="post" action="">
    <div class="form-group">
        <label>Name</label>
        <input type="text" name="name" class="form-control" required="required" placeholder="Course Name" value="<%=course.getName()%>">
    </div> 
    </br>
    <div class="form-group">
        <label>Description</label>
        <textarea name="name" class="form-control" required="required" placeholder="Course Description" style="height:200px;"><%=course.getDescription()%></textarea>
    </div>
        </br>

    <div class="form-group">
        <label>Status</label> 
        <label>
            <input type="checkbox" name="status" 
            <% out.println(course.isStatus()?"checked":"");%>/>Active
        </label>
    </div>
        <button type="submit" class="btn btn-success">Save</button>
        <a href="index.jsp" class="btn btn-danger">Cancel</a>
</form>
<%@include file="../footer.jsp" %>
</div>