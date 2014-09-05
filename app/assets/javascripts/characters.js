$(function() {
	$("div#tabs").tabs().addClass("ui-tabs-vertical ui-helper-clearfix");

	$("form#character").submit(function( character_handler ){
		character_handler.preventDefault();

		var data = $(this).serialize();
		var data_ary = $(this).serializeArray();
		var character_id = $("input#character_id").val();
		console.log("character_id: " + character_id);

		console.log(data);
		console.log(data_ary);

		character_submit_handler = $.ajax({
			url: "/characters/" + character_id + ".json",
			data: data,
			type: "PUT"
		});

		character_submit_handler.success(function(success_return, status){
			var dialog_container = $("div#dialog_container");
			dialog_container.dialog({
				title: "Success!",
				buttons: [{
					text: "Ok",
					click: function(){
						$(this).dialog("destroy");
					}
				}]
			});

			console.log("character_submit_handler success:");
			console.log(success_return);
			console.log(status);
		});

		character_submit_handler.error(function(obj, status, error){
			alert("Error");
			console.log("character_submit_handler error:");
			console.log(obj);
			console.log(status);
			console.log(error);
		});

	});

});