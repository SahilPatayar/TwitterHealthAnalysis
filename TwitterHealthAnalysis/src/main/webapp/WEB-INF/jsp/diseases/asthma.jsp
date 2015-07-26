<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript"
	src="<c:url value="/resources/scripts/jquery-1.11.1.min.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/scripts/bootstrap.js" />"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap-theme.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.css.map" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/caurosel.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/jambotron-narrow.css" />">

<title>Asthma Tweet Count</title>
</head>
<body>
	<div class="container">
		<div class="header">
			<ul class="nav nav-pills pull-right" role="tablist">
				<li role="presentation" class="active"><a href="home">Home</a></li>
				<li role="presentation"><a href="about">About</a></li>
				<li role="presentation"><a href="contact">Contact</a></li>
			</ul>
			<h3 class="text-muted">Tweet Count on Asthma</h3>
		</div>

		<div class="container">

			<script type="text/javascript">
      		
			$('document').ready( function() {
				$('#mapCounty').on('click', function (e) {					
					$('#asthma-map').empty();
					drawChartCounty();				
				});
	      			
				
				$('#mapState').on('click', function (e) {
					$('#asthma-map').empty();
					drawChartState();					
				});				
				
			
			});				
				
				google.load("visualization", '1', {packages:['geochart']});      			      		
				google.setOnLoadCallback(drawChartState);
				
				function drawChartState() {
		        	
					var query = new google.visualization.Query(
		            	'https://docs.google.com/spreadsheets/d/1NIFTYEQ7puib8Bs-XHY8kl-rCY-Zo00ZC2v-enXOGVI/edit?usp=sharing');
		        		query.send(handleQueryResponseState);
		      		}
				
				function drawChartCounty() {
		        	var query = new google.visualization.Query(
		            	'https://docs.google.com/spreadsheets/d/1W2RI0bgz3tWwcE9iMxFXqQ3GVB6Gt7hUMT2KZupmOI8/edit?usp=sharing');
		        		query.send(handleQueryResponseCounty);
		      		}
		      		
						      		
	      		function handleQueryResponseState(response) {
	      		  if (response.isError()) {
	      		    alert('Error in query: ' + response.getMessage() + ' ' + response.getDetailedMessage());
	      		    return;
	      		  }
	      		 
	      		  
	      		var options = {
	  		          region: 'US', // US
	  		          displayMode: 'regions',
	  		          //colorAxis: {colors: ['green', 'blue']},
	  		          colorAxis: {colors: ['#4daf4a', '#377eb8', '#e41a1c']},
	  		          legend: {textStyle: {color: 'red', fontSize: 16} },  		          
	  		          resolution: 'provinces',  		          
	  		          magnifyingGlass: {enable: true, zoomFactor: 5.0},
	  		          tooltip: {textStyle: {color: 'green'}, showColorCode: true}  	          	 
	  		        };  
	      		var data = response.getDataTable();
	      	 	var chart = new google.visualization.GeoChart(document.getElementById('asthma-map'));
	      	 	chart.draw(data, options); 
	      		  
	      		}
				
				// For County
				
				function handleQueryResponseCounty(response) {
		      		  if (response.isError()) {
		      		    alert('Error in query: ' + response.getMessage() + ' ' + response.getDetailedMessage());
		      		    return;
		      		  }
		      		 
		      		  
		      		var options = {
		  		          region: 'US', // US
		  		          displayMode: 'markers',
		  		          //colorAxis: {colors: ['green', 'blue']},
		  		          colorAxis: {colors: ['#4daf4a', '#377eb8', '#e41a1c']},
		  		          legend: {textStyle: {color: 'blue', fontSize: 16} },
		  		          resolution: 'provinces',  		          
		  		          magnifyingGlass: {enable: true, zoomFactor: 5.0},
		  		          tooltip: {textStyle: {color: 'green'}, showColorCode: true}  	          	 
		  		        };  
		      		var data = response.getDataTable();
		      	 	var chart = new google.visualization.GeoChart(document.getElementById('asthma-map'));
		      	 	chart.draw(data, options); 
		      		  
		      		}
				
