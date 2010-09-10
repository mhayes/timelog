// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function() {
	Cufon.replace("h1, h2");
	$(':input.datefield').datepicker({dateFormat:'yy-mm-dd', defaultDate:Date.today});
	$(':submit, a.button').button();
});