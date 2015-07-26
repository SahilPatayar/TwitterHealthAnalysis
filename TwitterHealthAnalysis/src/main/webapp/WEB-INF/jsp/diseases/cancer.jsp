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

<title>Cancer Tweet Count</title>
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
			<h3 class="text-muted">Tweet Count on Cancer</h3>
		</div>

		<div class="container">

<script type="text/javascript">
      		
			$('document').ready( function() {
				$('#mapCounty').on('click', function (e) {					
					$('#cancer-map').empty();
					drawChartCounty();				
				});
	      			
				
				$('#mapState').on('click', function (e) {
					$('#cancer-map').empty();
					drawChartState();					
				});				
				
			
			});				
				
				google.load("visualization", '1', {packages:['geochart']});      			      		
				google.setOnLoadCallback(drawChartState);
				
				function drawChartState() {
		        	
					var query = new google.visualization.Query(
		            	'https://docs.google.com/spreadsheets/d/1dfT1aZLZDMguRKgZOTLVf57WHwaNmqyW9GJ-PKB5rjQ/edit?usp=sharing');
		        		query.send(handleQueryResponseState);
		      		}
				
				function drawChartCounty() {
		        	var query = new google.visualization.Query(
		            	'https://docs.google.com/spreadsheets/d/1i5raMHhUtJZ-86oty9-aUPebYOEgDNZFpqv0uNMgALQ/edit?usp=sharing');
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
	      	 	var chart = new google.visualization.GeoChart(document.getElementById('cancer-map'));
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
		      	 	var chart = new google.visualization.GeoChart(document.getElementById('cancer-map'));
		      	 	chart.draw(data, options); 
		      		  
		      		}
				
</script>

			<div id="cancer-map" style="width: 800px; height: 533px;"></div>
			</div>
			
			<div class="btn-group btn-group-justified" role="group" aria-label="...">
  				<div class="btn-group" role="group">
    				<button id="mapState" type="button" class="btn btn-default">State Map</button>
 	 			</div>
  				
  				<div class="btn-group" role="group">
    				<button id="mapCounty" type="button" class="btn btn-default">County Map</button>
  				</div>  
			</div>
			
			<div class="rounded-box">
				<h3 style="text-align: center;">Top 10 Tweets</h3>
				<ul class="list-group">
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Todd McMillon</span><span class="text-muted"> @McMillonTodd</span><span class="text-muted text-right" style="color:#720"> . May 7, 2014 </span><p><a href="http://twitter.com/mcmillontodd/status/464218210959888384" target="_blank"> http://t.co/8MW7Zgx05P come check us out and help raise awareness! #ProstateCancer #Survivor #awareness http://t.co/VKRQz20EqP</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">ZodiacFact</span><span class="text-muted"> @ZodiacFacts</span><span class="text-muted text-right" style="color:#720"> . May 2, 2014 </span><p><a href="http://twitter.com/zodiacfacts/status/462323448899846144" target="_blank"> A #Cancer is the perfect 10. When you're with a Cancer you will be taken care of for life.</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">TED Talks</span><span class="text-muted"> @TEDTalks</span><span class="text-muted text-right" style="color:#720"> . Feb 13, 2014</span><p><a href="http://twitter.com/tedtalks/status/434039753651257344" target="_blank"> A talk every woman needs to hear: http://t.co/APXrBtwBUM #breastcancer</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Wil Wheaton</span><span class="text-muted"> @wilw</span><span class="text-muted text-right" style="color:#720"> . May 1, 2014 </span><p><a href="http://twitter.com/wilw/status/462072902771556352" target="_blank"> @JeriLRyan Fuck cancer forever.</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Yahoo Sports</span><span class="text-muted"> @YahooSports</span><span class="text-muted text-right" style="color:#720"> . May 2, 2014 </span><p><a href="http://twitter.com/yahoosports/status/462107220634005504" target="_blank"> Reports: Banished #Clippers owner Donald Sterling has cancer --&gt; http://t.co/Sj3nlvRvzf</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">LIVESTRONG</span><span class="text-muted"> @livestrong</span><span class="text-muted text-right" style="color:#720"> . Jun 24, 2014</span><p><a href="http://twitter.com/livestrong/status/481536956460204033" target="_blank"> "Why #skincancer rates continue to increase" | http://t.co/FuBPyi9Y7t via @FoxNews</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Susan G. Komen</span><span class="text-muted"> @SusanGKomen</span><span class="text-muted text-right" style="color:#720"> . Jun 2, 2014 </span><p><a href="http://twitter.com/susangkomen/status/473564128049905664" target="_blank"> We love @GiulianaRancic’s positivity and outlook on life after #breastcancer! via @healthline http://t.co/vICcPuzFtO</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">ZodiacFact</span><span class="text-muted"> @ZodiacFacts</span><span class="text-muted text-right" style="color:#720"> . May 2, 2014 </span><p><a href="http://twitter.com/zodiacfacts/status/462383680770801665" target="_blank"> When a #Cancer is with you they only got eyes for you. A Cancer is extremely loyal to those who appreciate and support them.</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">St. Jude </span><span class="text-muted"> @StJude</span><span class="text-muted text-right" style="color:#720"> . Jun 20, 2014</span><p><a href="http://twitter.com/stjude/status/479999575319539714" target="_blank"> At St. Jude, we won’t give up. We do everything possible to end #childhoodcancer and other deadly diseases. http://t.co/btpZ2TSKHv</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Victor Walker</span><span class="text-muted"> @WalkerLandNet</span><span class="text-muted text-right" style="color:#720"> . Mar 23, 2014</span><p><a href="http://twitter.com/walkerlandnet/status/447853039496749056" target="_blank"> The Charlie Foundation for Ketogenic Therapies #Epilepsy #Brain #Cancer #KetogenicDiet #LowCarb http://t.co/2va01bJpnh</a></p></pre></li>
				</ul>
			</div>
			
			<div class="rounded-box">

				<h3 style="text-align: center;">Symptoms of Cancer</h3>
				<ul class="list-group">
					<li class="list-group-item">Unexplained weight loss</li>
					<li class="list-group-item">Fever, Fatigue and pain</li>
					<li class="list-group-item">Skin changes</li>
					<li class="list-group-item">White patches inside the mouth or white spots on the tongue</li>
					<li class="list-group-item">Change in bowel habits or bladder function</li>
					<li class="list-group-item">Unusual bleeding or discharge</li>
					<li class="list-group-item">Thickening or lump in the breast or other parts of the body</li>
					<li class="list-group-item">Indigestion or trouble swallowing</li>
					<li class="list-group-item">Nagging cough or hoarseness</li>
					<li class="list-group-item"><a href="http://www.cancer.org/" target="_blank">For more information and types of cancer.</a></li>					
					
				</ul>

			</div>
			
			
			
			
</body>
</html>