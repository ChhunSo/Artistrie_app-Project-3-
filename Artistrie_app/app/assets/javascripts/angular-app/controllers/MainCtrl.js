angular.module('ArtistrieApp')

.controller('ExampleCtrl', ['$scope',function($scope){
	console.log('ExampleCtrl running');
	$scope.exampleValue= 'Hello angular is running';
}]);