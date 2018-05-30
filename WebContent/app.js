/**
 * 
 */
var app = angular.module("myApp",["ngRoute"]);
app.controller("studentController",function($scope){
	$scope.students = [
		{sname:"krishna",course:"java"},
		{sname:"ram",course:"html"},
		{sname:"naveen",course:"css"},
		{sname:"ronaldo",course:"ajs"},
		{sname:"virat",course:".net"},
		{sname:"ab",course:"python"}
		
	];
});
app.controller("courseController",function($scope){
	$scope.courses = ["html","java","css3","ajs"];

});
app.config(function($routeProvider){
	$routeProvider.when("/students",{
		templateUrl : "students.html",
		controller : "studentController"
	})
	.when("/courses",{
		templateUrl : "courses.html",
		controller : "courseController"
	})
	.when("/about",{
		templateUrl:"about.html",
		controller : ""
	})
	.when("/home",{
		templateUrl:"home.html",
		controller:""
	})
	.when("/about",{
		templateUrl:"aboutus.html",
		controller:""
	})
	.when("/employee",{
		templateUrl:"employee.jsp",
		controller:""
	})
	.otherwise({
		redirectTo:"/home"
	});
});
