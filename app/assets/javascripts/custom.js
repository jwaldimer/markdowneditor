var changeRenderText = function(text){
	var converter = new showdown.Converter();
	var tx = converter.makeHtml(text);
	$("#rendered-text").html(tx);
}