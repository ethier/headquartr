# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  class Region
    constructor: (element_id, element_name, change_element_id, select, input) ->
      element_id
      element_name
      change_element_id
      select
      input

      ($ '#' + change_element_id).change =>
        update_state()

      update_state()

  replace_element = (element) ->
    element.empty()
    ($ '#' + element_id).replaceWith(element)

  append_select = (state_obj) ->
    ($ '#' + element_id)
      .append($('<option></option>')
      .attr('value', state_obj.id)
      .text(state_obj.abbr + ' - ' + state_obj.name))

  update_state = () ->
    $.get '/regions', 
          {country_id: ($ '#' + change_element_id).val()},
          (data) ->
            if data.json.length
              replace_element(select)
              append_select(state_obj) for state_obj in data.json
            else
              replace_element(input)

  element_id = 'address_region_id'
  element_name = 'address[region_id]'

  change_element_id = 'address_country_id'

  select = ($ '<select></select>')
              .attr({
                id: element_id,
                name: element_name,
                class: 'select required',
              })
              .data('validate', 'true')

  input = ($ '<input></input>')
              .attr({
                id: element_id,
                name: element_name,
                class: 'string required',
                type: 'text',
                maxlength: '255',
                size: '50',
                required: 'required'
              })
              .data('validate', 'true')  

  new Region(element_id, element_name, change_element_id, select, input)