</script>
			<div id="asthma-map" style="width: 800px; height: 533px; padding-bottom:20px;"></div>
			
			<div class="btn-group btn-group-justified" style="padding-top:20px; padding-bottom:20px;">
  				<div class="btn-group">
    				<button id="mapState" type="button" class="btn btn-info">State Map</button>
 	 			</div>
  				
  				<div class="btn-group">
    				<button id="mapCounty" type="button" class="btn btn-info">County Map</button>
  				</div>  
			</div>
			
			<div class="rounded-box">
				<h3 style="text-align: center;">Top 10 Tweets</h3>
				<ul class="list-group">
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">KidsHealth</span><span class="text-muted"> @KidsHealth</span><span class="text-muted text-right" style="color:#720"> . Mar 11, 2014</span><p><a href="http://twitter.com/kidshealth/status/443492087011745792" target="_blank"> Free #Asthma action plan! http://t.co/I5k094Ca07</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Everyday Health</span><span class="text-muted"> @EverydayHealth</span><span class="text-muted text-right" style="color:#720"> . Jan 5, 2014 </span><p><a href="http://twitter.com/everydayhealth/status/419947389999644672" target="_blank"> How to make a bedroom #asthma-friendly http://t.co/2GjIwHzPDl</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">KidsHealth</span><span class="text-muted"> @KidsHealth</span><span class="text-muted text-right" style="color:#720"> . Apr 3, 2014 </span><p><a href="http://twitter.com/kidshealth/status/451766135164518401" target="_blank"> When to Go to the ER if Your Child Has #Asthma http://t.co/P2ujpG5EAq</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Everyday Health</span><span class="text-muted"> @EverydayHealth</span><span class="text-muted text-right" style="color:#720"> . Mar 20, 2014</span><p><a href="http://twitter.com/everydayhealth/status/446866816623968256" target="_blank"> Home Cleaning Tips for Allergic #Asthma http://t.co/A4ivIW8aSR</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">David Voth</span><span class="text-muted"> @SexCigarsBooze</span><span class="text-muted text-right" style="color:#720"> . Jun 27, 2014</span><p><a href="http://twitter.com/sexcigarsbooze/status/482733417394499584" target="_blank"> Studies show that #watermelon is excellent in helping to prevent #asthma, #highbloodpressure, and #cancer. http://t.co/EfjLd05RPa</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">KidsHealth</span><span class="text-muted"> @KidsHealth</span><span class="text-muted text-right" style="color:#720"> . Mar 24, 2014</span><p><a href="http://twitter.com/kidshealth/status/448149948060934144" target="_blank"> #Asthma advice and support. http://t.co/8EZY1fP9zi</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Everyday Health</span><span class="text-muted"> @EverydayHealth</span><span class="text-muted text-right" style="color:#720"> . Mar 12, 2014</span><p><a href="http://twitter.com/everydayhealth/status/443693045775867904" target="_blank"> Top 5 Worst Cities for #Asthma  http://t.co/Cv5wi59JA5</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Everyday Health</span><span class="text-muted"> @EverydayHealth</span><span class="text-muted text-right" style="color:#720"> . Apr 9, 2014 </span><p><a href="http://twitter.com/everydayhealth/status/453877781655744512" target="_blank"> How to make a bedroom #asthma-friendly http://t.co/bkslQ8p3Xz</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">KidsHealth</span><span class="text-muted"> @KidsHealth</span><span class="text-muted text-right" style="color:#720"> . May 8, 2014 </span><p><a href="http://twitter.com/kidshealth/status/464495426969018371" target="_blank"> Tips on Creating an #Asthma-Safe Home http://t.co/zgoGM26M2Y</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">ManiacCyclingGear</span><span class="text-muted"> @ManiacCycGear</span><span class="text-muted text-right" style="color:#720"> . Mar 10, 2014</span><p><a href="http://twitter.com/maniaccycgear/status/443182209940197377" target="_blank"> Check out our latest blog post! http://t.co/7AhiH2V7v6#cycling  #asthma   #epilepsy   #MS #diet</a></p></pre></li>
										
				</ul>
			</div>
			
				
			<div class="rounded-box">

				<h3 style="text-align: center;">Symptoms of Asthma</h3>
				<ul class="list-group">
					<li class="list-group-item">Coughing, especially at night</li>
					<li class="list-group-item">Wheezing</li>
					<li class="list-group-item">Shortness of breath</li>
					<li class="list-group-item">Chest tightness, pain, or pressure</li>
					<li class="list-group-item"><a href="http://acaai.org/asthma"
						target="_blank">For More Information about Asthma</a>></li>
				</ul>

			</div>


		</div>
	</div>

</body>
</html>