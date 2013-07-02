angular.module('myApp',[])
  .config ($routeProvider)->
    $routeProvider
      .when '/',
        templateUrl: 'index.html'

                