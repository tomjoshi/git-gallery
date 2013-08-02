
$(function(){
	var request;

	//make slides sortable
	$(".sortable").sortable({

		update: function(){ //when we update order update slides array

			var slides = []; //create an empty slide array 
			//build slide list 
			$(".sortable li").each(function(i, slide){
				var class_type = $(slide).data("class-type");
				var id = $(slide).data("id");
				slides.push({class: class_type, id: id});
			});

			// slides = JSON.stringify(slides);  //makes json

			console.log(slides);

			request = $.ajax({

				url: "/features/1/update_slide_order.html",
				type: "post",
				data: {blake: 7},
				dataType: "json",
				// beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
				success: function(data) {
					console.log('success we sent data: '+data);
				}, error: function(request, status, error) {
					console.log('request: '+request+', status: '+status+', error: '+error);
				}
			});
		}
	});
});