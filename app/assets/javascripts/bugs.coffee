# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
console.log("----------BUGS.COFEE--------------")
$(document).ready ->
  $('#bug_bug_type').on 'change', ->
    val = undefined
    val = $('#bug_bug_type').val()
    
    console.log "*************"
    if val == 'Feature'
      console.log val
      $('#type_feature').removeClass 'hide_select'
      $('#type_bug').addClass 'hide_select'
    else if val == 'Bug'
      console.log val
      $('#type_bug').removeClass 'hide_select'
      $('#type_feature').addClass 'hide_select'
    return
  return




