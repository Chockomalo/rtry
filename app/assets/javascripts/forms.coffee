$(document).on "ajax:beforeSend", "#emails-form", ()->
  $("#email-info").html "Se está procesando tu petición"
$(document).on "ajax:success", "#emails-form", ()->
  $(this).slideUp()
  $("#email-info").html "Ya estás en la lista de las invitaciones"
$(document).on "ajax:error", "#emails-form", (e,data,estado,xhr)->
  $("#email-info").html data.responseJSON.email[0]
