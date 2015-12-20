'use strict'

###*
 # @ngdoc function
 # @name incrementalApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the incrementalApp
###

angular.module 'incrementalApp'
.controller 'MainCtrl', (reset, loadsave, game, user, $interval, $timeout, $location, $log ) ->
  @alerts = [
    { type: 'success' , msg: 'Autosave.'}
  ];
  @user = user
  @game = game

  $log.debug "setting selectedIndex"
  @selectedIndex = 0

  @closeAlert = (index) =>
    @alerts = {}

  $timeout @closeAlert, 20000

  @selectTab = (where) ->
    $log.debug where
    if where is 0
      $location.url "/tab/fish/fish"
      @selectedIndex = 0
    if where is 1
      $location.url "/tab/dollars/dollar"
      @selectedIndex = 1
    if where is 2
      $location.url "/tab/research"
      @selectedIndex = 2
    if where is 3
      $location.url "/tab/pearls"
      @selectedIndex = 3
    if where is 4
      $location.url "/tab/options"
      @selectedIndex = 4
  return
