<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>

<script type="text/javascript">
    
    angular.module('sortApp', [])

    .controller('productController', function($scope) {
      // create the list  
      $scope.desired = ${fetchproducts}
      
    });
    
</script>

	   <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.min.js"></script>
<div class="container" ng-app="sortApp" ng-controller="productController">
    
  <form>
    <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon"><i class="fa fa-search"></i></div>
        <input type="text" class="form-control" placeholder="Search Product" ng-model="searchProduct">
      </div>      
    </div>
  </form>
  <table class="table table-bordered table-striped">
    
    <thead>
      <tr>
        <td>
          <a href="#" ng-click="sortType = 'id'; sortReverse = !sortReverse">
            Product ID 
            <span ng-show="sortType == 'id' && !sortReverse" class="glyphicon glyphicon-arrow-down"></span>
            <span ng-show="sortType == 'id' && sortReverse" class="glyphicon glyphicon-arrow-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'name'; sortReverse = !sortReverse">
          Product Name
            <span ng-show="sortType == 'name' && !sortReverse" class="glyphicon glyphicon-arrow-down"></span>
            <span ng-show="sortType == 'name' && sortReverse" class="glyphicon glyphicon-arrow-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'brand'; sortReverse = !sortReverse">
         Product Price
            <span ng-show="sortType == 'price' && !sortReverse" class="glyphicon glyphicon-arrow-down"></span>
            <span ng-show="sortType == 'price' && sortReverse" class="glyphicon glyphicon-arrow-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'brand'; sortReverse = !sortReverse">
         Product Type
            <span ng-show="sortType == 'type' && !sortReverse" class="glyphicon glyphicon-arrow-down"></span>
            <span ng-show="sortType == 'type' && sortReverse" class="glyphicon glyphicon-arrow-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'brand'; sortReverse = !sortReverse">
         Product Category
            <span ng-show="sortType == 'ctegory' && !sortReverse" class="glyphicon glyphicon-arrow-down"></span>
            <span ng-show="sortType == 'category' && sortReverse" class="glyphicon glyphicon-arrow-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'info'; sortReverse = !sortReverse">
         Product Info
            <span ng-show="sortType == 'info' && !sortReverse" class="glyphicon glyphicon-arrow-down"></span>
            <span ng-show="sortType == 'info' && sortReverse" class="glyphicon glyphicon-arrow-up"></span>
          </a>
        </td>
      </tr>
    </thead>
    
    <tbody>
      <tr ng-repeat="fetchprod in desired | orderBy:sortType:sortReverse | filter:searchProduct">
        <td>{{fetchprod.prod_id}}</td>
        <td>{{fetchprod.prod_name}}</td>
        <td>{{fetchprod.prod_price}}</td>
        <td>{{fetchprod.prod_type}}</td>
        <td>{{fetchprod.prod_category}}</td>
        <td>
        <form action="productinfo">
        <input type="hidden" name="product_id" value="{{fetchprod.prod_id}}"/>
        <input type="hidden" name="product_name" value="{{fetchprod.prod_name}}"/>
        <input type="hidden" name="product_price" value="{{fetchprod.prod_price}}"/>
        <input type="hidden" name="product_brand" value="{{fetchprod.prod_type}}"/>
        <input type="hidden" name="product_category" value="{{fetchprod.prod_category}}"/>
        <button type="submit" class="btn btn-link "><span class="glyphicon glyphicon-music" aria-hidden="true"></span></button>
        </form>
        </td>
      </tr>
    </tbody>
    
  </table>
  </div>
 <%@include file="footer.jsp" %>