angular.module('ArtistrieApp')

.controller('ExampleCtrl', ['$scope',function($scope){
	console.log('ExampleCtrl running');
	$scope.exampleValue= 'Hello angular is running';
}])

.controller('PieceShowCtrl',['$scope','$http','pieces', function($scope,$http, pieces){
	$scope.pieces = $http.get('/api/pieces')
	.success(function(data){
		$scope.pieces=data;
	})
	.error(function(data){
		console.log("error"+ data)
	})
}]);