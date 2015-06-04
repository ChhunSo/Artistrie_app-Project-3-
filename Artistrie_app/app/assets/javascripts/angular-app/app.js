var app = angular.module('ArtistrieApp',[
	'templates'
	])

app.config(["$httpProvider", function($httpProvider) {
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
}])

.controller('ExampleCtrl', ['$scope',function($scope){
	console.log('ExampleCtrl running');
	$scope.exampleValue= 'Hello angular is running';
}])

.controller('PieceCtrl',['$scope','$http','pieces', function($scope,$http, pieces){
	$http.get('/api/pieces')
	.success(function(data){
		console.log(data);
		$scope.pieces = data;

	})
	.error(function(data){
		console.log("error"+ data)
	})
}]);
// .config(function($routeProvider, $locationProvider){
// 	$routeProvider
// 	.when('/api/pieces',{
// 		templateUrl:'pieces/show.html',
// 		controller:'PieceShowCtrl'
// 	});

// 	$locationProvider.html5Mode({
// 		enabled: true,
// 		requireBase:false
// 	});
// });