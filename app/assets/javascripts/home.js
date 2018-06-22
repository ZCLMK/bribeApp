/* global $ */

$(document).on("turbolinks:load", () => {
	
	const classes = ["carousel--img--two", "carousel--img--three", "carousel--img--four", "carousel--img--one"]
	let counter = 0
	let carousel = $('.carousel')
	
	function switchBackground(){
				
				
	  	  let bgClass = carousel.attr("class").split(' ')[1]
	  	  carousel.removeClass(bgClass)
	  	  carousel.addClass(classes[counter])
				counter < classes.length-1 ? counter ++ : counter = 0
	
	}
	
	setInterval(switchBackground, 15000)
	
	
 });
				 
