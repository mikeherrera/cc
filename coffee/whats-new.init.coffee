$ ->
	modal_options =
		show: false

	$('#new_items_modal').modal modal_options
	$('#finishes_modal').modal modal_options

	carousel_options =
		interval: false	

	$('.gallery_modal').click ->
		modal_id = $(this).attr('id')
		$('#' + modal_id + '_modal').modal 'show'
		
		$('#' + modal_id + '_carousel').carousel carousel_options
	
		$('#' + modal_id + '_modal').on('hidden', () ->
			$('#' + modal_id + '_carousel').carousel 0	
		)
				


