# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  districts = $('#hospital_district_id').html()
  $('#hospital_division_id').change ->
    division = $('#hospital_division_id :selected').text()
    escaped_division = division.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(districts).filter("optgroup[label='#{escaped_division}']").html()
    if options
      $('#hospital_district_id').html(options)
      $('#hospital_district_id').parent().show()
    else
      $('#hospital_district_id').empty()
      $('#hospital_district_id').parent().hide()
  blocks = $('#hospital_block_id').html()
  $('#hospital_district_id').change ->
    district = $('#hospital_district_id :selected').text()
    escaped_district = district.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(blocks).filter("optgroup[label='#{escaped_district}']").html()
    if options
      $('#hospital_block_id').html(options)
      $('#hospital_block_id').parent().show()
    else
      $('#hospital_block_id').empty()
      $('#hospital_block_id').parent().hide()      

