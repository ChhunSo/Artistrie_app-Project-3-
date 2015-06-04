var app = angular.module('myApp',[
	'ngRoute',
	'templates'
	])

// app.config(["$httpProvider", function($httpProvider) {
//     $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
// }])
.config(function($routeProvider, $locationProvider){
	$routeProvider
	.when('/api/pieces',{
		templateUrl:'pieces/show.html',
		controller:'PieceShowCtrl'
	});

	$locationProvider.html5Mode({
		enabled: true,
		requireBase:false
	});
});`