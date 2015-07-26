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

<title>Obesity Tweet Count</title>
</head>
<body>
	<div class="container">
		<div class="header">
			<ul class="nav nav-pills pull-right" role="tablist">
				<li role="presentation" class="active"><a href="home">Home</a></li>
				<li role="presentation"><a href="about">About</a></li>
				<li role="presentation"><a href="contact">Contact</a></li>
			</ul>
			<h3 class="text-muted">Tweet Count on Obesity</h3>
		</div>

		<div class="container">

<script type="text/javascript">
      		
			$('document').ready( function() {
				$('#mapCounty').on('click', function (e) {					
					$('#obesity-map').empty();
					drawChartCounty();				
				});
	      			
				
				$('#mapState').on('click', function (e) {
					$('#obesity-map').empty();
					drawChartState();					
				});				
				
			
			});				
				
				google.load("visualization", '1', {packages:['geochart']});      			      		
				google.setOnLoadCallback(drawChartState);
				
				function drawChartState() {
		        	
					var query = new google.visualization.Query(
		            	'https://docs.google.com/spreadsheets/d/1lKRGuBTHuGdotpFauToH2ZwiWjmA4d3pl-DAeG3TRV0/edit?usp=sharing');
		        		query.send(handleQueryResponseState);
		      		}
				
				function drawChartCounty() {
		        	var query = new google.visualization.Query(
		            	'https://docs.google.com/spreadsheets/d/1MneKOrZyNQ1ZO9qT7EbbBi8B--DN42pkSxcK_QSIu-A/edit?usp=sharing');
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
	      	 	var chart = new google.visualization.GeoChart(document.getElementById('obesity-map'));
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
		      	 	var chart = new google.visualization.GeoChart(document.getElementById('obesity-map'));
		      	 	chart.draw(data, options); 
		      		  
		      		}
				
</script>

			<div id="obesity-map" style="width: 800px; height: 533px; padding-bottom:20px;"></div>
			
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
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">HIGH TIMES</span><span class="text-muted"> @HIGH_TIMES_Mag</span><span class="text-muted text-right" style="color:#720"> . Jun 4, 2014 </span><p><a href="http://twitter.com/high_times_mag/status/474172678262489088" target="_blank"> Watch: How #Marijuana Can Help #Obesity  http://t.co/OY1WUweyOz</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">KidsHealth</span><span class="text-muted"> @KidsHealth</span><span class="text-muted text-right" style="color:#720"> . Jun 13, 2014</span><p><a href="http://twitter.com/kidshealth/status/477431023500668928" target="_blank"> Dealing With Feelings When You're #Overweight. Great article for #teens. http://t.co/7t2wUE98Xm</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">The Lancet</span><span class="text-muted"> @TheLancet</span><span class="text-muted text-right" style="color:#720"> . May 31, 2014</span><p><a href="http://twitter.com/thelancet/status/472760444436762625" target="_blank"> Nearly one quarter of the world's children are #overweight. Read our #obesity paper here http://t.co/kwl2Kg8Iiv http://t.co/swZVvi937e</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Amanda Taylor</span><span class="text-muted"> @mandipie4u</span><span class="text-muted text-right" style="color:#720"> . Jun 26, 2014</span><p><a href="http://twitter.com/mandipie4u/status/482198347923484672" target="_blank"> Being #overweight gave me Super Powers! One of my favorite posts of all time. #TBT http://t.co/11JQiSY3Wl #weightloss #diet  #dieting</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">KidsHealth</span><span class="text-muted"> @KidsHealth</span><span class="text-muted text-right" style="color:#720"> . Jan 22, 2014</span><p><a href="http://twitter.com/kidshealth/status/426104233407295488" target="_blank"> 1 out of 3 U.S. kids are considered #overweight or #obese. Find out how to overcome this in your own family. http://t.co/bqf0WlDDBn</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">RWJF News</span><span class="text-muted"> @RWJF</span><span class="text-muted text-right" style="color:#720"> . May 30, 2014</span><p><a href="http://twitter.com/rwjf/status/472375321757761537" target="_blank"> Finally, Alabama has some good news around #childhoodobesity: improved nutritional standards in schools. http://t.co/eu4f2DHsLf</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">SCPHRP </span><span class="text-muted"> @SCPHRP</span><span class="text-muted text-right" style="color:#720"> . Jun 9, 2014 </span><p><a href="http://twitter.com/scphrp/status/476035184660602880" target="_blank"> Product placement #obesity http://t.co/1TgPK3kvij</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Dave Zinczenko</span><span class="text-muted"> @DaveZinczenko</span><span class="text-muted text-right" style="color:#720"> . Jun 28, 2014</span><p><a href="http://twitter.com/davezinczenko/status/482957886167846912" target="_blank"> HEALTH MYTH: Diet soda isn’t better. A can/day doubles your #obesity risk. It’s great for getting rust off a shovel though.</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">The Stream</span><span class="text-muted"> @AJStream</span><span class="text-muted text-right" style="color:#720"> . Jan 3, 2014 </span><p><a href="http://twitter.com/ajstream/status/419163508584886272" target="_blank"> #Obesity has increased drastically worldwide over 30 years, according to a recent report. http://t.co/0fYx62V3hg http://t.co/pbHaOzIr2x</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Herbert Guy</span><span class="text-muted"> @Guyherbal</span><span class="text-muted text-right" style="color:#720"> . Feb 6, 2014 </span><p><a href="http://twitter.com/guyherbal/status/431487315643359232" target="_blank"> Epilepsy drug also decreased obesity-related blood sugar levels. http://t.co/bh71lHOSyV #epilepsy #obesity #sugar #liverfailure</a></p></pre></li>
				</ul>
			</div>	
			
			<div class="rounded-box">

				<h3 style="text-align: center;">Symptoms of Obesity</h3>
				<ul class="list-group">
					<li class="list-group-item">breathing disorders (e.g., sleep apnea, chronic obstructive pulmonary disease)</li>
					<li class="list-group-item">coronary artery (heart) disease</li>
					<li class="list-group-item">high blood pressure, high cholesterol</li>
					<li class="list-group-item">certain types of cancers (e.g., prostate and bowel cancer in men, breast and uterine cancer in women)</li>
					<li class="list-group-item">coronary artery (heart) disease depression</li>
					<li class="list-group-item"><a href="http://www.obesity.org/"
						target="_blank">For More Information about Obesity</a>></li>
				</ul>

			</div>


		</div>
	</div>

</body>
</html>