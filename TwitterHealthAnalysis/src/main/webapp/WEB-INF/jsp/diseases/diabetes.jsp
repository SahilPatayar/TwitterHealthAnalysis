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

<title>Diabetes Tweet Count</title>
</head>
<body>
	<div class="container">
		<div class="header">
			<ul class="nav nav-pills pull-right" role="tablist">
				<li role="presentation" class="active"><a href="home">Home</a></li>
				<li role="presentation"><a href="about">About</a></li>
				<li role="presentation"><a href="contact">Contact</a></li>
			</ul>
			<h3 class="text-muted">Tweet Count on Diabetes</h3>
		</div>

		<div class="container">

<script type="text/javascript">
      		
			$('document').ready( function() {
				$('#mapCounty').on('click', function (e) {					
					$('#diabetes-map').empty();
					drawChartCounty();				
				});
	      			
				
				$('#mapState').on('click', function (e) {
					$('#diabetes-map').empty();
					drawChartState();					
				});				
				
			
			});				
				
				google.load("visualization", '1', {packages:['geochart']});      			      		
				google.setOnLoadCallback(drawChartState);
				
				function drawChartState() {
		        	
					var query = new google.visualization.Query(
		            	'https://docs.google.com/spreadsheets/d/1Lb7p6f4zL89PtLpLJtG2pjwvc5CC-GRLxtxtXJpO-6c/edit?usp=sharing');
		        		query.send(handleQueryResponseState);
		      		}
				
				function drawChartCounty() {
		        	var query = new google.visualization.Query(
		            	'https://docs.google.com/spreadsheets/d/1aLUvCOvXnMmcBtbEouRLJbLX02Y4x6Vfnj5iZ6V-gQU/edit?usp=sharing');
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
	      	 	var chart = new google.visualization.GeoChart(document.getElementById('diabetes-map'));
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
		      	 	var chart = new google.visualization.GeoChart(document.getElementById('diabetes-map'));
		      	 	chart.draw(data, options); 
		      		  
		      		}
				
</script>

			<div id="diabetes-map" style="width: 800px; height: 533px; padding-bottom:20px;"></div>
			
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
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">The Guardian</span><span class="text-muted"> @guardian</span><span class="text-muted text-right" style="color:#720"> . Jan 14, 2014</span><p><a href="http://twitter.com/guardian/status/423111605459898368" target="_blank"> A third of the population of the US state of Mississippi will have #diabetes by 2030, doctor warns http://t.co/vmQa9umFWs</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">David Perlmutter, MD</span><span class="text-muted"> @DavidPerlmutter</span><span class="text-muted text-right" style="color:#720"> . Jan 28, 2014</span><p><a href="http://twitter.com/davidperlmutter/status/428141205558292480" target="_blank"> Diabetes gets a new name! http://t.co/mlV2sRBaC3 #grainbrain #diabetes</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Amer. Diabetes Assn.</span><span class="text-muted"> @AmDiabetesAssn</span><span class="text-muted text-right" style="color:#720"> . Feb 28, 2014</span><p><a href="http://twitter.com/amdiabetesassn/status/439471224691752960" target="_blank"> Fact Check Friday! Each week we share an important fact. Today: #diabetes and #hearingloss #FridayFact http://t.co/5Df29u19XQ</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Susan</span><span class="text-muted"> @momwithdiabetes</span><span class="text-muted text-right" style="color:#720"> . Mar 2, 2014 </span><p><a href="http://twitter.com/momwithdiabetes/status/440113666214477824" target="_blank"> @blogdokter Check out this hot #diabetes PSA, we hope this will helps bring awareness, please share and RT http://t.co/ba7pPrFRZg</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Everyday Health</span><span class="text-muted"> @EverydayHealth</span><span class="text-muted text-right" style="color:#720"> . Mar 11, 2014</span><p><a href="http://twitter.com/everydayhealth/status/443543002712375296" target="_blank"> Avoid These #Diabetes Breakfast Mistakes http://t.co/rQMyJC9zWt</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Everyday Health</span><span class="text-muted"> @EverydayHealth</span><span class="text-muted text-right" style="color:#720"> . Jun 25, 2014</span><p><a href="http://twitter.com/everydayhealth/status/481922781937172480" target="_blank"> We are so excited to partner with @YO_RANDYJACKSON to raise awareness about #diabetes! http://t.co/rAFgK1awoP http://t.co/7jdK44JJax</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">KidsHealth</span><span class="text-muted"> @KidsHealth</span><span class="text-muted text-right" style="color:#720"> . Mar 21, 2014</span><p><a href="http://twitter.com/kidshealth/status/447010284440657920" target="_blank"> #Diabetes Facts and Myths http://t.co/Nn5eh7WBgi</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Dr. Mercola</span><span class="text-muted"> @mercola</span><span class="text-muted text-right" style="color:#720"> . Jun 5, 2014 </span><p><a href="http://twitter.com/mercola/status/474551853821476864" target="_blank"> 'Perfect Storm' of Inflammation Promotes #Diabetes http://t.co/prWA8xmqrK</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Everyday Health</span><span class="text-muted"> @EverydayHealth</span><span class="text-muted text-right" style="color:#720"> . Mar 20, 2014</span><p><a href="http://twitter.com/everydayhealth/status/446577252516769792" target="_blank"> The Best Fruits For a #Diabetes Diet http://t.co/X9Q6GWTlWB</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Holistic Hope FL</span><span class="text-muted"> @holistichopefl</span><span class="text-muted text-right" style="color:#720"> . Mar 13, 2014</span><p><a href="http://twitter.com/holistichopefl/status/444285765527560192" target="_blank"> 22% and 15% cbd hemp oils will be back in stock tomorrow!!! #epilepsy #epilepsyawareness #diabetes… http://t.co/sj9rtjz3yA</a></p></pre></li>		
				</ul>
			</div>
			
			<div class="rounded-box">

				<h3 style="text-align: center;">Symptoms of Diabetes</h3>
				<ul class="list-group">
					<li class="list-group-item">Frequent urination</li>
					<li class="list-group-item">Excessive thirst</li>
					<li class="list-group-item">Increased hunger</li>
					<li class="list-group-item">Weight loss</li>
					<li class="list-group-item">Tiredness</li>
					<li class="list-group-item">Lack of interest and concentration</li>
					<li class="list-group-item">A tingling sensation or numbness
						in the hands or feet</li>
					<li class="list-group-item">Blurred vision</li>
					<li class="list-group-item">Frequent infections</li>
					<li class="list-group-item">Slow-healing wounds</li>
					<li class="list-group-item">Vomiting and stomach pain (often
						mistaken as the flu)</li>
					<li class="list-group-item"><a href="http://www.idf.org/"
						target="_blank">For More Information about Diabetes</a>></li>
				</ul>

			</div>


		</div>
	</div>

</body>
</html>