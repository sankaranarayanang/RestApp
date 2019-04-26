<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <script>
	angular.module('myApp', [])
	.controller('namesCtrl', function($scope, $location, $http) {
	  $scope.names = [
	    {name:'Jani',country:'Norway', GDP: 30},
	    {name:'Hege',country:'Sweden', GDP: 20},
	    {name:'Kai',country:'Denmark', GDP: 10},
	    {name:'Alan',country:'Cardiff', GDP: 50},
	    {name:'Sankar',country:'Scotland', GDP: 60},
	    {name:'Peter',country:'England', GDP: 70},
	    
	    {name:'Bhoominath',country:'Antarctica', GDP: 50},
	    {name:'Yeshwant',country:'Bosnia', GDP: 50}
	  ];
	  $scope.firstName = "Sanks";
	  $scope.lastName = "G";
	  $scope.appUrl = $location.absUrl();
	  $scope.fullName = function(){
	    return $scope.firstName + " " + $scope.lastName + " works in CTS!!!";
	  };
	  $scope.orderByMe = function(column){
	      console.log("sorted col is " + column);
	    $scope.orderByText = column;
	  };
	  $http.get("http://localhost:8080/JerseyRest/employees/")
	  .then(function(response){
	    console.log(response.data.employeeList);
	    $scope.empjson = response.data.employeeList;
	  });
	});
	</script>
</body>
</html>