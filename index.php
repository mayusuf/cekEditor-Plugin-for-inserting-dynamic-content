<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>CKEditor Sample</title>
		<script src="ckeditor.js"></script>
		<script src="sample.js"></script>
		<script src="plugin.js"></script>
		<style type="text/css">
			#main {margin:auto; width:768px;}
			#dropdown {padding:5px; width:100%; border:1px solid rgb(191,191,191);}
			#dropdown option {padding:5px;}
		</style>
	</head>

	<body>
		<main id="main">
			<div class="adjoined-bottom">
				<div class="grid-container">
					<div class="grid-width-100">
						<textarea id="editor"></textarea>
					</div>
				</div>
			</div>
		</main>
		<?php require_once('myquery.php') ?>
		<script>
			initSample();
			var mydata = '<?php echo $str; ?>';
		</script>
	</body>
</html>
