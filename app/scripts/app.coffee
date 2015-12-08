'use strict'

###*
 # @ngdoc overview
 # @name incrementalApp
 # @description
 # # incrementalApp
 #
 # Main module of the application.
###
angular
  .module 'incrementalApp', [
    'ngAnimate',
    'ngRoute'
  ]
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/fisher.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
      .when '/tab/fish/fish',
        templateUrl: 'views/fish.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
      .when '/tab/fish/boat',
        templateUrl: 'views/boat.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
      .when '/tab/fish/plane',
        templateUrl: 'views/plane.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
    .when '/tab/fish/submarine',
        templateUrl: 'views/submarine.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
      .when '/tab/dollars',
        templateUrl: 'views/dollars.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
      .when '/tab/dollars/officeworker',
        templateUrl: 'views/officeworker.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
      .when '/tab/research',
        templateUrl: 'views/research.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
      .when '/tab/options',
        templateUrl: 'views/options.html'
        controller: 'OptionsCtrl'
        controllerAs: 'options'
      .when '/tab/changelog',
        templateUrl: 'views/changelog.html'
      .otherwise
        redirectTo: '/'

