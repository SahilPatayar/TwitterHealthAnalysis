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

<title>Alzheimer Tweet Count</title>
</head>
<body>
	<div class="container">
		<div class="header">
			<ul class="nav nav-pills pull-right" role="tablist">
				<li role="presentation" class="active"><a href="home">Home</a></li>
				<li role="presentation"><a href="about">About</a></li>
				<li role="presentation"><a href="contact">Contact</a></li>
			</ul>
			<h3 class="text-muted">Tweet Count on Alzheimer</h3>
		</div>

		<div class="container">

<script type="text/javascript">
      		
			$('document').ready( function() {
				$('#mapCounty').on('click', function (e) {					
					$('#alzheimer-map').empty();
					drawChartCounty();				
				});
	      			
				
				$('#mapState').on('click', function (e) {
					$('#alzheimer-map').empty();
					drawChartState();					
				});				
				
			
			});				
				
				google.load("visualization", '1', {packages:['geochart']});      			      		
				google.setOnLoadCallback(drawChartState);
				
				function drawChartState() {
		        	
					var query = new google.visualization.Query(
		            	'https://docs.google.com/spreadsheets/d/1WL6E35D6SqB0UG53vYmDPSlxl1gpG_81CEbk-bbwzaU/edit?usp=sharing');
		        		query.send(handleQueryResponseState);
		      		}
				
				function drawChartCounty() {
		        	var query = new google.visualization.Query(
		            	'https://docs.google.com/spreadsheets/d/1-4ThoDxwXw6lB19uG9G20g9HRvLyWl7ksFsEDgqWbgc/edit?usp=sharing');
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
	      	 	var chart = new google.visualization.GeoChart(document.getElementById('alzheimer-map'));
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
		      	 	var chart = new google.visualization.GeoChart(document.getElementById('alzheimer-map'));
		      	 	chart.draw(data, options); 
		      		  
		      		}
				
</script>
			<div id="alzheimer-map" style="width: 800px; height: 533px; padding-bottom:20px;"></div>
			
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
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Perez Hilton</span><span class="text-muted"> @PerezHilton</span><span class="text-muted text-right" style="color:#720"> . Jun 17, 2014</span><p><a href="http://twitter.com/perezhilton/status/478869979379793920" target="_blank"> I really hope we are able to find a cure for #Alzheimers in my lifetime! Such a vile and untreatable disease! Much love to the caregivers!</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Cure Alzheimer's</span><span class="text-muted"> @CureAlzheimers</span><span class="text-muted text-right" style="color:#720"> . Mar 27, 2014</span><p><a href="http://twitter.com/curealzheimers/status/449251364665692160" target="_blank"> @RudyTanzi gives @BostonMagazine his tips on brain health and #Alzheimers prevention: http://t.co/FXRcnvh3pd</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Maria Shriver</span><span class="text-muted"> @mariashriver</span><span class="text-muted text-right" style="color:#720"> . Mar 19, 2014</span><p><a href="http://twitter.com/mariashriver/status/446232361500696576" target="_blank"> Watch me talk #alzheimers on @TODAYshow: About 500,000 people die each year from the disease. @alzassociation @ShriverReport</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">JohnsHopkinsMedicine</span><span class="text-muted"> @HopkinsMedicine</span><span class="text-muted text-right" style="color:#720"> . May 27, 2014</span><p><a href="http://twitter.com/hopkinsmedicine/status/471335267824304128" target="_blank"> Alzheimer’s Disease: What You Need to Know as You Age http://t.co/PT87BU8L3S #alzheimers</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">LiveScience</span><span class="text-muted"> @LiveScience</span><span class="text-muted text-right" style="color:#720"> . Mar 6, 2014 </span><p><a href="http://twitter.com/livescience/status/441633081183596544" target="_blank"> #Alzheimers disease  is a much larger killer than people recognize http://t.co/3I9fxk6Ohy</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Life Extension</span><span class="text-muted"> @LifeExtension</span><span class="text-muted text-right" style="color:#720"> . Jan 25, 2014</span><p><a href="http://twitter.com/lifeextension/status/427145437905453056" target="_blank"> Alzheimer's disease IS preventable: http://t.co/FnJT3AwdBG #alzheimers</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Life Extension</span><span class="text-muted"> @LifeExtension</span><span class="text-muted text-right" style="color:#720"> . Apr 21, 2014</span><p><a href="http://twitter.com/lifeextension/status/458118548477734912" target="_blank"> Alzheimer's disease IS preventable: http://t.co/cQUVJih0io #alzheimers</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Cleveland Clinic</span><span class="text-muted"> @ClevelandClinic</span><span class="text-muted text-right" style="color:#720"> . Apr 17, 2014</span><p><a href="http://twitter.com/clevelandclinic/status/456990543323467777" target="_blank"> Every 68 seconds someone in the U.S. is diagnosed with #Alzheimer's. Please retweet to raise awareness. #OneMemory</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Cleveland Clinic</span><span class="text-muted"> @ClevelandClinic</span><span class="text-muted text-right" style="color:#720"> . Jan 13, 2014</span><p><a href="http://twitter.com/clevelandclinic/status/422953799847002112" target="_blank"> Clinical trial aims to prevent #Alzheimer's using #diabetes drug I http://t.co/U3had83ohL</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Basil and Daisy</span><span class="text-muted"> @Lightofday1228</span><span class="text-muted text-right" style="color:#720"> . Jan 12, 2014</span><p><a href="http://twitter.com/lightofday1228/status/422550940391325696" target="_blank"> RT @knifeprincess: #baby onesie w/purple ribbon &amp;splash.  #Alzheimers #relayforlife #epilepsy http://t.co/Z8DOCCEn2T #etsymnt #Handmade htt…</a></p></pre></li>
				
				</ul>
			</div>
						
			<div class="rounded-box">

				<h3 style="text-align: center;">Symptoms of Alzheimer</h3>
				<ul class="list-group">
					<li class="list-group-item">Memory loss that disrupts daily life</li>
					<li class="list-group-item">Challenges in planning or solving problems</li>
					<li class="list-group-item">Confusion with time or place</li>
					<li class="list-group-item">Trouble understanding visual images and spatial relationships</li>
					<li class="list-group-item">New problems with words in speaking or writing</li>
					<li class="list-group-item">Lack of interest and concentration</li>
					<li class="list-group-item">Withdrawal from work or social activities</li>
					<li class="list-group-item"><a href="http://www.alz.org/"
						target="_blank">For More Information about Alzheimer</a>></li>
				</ul>

			</div>


		</div>
	</div>

</body>
</html>