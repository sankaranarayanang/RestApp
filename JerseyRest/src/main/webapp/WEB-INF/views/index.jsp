<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
</head>
<body>
<%@ include file="application.jsp" %>  
<h2>Jersey Rest Hello World!</h2>
 <a href = "http://localhost:8080/JerseyRest/employees/">Get List of all employees</a>
 
 
<div ng-app="myApp" ng-controller="namesCtrl">
Application URL is {{appUrl}}
<br/>
First Name: <input type="text" ng-model="firstName"><br>
Last Name: <input type="text" ng-model="lastName"><br>
<br>
Full Name: {{fullName()}}
<p>Type a letter in the input field:</p>

<p><input type="text" ng-model="filterText"></p>
<ul>
    <li ng-repeat="data in names | orderBy:['country'] | filter : filterText ">
        {{data.name | uppercase}} , {{data.country | uppercase }} , {{data.GDP | currency}}
    </li>
</ul>

<table>
    <thead>
        <th ng-click="orderByMe('name')">Name</th>
        <th ng-click="orderByMe('country')">Country</th>
        <th>GDP</th>
    </thead>
    <tbody>
        <tr ng-repeat="data in names | orderBy : orderByText "> 
            <td>{{data.name | uppercase}}</td> 
            <td>{{data.country | uppercase }}</td> 
            <td>{{data.GDP | currency}}</td> 
        </tr>
    </tbody>
</table>



<table>
    <thead>
        <th ng-click="orderByMe('eid')">Employee ID</th>
        <th ng-click="orderByMe('ename')">Employee Name</th>
        <th ng-click="orderByMe('age')">Employee Age</th>
        
    </thead>
    <tbody>
        <tr ng-repeat="data in empjson | orderBy : orderByText "> 
            <td>{{data.eid }}</td> 
            <td>{{data.ename | uppercase }}</td>
            <td>{{data.age  }}</td>  
            
        </tr>
    </tbody>
</table>


</div>

<!-- <script src="/WEB-INF/views/application.js"></script> -->
 
 
</body>
</html>
