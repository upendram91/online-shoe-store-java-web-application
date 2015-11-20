/*

My Custom JS
============

Author:  Brad Hussey
Updated: August 2013
Notes:	 Hand coded for Udemy.com

*/


$(function()
{

	$("[data-hide]").on("click", function(){
        $("." + $(this).attr("data-hide")).hide();
        /*
         * The snippet above will hide all elements with the class specified in data-hide,
         * i.e: data-hide="alert" will hide all elements with the alert property.
         *
         * Xeon06 provided an alternative solution:
         * $(this).closest("." + $(this).attr("data-hide")).hide();
         * Use this if are using multiple alerts with the same class since it will only find the closest element
         * 
         * (From jquery doc: For each element in the set, get the first element that matches the selector by
         * testing the element itself and traversing up through its ancestors in the DOM tree.)
        */
    });



	$('#alertMe').click(function(e){
		e.preventDefault();
	
		$('#successAlert').slideDown();
	});
});