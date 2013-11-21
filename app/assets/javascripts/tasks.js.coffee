$ ->
  $('.button_to').on 'ajax:success', (e, resp) ->
  	$(".votes-count[data-id=#{resp.id}]").text(resp.votes)
