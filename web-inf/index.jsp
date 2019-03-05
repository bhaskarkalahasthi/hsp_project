<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<style>
    
		/* styles unrelated to zoom */
		* { border:0; margin:0; padding:0; }
		
		/* these styles are for the demo, but are not required for the plugin */
		.zoom {
			display:inline-block;
			position: relative;
		}
		
		/* magnifying glass icon */
		.zoom:after {
			content:'';
			display:block; 
			width:5px; 
			height:5px; 
			position:absolute; 
			top:0;
			right:0;
			background:url(icon.png);
		}

		.zoom img {
			display: block;
		}
    .submit{
        top:30px;
    }

		.zoom img::selection { background-color: transparent; }

		#ex2 img:hover { cursor: url(grab.cur), default; }
		#ex2 img:active { cursor: url(grabbed.cur), default; }

	
 
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next, .submit{
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: 100px;
  padding: 12px;
  margin-top: -22px;
  color: green;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 0px 0px 0;
  user-select: none;
  margin-top: 170px;
  background-color: aqua;
}

/* Position the "next button" to the right */
.next {
  right: 20px;
  border-radius: 0px 0 0 0px;
    align-content: center;
    content: 50px;
}
    .submit{
       left:0;
    }

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover, .submit:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 50%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 33px;
  width: 33px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
    
        .titlediv{
            background-color: darksalmon;
            align-content: center;
            text-align: center;
            padding: 6px;
        
        }
        .align{
            margin-left: 20px;
        }
        .alldiv{
            height: 300px;
            width: 300px;
        }
body {
  font-family: Arial;
  color: white;
}

.split {
  height: 90%;
  width: 50%;
  position: fixed;
  top: -47px;
  overflow-x: hidden;
  padding-top: 20px;
  margin-top: 100px;
}

.left {
  left: 0;
  background-color: cadetblue;
}

.right {
  right: 0;
  background-color: red;
}
    .submit{
        width:89px;
        height:45px;
        left: 300px;
    }
</style>
 

</head>
<body>

     <div class="titlediv">
        
            <h1>Welcome to Retinal Image Annotation</h1>             
        </div>
        <form action="submit.jsp" method="post" onsubmit="checkresult()">
        
        <div class="split left">
            <div class="alldiv">
        
           
            <p>Q1)How you see this image?</p><br/>
            
                    <label><input type="radio" name="post-format"  class="supopt" value="healthy" id="res">1)Healthy</label><br>
                    <label><input type="radio" name="post-format" id="post-format-gallery" class="supopt" value="unhealthy">2)Unhealthy</label><br>

            <div class="alldiv"id="gallery-box" style="border: 1px solid red;">
                <p>Q2)What are the sign making the image unhealthy?</p>
                <label> <input type="checkbox" name="post" class="supopt" value="Retinal hemorrhage" id="Retinal_hemorrhage">a)Retinal Hemorrhage</label><br>
                <label> <input type="checkbox" name="post" class="supopt" value="retinal Detachement" id="retinal_Detachement">b)Retinal Detachment</label><br>
           
                <label> <input type="checkbox" name="post" class="supopt" value="Vitreous Hemorrhage" id="Vitreous_Hemorrhage">c)Vitreous Hemorrhage</label><br>
                <label> <input type="checkbox" name="post" class="supopt" value="Excudates" id="Excudates">d)Excudates</label><br>
    
                <label><input type="checkbox" name="post" id="post-gallery" class="supopt" value="Diabetic Retinopathy">e)Diabetic Retinopathy
                </label><br>
                    <div id="gallery" class="align" style="border: 1px solid red;">
                        <label><input type="checkbox" name="e_options" value="NPDR" id="NPDR">i)NPDR</label><br>
                        <label><input type="checkbox" name="e_options" id="e_options_pdr" value="PDR">ii)PDR<br></label>
                            <div id="gallery_e_options" class="align"   style="border: 1px solid red;">
                                <label> <input type="checkbox" name="name" value="NVD" id="NVD">NVD<br></label>
                                <label> <input type="checkbox" name="name" value="NVE" id="NVE">NVE<br></label>
                            
                            </div>
                        
                        <label><input type="checkbox" name="e_options" value="can't say" id="cant_say">iii)can't say but sigh of DR
                                  </label><br>
            
            </div>
                
        <label><input type="checkbox" name="post" id="Suspected_glaucoma" value="Suspected glaucoma">f)Suspected glaucoma
        </label><br>
                
        
        
        </div>
                
            <a class="next" style="align-self:flex-start" onclick="plusSlides(1)" id="nex">Next</a>
           
            <input type="submit" style="align-content:center" name="submit" value="submit" id="submit" onclick="" class="submit">
            <a class="prev" onclick="plusSlides(-1)" id="pre">Previous</a>
         </div>
         </div>
         
