<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>

    
        <div class="container">
                                        
         </div>
   <div class="col-sm-6">
      <img src="${img}/login1.jpg" class="img-responsive" style="width:100%" alt="Image">
      
    </div>
                     <div class="col-sm-6">
      <form  class="form-" role="form">
  <div class="form-group">
    <label for="uname">User ID:</label>
    <input type="text" class="form-control" id="uname">
  </div>
  <div class="form-group">
    <label for="pwd">PassWord:</label>
    <input type="password" class="form-control" id="pwd">
  </div>  
  <button type="submit" class="btn btn-default">Login</button>
</form>
    </div>                
                </div>
            </div>

        </div>
        <!-- /.container -->
<%@include file="footer.jsp"%>