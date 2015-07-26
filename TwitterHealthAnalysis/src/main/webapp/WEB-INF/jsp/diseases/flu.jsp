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

<title>Flu/Virus Tweet Count</title>
</head>
<body>
	<div class="container">
		<div class="header">
			<ul class="nav nav-pills pull-right" role="tablist">
				<li role="presentation" class="active"><a
					href="home">Home</a></li>
				<li role="presentation"><a href="about">About</a></li>
				<li role="presentation"><a href="contact">Contact</a></li>
			</ul>
			<h3 class="text-muted">Tweet Count on Flu/Virus</h3>
		</div>
	</div>

<div class="container">

<script type="text/javascript">
      		
			$('document').ready( function() {
				$('#mapCounty').on('click', function (e) {					
					$('#flu-map').empty();
					drawChartCounty();				
				});
	      			
				
				$('#mapState').on('click', function (e) {
					$('#flu-map').empty();
					drawChartState();					
				});				
				
			
			});				
				
				google.load("visualization", '1', {packages:['geochart']});      			      		
				google.setOnLoadCallback(drawChartState);
				
				function drawChartState() {
		        	
					var query = new google.visualization.Query(
		            	'https://docs.google.com/spreadsheets/d/1Ob0QvugftvlGS1i79oM4dXGsTvndHHrEv8Z4is5IhKA/edit?usp=sharing');
		        		query.send(handleQueryResponseState);
		      		}
				
				function drawChartCounty() {
		        	var query = new google.visualization.Query(
		            	'https://docs.google.com/spreadsheets/d/1B-fEhDfyQ0CTwZa4ueUtwMi65aE5WQTYbVd1Fp34GnQ/edit?usp=sharing');
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
	      	 	var chart = new google.visualization.GeoChart(document.getElementById('flu-map'));
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
		      	 	var chart = new google.visualization.GeoChart(document.getElementById('flu-map'));
		      	 	chart.draw(data, options); 
		      		  
		      		}
				
</script>
			<div id="flu-map" style="width: 800px; height: 533px;"></div>
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
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">American Red Cross</span><span class="text-muted"> @RedCross</span><span class="text-muted text-right" style="color:#720"> . Jan 11, 2014</span><p><a href="http://twitter.com/redcross/status/422022438990266368" target="_blank"> 5 Things to do when someone you love has the #flu http://t.co/XdCKyxSpqX</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">American Red Cross</span><span class="text-muted"> @RedCross</span><span class="text-muted text-right" style="color:#720"> . Feb 2, 2014 </span><p><a href="http://twitter.com/redcross/status/430113406423924738" target="_blank"> To beat the #flu on #SuperBowl Sunday remember this tip, don't use your hands when dipping in the chips! http://t.co/d6LveMi7yN</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">CDC Flu</span><span class="text-muted"> @CDCFlu</span><span class="text-muted text-right" style="color:#720"> . Jun 3, 2014 </span><p><a href="http://twitter.com/cdcflu/status/473840875119050752" target="_blank"> How #flu vaccines are made: http://t.co/Dh7XM3tVsd</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">CDC</span><span class="text-muted"> @CDCgov</span><span class="text-muted text-right" style="color:#720"> . Feb 21, 2014</span><p><a href="http://twitter.com/cdcgov/status/436971918852636673" target="_blank"> New @CDCMMWR study finds #flu vaccine is working well against #flu. Learn more: http://t.co/3wIwvvRKVM.</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">ABC News</span><span class="text-muted"> @ABC</span><span class="text-muted text-right" style="color:#720"> . Jan 14, 2014</span><p><a href="http://twitter.com/abc/status/423100062827163648" target="_blank"> Join ABC health for a #flu tweet chat today at 1 PM, ET. Use hashtag #abcDRBchat.</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Dr. Mercola</span><span class="text-muted"> @mercola</span><span class="text-muted text-right" style="color:#720"> . Mar 28, 2014</span><p><a href="http://twitter.com/mercola/status/449547418330497024" target="_blank"> How #Exercise Helps Prevent Cold and #Flu http://t.co/Zy2godBxqI</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Richard Besser</span><span class="text-muted"> @DrRichardBesser</span><span class="text-muted text-right" style="color:#720"> . Jan 10, 2014</span><p><a href="http://twitter.com/drrichardbesser/status/421609365255122944" target="_blank"> #Flu is here! This year, it's H1N1 and it's hitting healthy young adults hard.  I'll explain why and what you can do. @GMA</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Dr. Mercola</span><span class="text-muted"> @mercola</span><span class="text-muted text-right" style="color:#720"> . Jan 6, 2014 </span><p><a href="http://twitter.com/mercola/status/420208888789889024" target="_blank"> #Natural Ways to Help Fight Flu | #Flu Season http://t.co/8mTXKTkpaq</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">NBC Charlotte</span><span class="text-muted"> @wcnc</span><span class="text-muted text-right" style="color:#720"> . Apr 7, 2014 </span><p><a href="http://twitter.com/wcnc/status/453312738492575744" target="_blank"> #Flu wrecks @MileyCyrus' Charlotte Concert http://t.co/9hG6ctYEPD http://t.co/3sbHWLLpAB</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">My Postictal State</span><span class="text-muted"> @MyPostictalLife</span><span class="text-muted text-right" style="color:#720"> . Mar 22, 2014</span><p><a href="http://twitter.com/mypostictallife/status/447361866151780352" target="_blank"> Ok #epilepsy friends I still have not resolved the virus issue because I cannot find my operating system disc.  I... http://t.co/Am0CYSR1n0</a></p></pre></li>
				</ul>
			</div>	
			
			<div class="rounded-box">

				<h3 style="text-align: center;">Symptoms of Virus/Flu</h3>
				<ul class="list-group">
					<li class="list-group-item">A cough and/or sore throat.</li>
					<li class="list-group-item">A runny or stuffy nose.</li>
					<li class="list-group-item">Headaches and/or body aches.</li>
					<li class="list-group-item">Nausea, vomiting, and/or diarrhea (most common in children)</li>
					<li class="list-group-item"><a href="http://www.flu.gov/"
						target="_blank">For More Information about Flu/Virus</a>></li>
				</ul>

			</div>
			
			
			
			
		</div>
</body>
</html>