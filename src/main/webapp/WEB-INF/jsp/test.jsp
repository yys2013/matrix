<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>jQuery UI Draggable - Revert position</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Index</title>
        <!-- Bootstrap -->
        <link href="resources/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="resources/css/style_v1.css" rel="stylesheet">
          <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<!--         <script src="resources/js/mgnt_v1.js"></script> -->
        <script src="resources/plugins/bootstrap/js/bootstrap.min.js"></script>
  <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<!--         <link href="resources/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet"> -->
<!--         <script src="resources/plugins/jquery/jquery-1.11.3.min.js"></script> -->
<!--         <script src="resources/plugins/jquery-ui/jquery-ui.min.js"></script> -->
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
				<script src="http://getbootstrap.com/docs-assets/js/html5shiv.js"></script>
				<script src="http://getbootstrap.com/docs-assets/js/respond.min.js"></script>
		<![endif]-->
  <style>
  #draggable, #draggable2 { width: 100px; height: 100px; padding: 0.5em; float: left; margin: 0 10px 10px 0; }
  </style>
  <script>
  $(function() {
    $( "#draggable" ).draggable({ revert: true });
    $( "#draggable2" ).draggable({ revert: true, helper: "clone" });
//     $("div.box" ).draggable({ revert: true });
  });
  
  function WinMove(){
	  	alert("qqq1");
		$("div.box").not('.no-drop')
			.draggable({
				revert: true,
				zIndex: 2000,
				cursor: "crosshair",
				handle: '.box-name',
				opacity: 0.8
			})
			.droppable({
				tolerance: 'pointer',
				drop: function( event, ui ) {
					var draggable = ui.draggable;
					var droppable = $(this);
					var dragPos = draggable.position();
					var dropPos = droppable.position();
					draggable.swap(droppable);
					setTimeout(function() {
						var dropmap = droppable.find('[id^=map-]');
						var dragmap = draggable.find('[id^=map-]');
						if (dragmap.length > 0 || dropmap.length > 0){
							dragmap.resize();
							dropmap.resize();
						}
						else {
							draggable.resize();
							droppable.resize();
						}
					}, 50);
					setTimeout(function() {
						draggable.find('[id^=map-]').resize();
						droppable.find('[id^=map-]').resize();
					}, 250);
				}
			});
	}
  
  
  function LoadAjaxContent(url){
	  
	  
		$.ajax({
			mimeType: 'text/html; charset=utf-8', // ! Need set mimeType only when run from local file
			url: url,
			type: 'GET',
			success: function(data) {
				$('.content').html(data);
			},
			error: function (jqXHR, textStatus, errorThrown) {
				alert(errorThrown);
			},
			dataType: "html",
			async: false
		});
	}
  </script>
</head>
<body>
 
<div id="draggable">
  <p>Revert the original</p>
</div>
 
<div id="draggable2">
  <p>Revert the helper</p>
</div>

<div id="uii">
  <p>Revert the original</p>
</div>
<div class="content">
</div>
  <script>
  LoadAjaxContent("resources/html/tables_simple.html");
  </script>
</body>