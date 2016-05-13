<%@include file="header.jsp" %>
<div class="container" style="margin-top:120px;">
	<div class="row">
		<!-- Title -->
		<ol class="breadcrumb"><li><a href="#">Farm Fresh Products</a></li><li><a href="#"></a></li> </ol>
	</div>
	
	
	<div class="row">
	
	<div class="col-xs-5">
	<img src="${img}${product.prod_id}.jpg" height="400" width="400"/>
	</div>
	<div class="col-xs-7" style="float: right">
			
			<p style="font-size: 30pt">Product Details</p><br><br>
			<p style="font-size: 15pt">Prolduct Id : ${product.prod_id}</p>
			<p style="font-size: 15pt">Product Name : ${product.prod_name}</p>
			<p style="font-size: 15pt">Product Price : ${product.prod_price}</p>
			<p style="font-size: 15pt">Product Type : ${product.prod_type}</p>
			<p style="font-size: 15pt">Product Category${product.prod_category}</p>
			
			<form action="cartFlow" method="post"></form>
          <div class="btn-group" role="group" aria-label="..." style="margin-bottom:10px;">
              <a href="cartFlow"><button type="submit">AddToCart</button></a>				
			</div>
			</form>	
</div>

<%@include file="footer.jsp"%>