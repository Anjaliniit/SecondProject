<%@include file="header.jsp" %>
<script>
var prod;
var app=angular.module("searchingApp",[]).controller("ControlTb",function($scope)
                    {
            
             $scope.prod=${productList};
                    });

</script>
<div ng-app="searchingApp">
<div class="container" ng-controller="ControlTb">
 	<div class="search"> 
    <input type="search" ng-model="searchText" class="form-control" id="inputSearch" placeholder="Search Here"/>
    <div class="table-responsive bs-example"> 
    <table class="table table-striped table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>BRAND</th>
                <th>CATEGORY</th>
                <th>PRICE</th>
                <th>More</th>
            </tr>
        </thead>
        <tbody>
        <tr ng-repeat="p in prod|filter:searchText">
    <td>{{p.id}}  </td>
    <td>{{p.name}}</td>
    <td>{{p.brand}}</td>
    <td>{{p.category}}</td>
    <td>{{p.price|currency}}</td>
    
     <td><form action="productDetail" method="post">
     <input type="hidden" name="id" value={{p.id}}>
       <input type="hidden" name="name" value={{p.name}}>
     <input type="submit" value="click"></form>
     </td>
    </tr>   
         
        </tbody>
    </table>
</div>

</div>
</div>
</div>

<%@include file="footer.jsp"%>