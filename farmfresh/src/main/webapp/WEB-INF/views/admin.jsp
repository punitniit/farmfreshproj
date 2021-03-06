<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@include file="header.jsp"%>

<script>
        var myApp=angular.module('myApp', [])

        myApp.controller('jsonCtrl', function($scope,$http) {

        	 
        	        $scope.music = <%=request.getAttribute("list")%>;
        	        $scope.myFunction = function() {
        	        	$scope.music = <%=request.getAttribute("list")%>;
        	        	$scope.prod_id=music.prod_id;
        	        	$scope.prod_name=music.prod_name;
        	        	$scope.prod_price=music.prod_price;
        	        	$scope.prod_type=music.prod_type;
	       	        	$scope.prod_category=music.prod_category;
        	        	
        	        	}
        	        
        	      
        });
        </script>
<div style="height: 50px"></div>
<div class="container text-center" style="width: 500px">

<form:form action="saveproduct" commandName="product" modelAttribute="product" method="post" class="form-horizontal" role="form">
<table>
    <c:if test="${!empty product.prod_id}">
    <tr style="padding: 10px;">
        <td>
            <form:label class="control-label" path="prod_id">
                Product Id
            </form:label>
        </td>
        <td>
            <form:input path="prod_id" readonly="true" size="8"  disabled="true" ng-model="prod_id" class="form-control"/>
           	<form:hidden path="prod_id" />
        </td> 
         <td><form:errors path="prod_id" cssStyle="color: #c0392b;"/></td>
    </tr>
    </c:if>

    <tr>
        <td>
            <form:label class="control-label" path="prod_name">
             Product Name   
            </form:label>
        </td>
        <td>
            <form:input path="prod_name" ng-model="prod_name" class="form-control"/>
        </td> 
        <td><form:errors path="prod_name" cssStyle="color: #c0392b;"/></td>
    </tr>
    
    <tr>
        <td>
            <form:label class="control-label" path="prod_price">
                Product Price
            </form:label>
        </td>
        <td>
            <form:input path="prod_price" ng-model="prod_price"  class="form-control"/>
        </td>
        <td><form:errors path="prod_price" cssStyle="color: #c0392b;"/></td>
    </tr>
    
    <tr>
        <td>
            <form:label class="control-label" path="prod_type" >
                Product Type
            </form:label>
        </td>
        <td>
            <form:input path="prod_type" ng-model="prod_type" class="form-control"/>
        </td>
        <td><form:errors path="prod_type" cssStyle="color: #c0392b;"/></td>
    </tr>
    <tr>
        <td>
            <form:label class="control-label" path="prod_category" >
                Product Category
            </form:label>
        </td>
        <td>
            <form:input path="prod_category" ng-model="prod_category" class="form-control"/>
        </td>
        <td><form:errors path="prod_category" cssStyle="color: #c0392b;"/></td>
        <tr>
        <td><tr>
        <td>
            <form:label class="control-label" path="img">
                Image Upload
            </form:label>
        </td>
        <td>
            <form:input type="file" path="img"  ng-model="img" class="form-control"/>
        </td>
    </tr>
    
    <tr>
        <td colspan="2">
            <c:if test="${!empty product.prod_name}">
                <button ng-click="myFunction()" type="submit" class="btn" style="margin: 0px;width:100px; background-color: #00A2E8; color:white; text-align: center; font-size: 015x; border-radius: 0px;"
                    ><spring:message text="Edit Product"/></button>
            </c:if>
            <c:if test="${empty product.prod_name}">
                <button type="submit" class="btn" style="margin: 0px;width:100px; background-color: #00A2E8; color:white; text-align: center; font-size: 015x; border-radius: 0px;"
                 ><spring:message text="Add Product"/></button>
            </c:if>
        </td>
    </tr>    	
    </table> 
</form:form>
</div>

<div class="container" ng-app="myApp" ng-controller="jsonCtrl" style="padding-top:30px">
   
  <table class="table table-bordered table-striped">
    

    <thead>
      <tr>
        <td>
          <a href="#" ng-click="sortType = 'prod_id'; sortReverse = !sortReverse">
            Product ID 
            <span ng-show="sortType == 'prod_id' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'prod_id' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'prod_name'; sortReverse = !sortReverse">
          Product Name
            <span ng-show="sortType == 'prod_name' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'prod_name' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'prod_price'; sortReverse = !sortReverse">
         	Product Price
            <span ng-show="sortType == 'prod_price' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'prod_price' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'prod_brand'; sortReverse = !sortReverse">
         	Product Type
            <span ng-show="sortType == 'prod_brand' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'prod_brand' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'prod_category'; sortReverse = !sortReverse">
           Product Category
            <span ng-show="sortType == 'prod_category' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'prod_category' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>
          </a>
        </td>
        <td>
          <a href="#">
         	Edit
          </a>
        </td>
        <td>
          <a href="#">
         	Delete
          </a>
        </td>
      </tr>
    </thead>
    
    <tbody>
    
      <tr ng-repeat="roll in music | orderBy:sortType:sortReverse | filter:searchMusic">
         
        <td>{{ roll.prod_id }}</td>
        <td>{{ roll.prod_name }}</td>
        <td>{{ roll.prod_price }}</td>
        <td>{{ roll.prod_type }}</td>
        <td>{{ roll.prod_category }}</td>
        <td>
        <form action="editproduct" method="post">
      	<input type="hidden" value={{roll.prod_id}} name="prod_id"/>
        <input type="hidden" value={{roll.prod_name}} name="prod_name"/>
        <input type="hidden" value={{roll.prod_price}} name="prod_price"/>
        <input type="hidden" value={{roll.prod_type}} name="prod_type"/>
        <input type="hidden" value={{roll.prod_category}} name="prod_category"/>
        <button type="submit" class="btn" style="margin: 0px;width:100px; background-color: #d35400; color:white; text-align: center; font-size: 015x; border-radius: 
		0px;">Edit &nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-edit"></span>
        </button>
      </form>
       </td>
       <td>
        <form action="deleteproduct" method="post">
      	<input type="hidden" value={{roll.prod_id}} name="prod_id"/>
        <input type="hidden" value={{roll.prod_name}} name="prod_name"/>
        <input type="hidden" value={{roll.prod_price}} name="prod_price"/>
        <input type="hidden" value={{roll.prod_type}} name="prod_type"/>
        <input type="hidden" value={{roll.prod_category}} name="prod_category"/>
        <input type="hidden" value={{roll.img}} name="img" name="img"/>
        <button type="submit" class="btn" style="margin: 0px;width:100px; background-color: #c0392b; color:white; text-align: center; font-size: 015x; border-radius: 
        0px;">Delete &nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-remove"></span></button>
      </form>
       </td>
      </tr>
              
    </tbody>
    
  </table>

 </div>
 <%@include file="footer.jsp"%>