# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  districts = $('#sanctioned_post_district_id').html()
  $('#sanctioned_post_division_id').change ->
    division = $('#sanctioned_post_division_id :selected').text()
    escaped_division = division.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(districts).filter("optgroup[label='#{escaped_division}']").html()
    if options
      $('#sanctioned_post_district_id').html(options)
      $('#sanctioned_post_district_id').parent().show()
    else
      $('#sanctioned_post_district_id').empty()
      $('#sanctioned_post_district_id').parent().hide()
  blocks = $('#sanctioned_post_block_id').html()
  $('#sanctioned_post_district_id').change ->
    district = $('#sanctioned_post_district_id :selected').text()
    escaped_district = district.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(blocks).filter("optgroup[label='#{escaped_district}']").html()
    if options
      $('#sanctioned_post_block_id').html(options)
      $('#sanctioned_post_block_id').parent().show()
    else
      $('#sanctioned_post_block_id').empty()
      $('#sanctioned_post_block_id').parent().hide()
  hospitals = $('#sanctioned_post_hospital_id').html()       
  $('#sanctioned_post_block_id').change ->
    block = $('#sanctioned_post_block_id :selected').text()
    escaped_block = block.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(hospitals).filter("optgroup[label='#{escaped_block}']").html()
    if options
      $('#sanctioned_post_hospital_id').html(options)
      $('#sanctioned_post_hospital_id').parent().show()
    else
      $('#sanctioned_post_hospital_id').empty()
      $('#sanctioned_post_hospital_id').parent().hide()

