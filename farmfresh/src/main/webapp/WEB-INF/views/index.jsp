<%@page isELIgnored="false" %>
<%@include file="header.jsp" %>
    <!-- Carousel
    ================================================== -->

    <div id="myCarousel" class="carousel slide">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>        
      </ol>
      <div class="carousel-inner">
        <div class="item">
          <img src="${img}/basic-pic1.jpg"  alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1></h1>
              <p></p>              
            </div>
          </div>
        </div>
        <div class="item">
          <img  src="${img}/basic-pic2.jpg"    alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1></h1>
              <p></p>  
            </div>
          </div>
        </div>
        <div class="item  active">
          <img src="${img}/basic-pic3.jpg"    alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1></h1>
              <p></p>  
            </div>
          </div>
        </div>
      

      </div>
      <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div>
        
        <!-- /.carousel -->


 
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="col-lg-4">
             <img alt="brazil" src="${img}/product1.jpg" width="350px" height="200px"/>
          <h2>Dairy Products</h2>
          <p style="text-align:justify"></p>
          <p><a class="btn btn-default" href="#">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
   <img alt="brazil" src="${img}/product2.jpg"   width="350px" height="200px"/>
          <h2>Processed Products</h2>
         <p style="text-align:justify"></p>
          <p><a class="btn btn-default" href="#">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
       <img alt="brazil" src="${img}/product3.jpg"   width="350px" height="200px"/>
          <h2>Herbs</h2>
        <p style="text-align:justify"></p>
          <p><a class="btn btn-default" href="#">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->


<%@include file="footer.jsp" %>
