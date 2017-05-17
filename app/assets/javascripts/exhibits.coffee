collection_change = ->
  $("#collection-change-new-btn").click ->
    if($("#exhibit_collection_id").length > 0)
      alert("Сначала выберите форму редактирования.\nКнопка (Выбрать существующую/редактировать)")
    else
      elem = $("#collection-change")
      data = elem.attr("data-content-new")
      elem.attr("data-content-new", elem.html())
      elem.html(data)
      window.datepicker_activation_by_item(elem)
    false

  $("#collection-change-exist-btn").click ->
    elem1 = $("#exhibit_collection_attributes_id")
    elem2 = $("#exhibit_collection_id")
    if(elem1.length == 0 && elem2.length == 0)
      alert("Сначала выберите форму редактирования.\nКнопка (Cоздать/редактировать)")
    else
      elem = $("#collection-change")
      data = elem.attr("data-content-exist")
      elem.attr("data-content-exist", elem.html())
      elem.html(data)
      window.datepicker_activation_by_item(elem)
    false

$(document).ready collection_change
$(document).on 'page:load', collection_change
