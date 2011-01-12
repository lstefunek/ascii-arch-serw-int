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
		//$('#products>img').css("border","1px solid #666666");
		$('#products>img').mouseover(function() {
		  $(this).css("border","2px solid #666666");
		  $(this).css("background-color","#EEEEEE");
		});
		$('#products>img').mouseout(function() {
		  $(this).css("border","0px solid #666666");
		  $(this).css("background-color","#FFFFFF");
		});
	} catch (err) {}
	
	try {
		$('table').mouseover(function() {
		  $(this).css("background-color","#F0F0F0");
		});
		$('table').mouseout(function() {
		  $(this).css("background-color","#FAFAFA");
		});
	} catch (err) {}
	
	try {
		$('td').mouseover(function() {
		  $(this).css("background-color","#FFFFFF");
		});
		$('td').mouseout(function() {
		  $(this).css("background-color","#EFEFEF");
		});
	} catch (err) {}
	
	
		
});




