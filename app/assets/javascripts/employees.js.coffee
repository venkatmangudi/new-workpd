# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('.best_in_place').best_in_place()

jQuery ->
  $("#employee_emp_dob").datepicker
  	dateFormat: 'yy-mm-dd'

jQuery ->
  districts = $('#employee_district_id').html()
  $('#employee_division_id').change ->
    division = $('#employee_division_id :selected').text()
    escaped_division = division.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(districts).filter("optgroup[label='#{escaped_division}']").html()
    if options
      $('#employee_district_id').html(options)
      $('#employee_district_id').parent().show()
    else
      $('#employee_district_id').empty()
      $('#employee_district_id').parent().hide()
  blocks = $('#employee_block_id').html()
  $('#employee_district_id').change ->
    district = $('#employee_district_id :selected').text()
    escaped_district = district.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(blocks).filter("optgroup[label='#{escaped_district}']").html()
    if options
      $('#employee_block_id').html(options)
      $('#employee_block_id').parent().show()
    else
      $('#employee_block_id').empty()
      $('#employee_block_id').parent().hide()
  hospitals = $('#employee_hospital_id').html()       
  $('#employee_block_id').change ->
    block = $('#employee_block_id :selected').text()
    escaped_block = block.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(hospitals).filter("optgroup[label='#{escaped_block}']").html()
    if options
      $('#employee_hospital_id').html(options)
      $('#employee_hospital_id').parent().show()
    else
      $('#employee_hospital_id').empty()
      $('#employee_hospital_id').parent().hide()
