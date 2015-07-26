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

<title>Tuberculosis Tweet Count</title>
</head>
<body>
	<div class="container">
		<div class="header">
			<ul class="nav nav-pills pull-right" role="tablist">
				<li role="presentation" class="active"><a href="home">Home</a></li>
				<li role="presentation"><a href="about">About</a></li>
				<li role="presentation"><a href="contact">Contact</a></li>
			</ul>
			<h3 class="text-muted">Tweet Count on Tuberculosis</h3>
		</div>

		<div class="container">

<script type="text/javascript">
      		
			$('document').ready( function() {
				$('#mapCounty').on('click', function (e) {					
					$('#tuberculosis-map').empty();
					drawChartCounty();				
				});
	      			
				
				$('#mapState').on('click', function (e) {
					$('#tuberculosis-map').empty();
					drawChartState();					
				});				
				
			
			});				
				
				google.load("visualization", '1', {packages:['geochart']});      			      		
				google.setOnLoadCallback(drawChartState);
				
				function drawChartState() {
		        	
					var query = new google.visualization.Query(
		            	'https://docs.google.com/spreadsheets/d/1I42R9l9QzMObq2CAEiXj8gmlCPlXP_kIDR5QV4WQVXk/edit?usp=sharing');
		        		query.send(handleQueryResponseState);
		      		}
				
				function drawChartCounty() {
		        	var query = new google.visualization.Query(
		            	'https://docs.google.com/spreadsheets/d/1r5q1T2xOeYiRZ8ZP1ID5kTXRIO_-r6c5R0rAWCMyIWQ/edit?usp=sharing');
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
	      	 	var chart = new google.visualization.GeoChart(document.getElementById('tuberculosis-map'));
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
		      	 	var chart = new google.visualization.GeoChart(document.getElementById('tuberculosis-map'));
		      	 	chart.draw(data, options); 
		      		  
		      		}
				
</script>
			<div id="tuberculosis-map" style="width: 800px; height: 533px; padding-bottom:20px;"></div>
			
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
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Times of India</span><span class="text-muted"> @timesofindia</span><span class="text-muted text-right" style="color:#720"> . Mar 25, 2014</span><p><a href="http://twitter.com/timesofindia/status/448381306687483904" target="_blank"> #Tuberculosis affects 1 million children annually: Study http://t.co/xQsCeN1ApV</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Gates Foundation</span><span class="text-muted"> @gatesfoundation</span><span class="text-muted text-right" style="color:#720"> . Feb 18, 2014</span><p><a href="http://twitter.com/gatesfoundation/status/435901835128623104" target="_blank"> Treating tuberculosis and #AIDS together saves lives: http://t.co/UZlmDVQzbi via @NYtimes</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">WFAA TV</span><span class="text-muted"> @wfaachannel8</span><span class="text-muted text-right" style="color:#720"> . May 13, 2014</span><p><a href="http://twitter.com/wfaachannel8/status/466428132300718080" target="_blank"> #Tuberculosis alert at South Grand Prairie HS DETAILS: http://t.co/jo3KZk5Uj9</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Gates Foundation</span><span class="text-muted"> @gatesfoundation</span><span class="text-muted text-right" style="color:#720"> . Mar 18, 2014</span><p><a href="http://twitter.com/gatesfoundation/status/445980566517985281" target="_blank"> Data suggests China has "halved its #tuberculosis problem" http://t.co/2s9QpTkWqf</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">PBS</span><span class="text-muted"> @PBS</span><span class="text-muted text-right" style="color:#720"> . Mar 25, 2014</span><p><a href="http://twitter.com/pbs/status/448491978167422976" target="_blank"> Think #tuberculosis is a disease of the past? Think again. #TBSilentKiller premieres tonight on @frontlinepbs: http://t.co/6Wzr23aMej</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">St. Jude </span><span class="text-muted"> @StJude</span><span class="text-muted text-right" style="color:#720"> . Jan 30, 2014</span><p><a href="http://twitter.com/stjude/status/428963440913547264" target="_blank"> .@StJude creates new #antibiotics with promise against drug-resistant #tuberculosis http://t.co/ydZjfZ5kOL via @NatureMedicine</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">The Lancet</span><span class="text-muted"> @TheLancet</span><span class="text-muted text-right" style="color:#720"> . Mar 18, 2014</span><p><a href="http://twitter.com/thelancet/status/445869909676154880" target="_blank"> China halves #tuberculosis prevalence in just 20 years, new study shows http://t.co/1aEYVSXM7n</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Times of India</span><span class="text-muted"> @timesofindia</span><span class="text-muted text-right" style="color:#720"> . Mar 24, 2014</span><p><a href="http://twitter.com/timesofindia/status/448011420031266817" target="_blank"> Most drug-resistant #tuberculosis patients in India: WHO  http://t.co/5PFtmxdiQB #WorldTuberculosisDay</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Cleveland Clinic</span><span class="text-muted"> @ClevelandClinic</span><span class="text-muted text-right" style="color:#720"> . Jan 1, 2014 </span><p><a href="http://twitter.com/clevelandclinic/status/418396759195656192" target="_blank"> A #vaccine developed to prevent tuberculosis may also prevent #multiplesclerosis, a study finds | http://t.co/7SUBXZwN3A</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Marcia Hogg</span><span class="text-muted"> @themarsh</span><span class="text-muted text-right" style="color:#720"> . May 27, 2014</span><p><a href="http://twitter.com/themarsh/status/471468777020719104" target="_blank"> RT @Water4: #WaterFact: Diarrhea kills more children than #Malaria, #HIV/#AIDS, and #Tuberculosis combined. More: http://t.co/SHSXoTn3pu</a></p></pre></li>
				
				</ul>
			</div>	
			
			<div class="rounded-box">

				<h3 style="text-align: center;">Symptoms of Tuberculosis</h3>
				<ul class="list-group">
					<li class="list-group-item">A bad cough that lasts 3 weeks or longer.</li>
					<li class="list-group-item">Pain in the chest.</li>
					<li class="list-group-item">Coughing up blood or sputum (phlegm from deep inside the lungs)</li>
					<li class="list-group-item">Weight loss</li>
					<li class="list-group-item">Weakness or fatigue</li>
					<li class="list-group-item">Fever</li>
					<li class="list-group-item"><a href="http://www.cdc.gov/tb/"
						target="_blank">For More Information about Tuberculosis</a>></li>
				</ul>

			</div>


		</div>
	</div>

</body>
</html>