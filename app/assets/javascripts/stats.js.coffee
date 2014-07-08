# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $('#format-table').dataTable(
      "order": [[ 4, "desc" ]]
  )

jQuery ->
  $('.format-table-1').dataTable(
      "order": [[ 1, "desc" ]]
  )
