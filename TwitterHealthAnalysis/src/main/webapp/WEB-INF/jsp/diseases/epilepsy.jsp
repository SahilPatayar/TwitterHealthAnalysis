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

<title>Epilepsy Tweet Count</title>
</head>
<body>
	<div class="container">
		<div class="header">
			<ul class="nav nav-pills pull-right" role="tablist">
				<li role="presentation" class="active"><a href="home">Home</a></li>
				<li role="presentation"><a href="about">About</a></li>
				<li role="presentation"><a href="contact">Contact</a></li>
			</ul>
			<h3 class="text-muted">Tweet Count on Epilepsy</h3>
		</div>

		<div class="container">

<script type="text/javascript">
      		
			$('document').ready( function() {
				$('#mapCounty').on('click', function (e) {					
					$('#epilepsy-map').empty();
					drawChartCounty();				
				});
	      			
				
				$('#mapState').on('click', function (e) {
					$('#epilepsy-map').empty();
					drawChartState();					
				});				
				
			
			});				
				
				google.load("visualization", '1', {packages:['geochart']});      			      		
				google.setOnLoadCallback(drawChartState);
				
				function drawChartState() {
		        	
					var query = new google.visualization.Query(
		            	'https://docs.google.com/spreadsheets/d/1bX6cG2bFkNeJxt2Cvv5UfJpILSn0Lo_FCzfwJj_G_2c/edit?usp=sharing');
		        		query.send(handleQueryResponseState);
		      		}
				
				function drawChartCounty() {
		        	var query = new google.visualization.Query(
		            	'https://docs.google.com/spreadsheets/d/1IIJ7M0olUTc0Og9cBq7tXDHs8BwWVMphhL6yrFQOp8A/edit?usp=sharing');
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
	      	 	var chart = new google.visualization.GeoChart(document.getElementById('epilepsy-map'));
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
		      	 	var chart = new google.visualization.GeoChart(document.getElementById('epilepsy-map'));
		      	 	chart.draw(data, options); 
		      		  
		      		}
				
</script>
			<div id="epilepsy-map" style="width: 800px; height: 533px; padding-bottom:20px;"></div>
			
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
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">HIGH TIMES</span><span class="text-muted"> @HIGH_TIMES_Mag</span><span class="text-muted text-right" style="color:#720"> . Feb 14, 2014</span><p><a href="http://twitter.com/high_times_mag/status/434338490763845633" target="_blank"> #Epilepsy Docs Say Let Dying Children Wait for the #FDA http://t.co/S96kLatcLK</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Medscape</span><span class="text-muted"> @Medscape</span><span class="text-muted text-right" style="color:#720"> . Apr 23, 2014</span><p><a href="http://twitter.com/medscape/status/458988750920351744" target="_blank"> A new definition of #epilepsy  http://t.co/9Sv4PldHFO</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">HIGH TIMES</span><span class="text-muted"> @HIGH_TIMES_Mag</span><span class="text-muted text-right" style="color:#720"> . May 15, 2014</span><p><a href="http://twitter.com/high_times_mag/status/466966350129537025" target="_blank"> Looks like trials evaluating #CBD For #epilepsy are still years away... http://t.co/qywQu9DzOS | http://t.co/GNhMixcjPF</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Epilepsy Foundation</span><span class="text-muted"> @EpilepsyFdn</span><span class="text-muted text-right" style="color:#720"> . Jun 1, 2014 </span><p><a href="http://twitter.com/epilepsyfdn/status/473175929830006784" target="_blank"> Know More about Marijuana and #Epilepsy and Share Your Opinion! http://t.co/sB9uV1XTW2</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Cleveland Clinic</span><span class="text-muted"> @ClevelandClinic</span><span class="text-muted text-right" style="color:#720"> . Feb 12, 2014</span><p><a href="http://twitter.com/clevelandclinic/status/433729777019936768" target="_blank"> New #app helps patients manage #epilepsy http://t.co/E7kAk5FwXq</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Helen's Story</span><span class="text-muted"> @helens_story</span><span class="text-muted text-right" style="color:#720"> . Mar 9, 2014 </span><p><a href="http://twitter.com/helens_story/status/442652675382206465" target="_blank"> @helens_story is in the leader of The Observer! #epilepsy #epilepsyawareness http://t.co/e0RN1FVsbd</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Greg Grunberg</span><span class="text-muted"> @greggrunberg</span><span class="text-muted text-right" style="color:#720"> . Jan 18, 2014</span><p><a href="http://twitter.com/greggrunberg/status/424595671404908544" target="_blank"> Pretty Incredible!!!  http://t.co/IRIerQMA9b #CBD #Epilepsy @TalkAboutItorg</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Cleveland Clinic</span><span class="text-muted"> @ClevelandClinic</span><span class="text-muted text-right" style="color:#720"> . Feb 15, 2014</span><p><a href="http://twitter.com/clevelandclinic/status/434839908696735744" target="_blank"> New #app helps patients manage #epilepsy http://t.co/A0PCI2TH3k</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">fleetstreetfox</span><span class="text-muted"> @fleetstreetfox</span><span class="text-muted text-right" style="color:#720"> . Jun 18, 2014</span><p><a href="http://twitter.com/fleetstreetfox/status/479246155797495808" target="_blank"> Finally got my driving licence back! Only for 3yrs, but I feel socially acceptable again. http://t.co/1eETECcXvY #epilepsy</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">JustSayHi</span><span class="text-muted"> @Just_Say_Hii</span><span class="text-muted text-right" style="color:#720"> . Mar 23, 2014</span><p><a href="http://twitter.com/just_say_hii/status/447888206433107968" target="_blank"> One last one for the evening. Reunited with her Elmo!!! #epilepsy #warrior http://t.co/wxawFiwckP</a></p></pre></li>
				</ul>
			</div>
			
			<div class="rounded-box">

				<h3 style="text-align: center;">Symptoms of Epilepsy</h3>
				<ul class="list-group">
					<li class="list-group-item">simply stare at nothing for a few seconds.</li>
					<li class="list-group-item">lose consciousness.</li>
					<li class="list-group-item">exhibit strange behavior</li>
					<li class="list-group-item">convulse violently.</li>
					<li class="list-group-item"><a href="http://www.epilepsy.com/"
						target="_blank">For More Information about Epilepsy</a>></li>
				</ul>

			</div>


		</div>
	</div>

</body>
</html>