<div class="split right">
                 
<div class="slideshow-container" id="ex3">
	<img src="img1/1.jpg" style="width:100%" alt="ey1" id="image" >
  
<div class="mySlides zoom" id='ex1' >
 
 
</div>


    </div>
   
</div>
</form>

<script>
var count = 0;
var images = ["ey1","ey2","ey3","ey4"];
var response = [];
var response_count = 0;
var response_string;
var slideIndex = 1;
var imge;
var res_index=0;
var count_pre=1;
var result = [];
var index = 0;
function checkresult(){
	 
	   $.get("Datastore",
	  	        {
		   		 problem: result,
	  	    	},
	  	    function(response, status) {
	          // notify user that his order is successfull
	          }
	  	);
	
	
}
function plusSlides(n) {
		//var images_servlet=images[count_img];
	//count_img = 	count_img+1;
	
  
	var body1_r = $("input[type='radio'][name='post-format']:checked").val();
	if( body1_r != null){
		response_string = body1_r; 
		//response_count++;
		//alert(response_count);
	
	}
	if(document.getElementById('Retinal_hemorrhage').checked){
	     
		var x = document.getElementById('Retinal_hemorrhage').value; 
		response_string = response_string+":"+x;
	  
	}
	if(document.getElementById('retinal_Detachement').checked){
	     
		var x = document.getElementById('retinal_Detachement').value; 
		response_string = response_string+":"+x;
	  
	}
	if(document.getElementById('Vitreous_Hemorrhage').checked){
	     
		var x = document.getElementById('Vitreous_Hemorrhage').value; 
		response_string = response_string+":"+x;
	  
	}
	if(document.getElementById('Excudates').checked){
	     
		var x = document.getElementById('Excudates').value; 
		response_string = response_string+":"+x;
	  
	}
	if(document.getElementById('post-gallery').checked){
	     
		var x = document.getElementById('post-gallery').value; 
		response_string = response_string+":"+x;
				if(document.getElementById('NPDR').checked){
		     			var x = document.getElementById('NPDR').value; 
						response_string = response_string+":"+x;
			    }
				if(document.getElementById('e_options_pdr').checked){
	     			var x = document.getElementById('e_options_pdr').value; 
					response_string = response_string+":"+x;
					if(document.getElementById('NVD').checked){
		     			var x = document.getElementById('NVD').value; 
						response_string = response_string+":"+x;
			    	}
					if(document.getElementById('NVE').checked){
		     			var x = document.getElementById('NVE').value; 
						response_string = response_string+":"+x;
			    	}
		}
				if(document.getElementById('cant_say').checked){
	     				var x = document.getElementById('cant_say').value; 
						response_string = response_string+":"+x;
		    	}
	}
	if(document.getElementById('Suspected_glaucoma').checked){
			var x = document.getElementById('Suspected_glaucoma').value; 
		response_string = response_string+":"+x;
}
	response.push(response_string );
	problem_stmt = response_string;
	
	
	
	
    if(n<0){

        	var enable = response[response_count-1].split(":"); 
        	//alert("the lengthis"+enable.length)       
        	//alert("count::"+response_count);
              	if(enable[0]=="healthy"){
        		$("#gallery-box").hide();
        		 $('input[id=res]').prop('checked', true); 	
            }
        	else{
        		if(enable[0] == "unhealthy"){
        			alert("unhealthy");
        			 $('input:checkbox').removeAttr('checked');
        		//	alert("yess"+enable[1]);
        			$("#gallery-box").show();
        			$("#gallery").hide();
        	         $("#gallery_e_options").hide();
        			response_count--;
        	   // alert("hiiiiiiiiiiiiiiiiii")
        			//$('input[id=post-format-gallery]').prop('checked', true);
        			//$("#gallery-box").show();
        			//alert("gallery-box");
        			for(var i=1;i<enable.length;i++){
        				if(enable[i]=="Retinal hemorrhage"){
            				//alert("hiiii for loop"+enable[1]);
            				//document.getElementById("Retinal_hemorrhage").checked = true;
                      		 //$('input[id=Retinal hemorrhage]').prop('checked', true);
                      		//$('input[id=Retinal_hemorrhage]').prop('checked', true);
                      		//$('Retinal_hemorrhage')[0].checked = true;
                      		document.getElementById("Retinal_hemorrhage").checked = true;
                      	}
        				if(enable[i]=="retinal Detachement"){
                      		document.getElementById("retinal_Detachement").checked = true;
                      	}
        				if(enable[i]=="retinal Detachement"){
                      		document.getElementById("retinal_Detachement").checked = true;
                      	}
        				if(enable[i]=="Vitreous Hemorrhage"){
                    		
        					document.getElementById("Vitreous_Hemorrhage").checked = true;
                    	}
						if(enable[i]=="Excudates"){
                    		
        					document.getElementById("Excudates").checked = true;
                    	}
						if(enable[i]=="Diabetic Retinopathy"){
                    		
        					document.getElementById("post-gallery").checked = true;
        					$("#gallery").show();
                    	}
						if(enable[i]=="NPDR"){
                    		
        					document.getElementById("NPDR").checked = true;
                    	}
						if(enable[i]=="PDR"){
                    		
        					document.getElementById("e_options_pdr").checked = true;
        					$("#gallery_e_options").show();
                    	}
						if(enable[i]=="NVD"){
                    		
        					document.getElementById("NVD").checked = true;
        		
                    	}
						if(enable[i]=="NVE"){
                    		
        					document.getElementById("NVE").checked = true;
        		
                    	}
						if(enable[i]=="can't say"){
                    		
        					document.getElementById("cant_say").checked = true;
        		
                    	}
						if(enable[i]=="Suspected glaucoma"){
                    		
        					document.getElementById("Suspected_glaucoma").checked = true;
        		
                    	}
        				
        				
        				
        				
        			}
        		
        		}
        }		
        			
   
    }
    else{
    	res_index++;
    	response_count = res_index;
         $("#gallery-box").hide();
         $("#gallery").hide();
         $("#gallery_e_options").hide();
         $('input:checkbox').removeAttr('checked');
    $('input:radio[name=post-format]').attr('checked',false);
    $('input:radio[name=post]').attr('checked',false);
    $('input:radio[name=post]').attr('checked',false);
     $('input:radio[name=e_options]').attr('checked',false);
    $('input:radio[name=name]').attr('checked',false);
        
    }
    
   if(n>=1){ 
	  
	 if(count_pre <=2){ 
	  //document.getElementById(Id).removeChild(img);
  		 var imagesrc = document.getElementById("image").getAttribute("src");
  	 var currentimagenumber = imagesrc.substring(imagesrc.lastIndexOf("/") + 1, imagesrc.lastIndexOf("/")+2);
   var remove = "img1/"+(Number(currentimagenumber))+".jpg";
   var newImage = "img1/"+(Number(currentimagenumber)+1)+".jpg";
   //document.getElementById("ex1").removeChild(remove);
   document.getElementById("image").setAttribute("src",newImage);
   document.getElementById("ex1").innerHTML = newImage;
   var previmg = "img1/"+(Number(currentimagenumber))+".jpg";
   problem_stmt = previmg+"/"+ problem_stmt;
   result[index] = problem_stmt;
   index++;
      count_pre++;
     
	 }
	 else{
		 alert("sorry!! their is no images");
	 }
      //alert("precount"+count_pre);
   }
   else{
	   //alert("preeeeeeeeeeeee");
	   
	   
	   if(count_pre>1){
	   var newImage = "img/"+(Number(count_pre)-1)+".jpg";
	
	   document.getElementById("ex1").innerHTML = newImage;
	   document.getElementById("image").setAttribute("src",newImage);
	   problem_stmt = newImage+"/"+ problem_stmt;
	   count_pre--;
	   index--;
	   result[index] = problem_stmt;
	  
	   }
	   else{
		   alert("their is no images");
	   }
	   		
   }
     
   
    
}


</script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script>
            $(function() {
    $('input[name=post-format]').on('click init-post-format', function() {
        $('#gallery-box').toggle($('#post-format-gallery').prop('checked'));
    }).trigger('init-post-format');
            });
    
            $(function() {
    $('input[name=post').on('click init-post', function() {
        $('#gallery').toggle($('#post-gallery').prop('checked'));
    }).trigger('init-post');
            });
         
          $(function() {
                $('input[name=e_options').on('click init-e_options', function() {
                $('#gallery_e_options').toggle($('#e_options_pdr').prop('checked'));
                }).trigger('init-e_options');
            });
         
       

    </script>
    <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
	<script src='js/jquery.zoom.js'></script>
	<script>
		$(document).ready(function(){
			$('#ex3').zoom();
	
		});
	</script>

                 
        

</body>
</html>