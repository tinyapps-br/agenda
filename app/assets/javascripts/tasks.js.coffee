jQuery ->
  $('a.destroy_task').on 'ajax:complete', ->
    container = $(@).parents('.tasks')
    group = container.data('date-group')
    groupSelector = "[data-date-group='#{group}']"
    similar = $("div#{groupSelector}")
    if similar.length == 1
      $("h2#{groupSelector}").fadeOut -> $(@).remove()

    container.fadeOut -> $(@).remove()

  $('input.date').datepicker()
