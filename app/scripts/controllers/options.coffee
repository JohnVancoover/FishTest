'use strict'

###*
 # @ngdoc function
 # @name incrementalApp.controller:OptionsCtrl
 # @description
 # # OptionsCtrl
 # Controller of the incrementalApp
###
angular.module 'incrementalApp'
.controller 'OptionsCtrl', (user, $log) ->
# TODO: move to service...
  @importString = "Enter save data"
  @saveSuccess = ""
  tempObject = JSON.stringify(user)
  @saveState = LZString.compressToEncodedURIComponent(tempObject)
  @saveData = ->
    localStorage.setItem("fishgame", @saveState)
    @saveSuccess = "That worked...maybe"
  @loadData = ->
    @importString = localStorage.getItem "fishgame"
    @import()
  @import = ->
    unpacked = LZString.decompressFromEncodedURIComponent(@importString)
    unpacked = JSON.parse unpacked
    @importSave(unpacked)
  @importSave = (data) ->
    for obj in [data]
      for own key, val of obj
        user[key] = val
  @reset = ->
    user.init()
  return
