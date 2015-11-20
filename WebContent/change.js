$(function()
{


$( ".target" ).change(function() {
alert( "Handler for .change() called." );
});

function makeDisable(){
    var x=document.getElementById("_heel")
    x.disabled=true
}

function makeEnable(){
    var x=document.getElementById("_heel")
    x.disabled=false
}

//

$("#_pizza").change(function() {
        var $thisOption = $(this);
        var valueToCompare = "volvo";
        var valueToCompare1 = "saab";
        
        if($thisOption.val() == valueToCompare) {
           //$('#_cheese').prop('disabled', 'disabled');
            //makeDisable();
            $('#_cheese').show();
        }
        
        else if($thisOption.val() == valueToCompare1)
        {
            //$('#_cheese').prop('disabled',false);
            //makeEnable();
            $('#_cheese').hide();
        }
        else
        {
        	$('#_cheese').show();
        	//S('#_cheese').prop('enabled',true);	
        }
    });


window.onload = function() {
  // your code here
          $('#_heel').hide();
            $('#_heel1').hide();
            $('#subcat').hide();
            

}




$("#_cat").change(function() {
        var $thisOption = $(this);
        var valueToCompare0="NONE";
        var valueToCompare = "MEN";
        var valueToCompare1 = "WOMEN";

        
        if($thisOption.val() == valueToCompare0) {
           //$('#_cheese').prop('disabled', 'disabled');
            //makeDisable();        	
       /*
        	         	$.ajax({
        		url:'advsearch1',
        		type:'post',
        		datatype:'text',
        		data: {keyword:"men"}
        		
        	});
        	*/

        	/*$('#subcat').hide();
            $('#_heel').hide();
            $('#_heel1').hide();
            $('#_type20').hide();
            $('#_type21').hide();
            $('#_type22').hide();
            $('#_sort').hide();
*/

        }
        
        else if($thisOption.val() == valueToCompare)
        {
            //$('#_cheese').prop('disabled',false);
            //makeEnable();
         /*   $('#subcat').show();
            $('#_heel').hide();
            $('#_heel1').hide();
            $('#_type20').show();
            $('#_sort').show();
            $('#_type21').hide();
            $('#_type22').hide();*/
        	
        	  var xhr= new XMLHttpRequest();
        	  var url='advsearch1?keyword=MEN';
        	  xhr.open("POST",url);
        	  xhr.send();
        	  xhr.onready
        	  $('#submit').hide();
        	  /*$.post("advsearch1",{keyword: "MEN"});*/
        

        }


        else if($thisOption.val() == valueToCompare1)
        {
            //$('#_cheese').prop('disabled',false);
            //makeEnable();
        	$('#_sort').show();
            $('#subcat').show();
            $('#_heel').show();
            $('#_heel1').show();
            $('#_type21').show();          

            $('#_type20').hide();
            
            $('#_type22').hide();
        }
        else
        {
        	$('#_sort').show();
            $('#subcat').show();
            $('#_heel').hide();
            $('#_heel1').hide();
            $('#_type22').show();
            $('#_type20').hide();
            $('#_type21').hide();
            $('#_mat2').hide();
            
            
            //S('#_cheese').prop('enabled',true);   
        }
    });



    $(update_cat);
    $("#_cat").change(update_cat);
    
});