<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>

    
        <div class="container">
                        <h3>Be Pretty in Pink</h3>                       
         </div>
   <div class="col-sm-6">
      <img src="${img}/reg.jpg" class="img-responsive" style="width:100%" alt="Image">
      
    </div>
                     <div class="col-sm-6">
      <form  class="form-" role="form">
  <div class="form-group">
    <label for="uname">New  User:</label>
    <input type="text" class="form-control" id="uname">
  </div>
  <div class="form-group">
    <label for="phone">Phone Number:</label>
    <input type="text" class="form-control" id="num">
  </div>
   <div class="form-group">
    <label for="email">Mail ID:</label>
    <input type="text" class="form-control" id="email">
  </div>
  <div class="form-group">
    <label for="pwd">PassWord:</label>
    <input type="password" class="form-control" id="pwd">
  </div>
  <div class="form-group">
    <label for="rpwd">Re enter:</label>
    <input type="password" class="form-control" id="rpwd">
  </div>
  <div class="checkbox">
    <label><input type="checkbox"> I Agree</label>
  </div>
  <button type="submit" class="btn btn-default">Register Me</button>
</form>
    </div>                
                </div>
            </div>

        </div>
        <!-- /.container -->
<%@include file="footer.jsp"%>