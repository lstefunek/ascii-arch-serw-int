// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults



$(document).ready(function() {
	try {
		$('#user_nav').mouseover(function() {
		  $(this).css("background-color","#EEEEEE");
		});
		$('#user_nav').mouseout(function() {
		  $(this).css("background-color","#FFFFFF");
		});
	} catch (err) {}
	try {
		$('a').data("color",$('a').css("color"));
		$('a').mouseover(function() {
		  $(this).css("color","#222222");
		});
		$('a').mouseout(function() {
		  $(this).css("color",$('a').data("color"));
		});
	} catch (err) {}
	
	try {
		//$('#products>img').css("border-color","#222222");
		$('#products>img').css("border","1px solid #666666");
		$('#products>img').mouseover(function() {
		  $(this).css("color","#FAFAFA");
		});
		$('#products>img').mouseout(function() {
		  $(this).css("color","#FFFFFF");
		});
	} catch (err) {}
	
	
		
});




