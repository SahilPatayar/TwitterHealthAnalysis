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

<title>AIDS/HIV Tweet Count</title>
</head>
<body>
	<div class="container">
		<div class="header">
			<ul class="nav nav-pills pull-right" role="tablist">
				<li role="presentation" class="active"><a href="home">Home</a></li>
				<li role="presentation"><a href="about">About</a></li>
				<li role="presentation"><a href="contact">Contact</a></li>
			</ul>
			<h3 class="text-muted">Tweet Count on AIDS/HIV</h3>
		</div>

		<div class="container">

<script type="text/javascript">
      		
			$('document').ready( function() {
				$('#mapCounty').on('click', function (e) {					
					$('#aids-map').empty();
					drawChartCounty();				
				});
	      			
				
				$('#mapState').on('click', function (e) {
					$('#aids-map').empty();
					drawChartState();					
				});				
				
			
			});				
				
				google.load("visualization", '1', {packages:['geochart']});      			      		
				google.setOnLoadCallback(drawChartState);
				
				function drawChartState() {
		        	
					var query = new google.visualization.Query(
		            	'https://docs.google.com/spreadsheets/d/1iU7APjWEsaAVlGmphxmSV0UlYApZ2GZq9PP38Xcewu8/edit?usp=sharing');
		        		query.send(handleQueryResponseState);
		      		}
				
				function drawChartCounty() {
		        	var query = new google.visualization.Query(
		            	'https://docs.google.com/spreadsheets/d/1KD7RcYDTMCCJjuVqJGrcq7-lRSzuS_wI7RhpgDNF7TY/edit?usp=sharing');
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
	      	 	var chart = new google.visualization.GeoChart(document.getElementById('aids-map'));
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
		      	 	var chart = new google.visualization.GeoChart(document.getElementById('aids-map'));
		      	 	chart.draw(data, options); 
		      		  
		      		}
				
</script>

			<div id="aids-map" style="width: 800px; height: 533px; padding-bottom:20px;"></div>
			
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
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Robin van Persie</span><span class="text-muted"> @Persie_Official</span><span class="text-muted text-right" style="color:#720"> . Jun 10, 2014</span><p><a href="http://twitter.com/persie_official/status/476530254547529728" target="_blank">I support the @UNAIDS #ProtectTheGoal campaign to raise global awareness of #HIV http://t.co/JeF3v290Gq</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">morningmika</span><span class="text-muted"> @morningmika</span><span class="text-muted text-right" style="color:#720"> . May 2, 2014 </span><p><a href="http://twitter.com/morningmika/status/462340300074393600" target="_blank"> Thank u for a happy happy 4th #hives http://t.co/thVjLXxGMe</a></p></pre></li>					
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Anderson Cooper 360°</span><span class="text-muted"> @AC360</span><span class="text-muted text-right" style="color:#720"> . May 13, 2014</span><p><a href="http://twitter.com/ac360/status/466372616933376000" target="_blank"> "The stigma is still there, we’ve been fighting it for years" @MagicJohnson on people living with #HIV &amp; #AIDS. http://t.co/0qi2RxixZm</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Gates Foundation</span><span class="text-muted"> @gatesfoundation</span><span class="text-muted text-right" style="color:#720"> . Dec 18, 2013</span><p><a href="http://twitter.com/gatesfoundation/status/413381031023349760" target="_blank"> How the US helped fight the global #AIDS epidemic: http://t.co/7Dvt3WMsJ5</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Gates Foundation</span><span class="text-muted"> @gatesfoundation</span><span class="text-muted text-right" style="color:#720"> . Jun 17, 2014</span><p><a href="http://twitter.com/gatesfoundation/status/479077348512641024" target="_blank"> "My teacher taught my class about #HIV and now they play with me." Powerful story. http://t.co/30E2qMbvQN</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">amfAR</span><span class="text-muted"> @amfAR</span><span class="text-muted text-right" style="color:#720"> . May 24, 2014</span><p><a href="http://twitter.com/amfar/status/470337095278411776" target="_blank"> We're proud to partner with @HBO for the premiere of #TheNormalHeart on May 25: http://t.co/r0VCRaTL7d #HIV #AIDS http://t.co/SGnK7IjJbA</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Rashayne Johnson</span><span class="text-muted"> @ForeverRashayne</span><span class="text-muted text-right" style="color:#720"> . Jun 27, 2014</span><p><a href="http://twitter.com/foreverrashayne/status/482500640531550208" target="_blank"> @RickeySmiley can you please remind your listeners that today is National HIV Testing Day and  to #gettested Thank you #knowyourstatus #HIV</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Gates Foundation</span><span class="text-muted"> @gatesfoundation</span><span class="text-muted text-right" style="color:#720"> . Dec 19, 2013</span><p><a href="http://twitter.com/gatesfoundation/status/413802289401716736" target="_blank"> This is our best bet for fighting #AIDS, #TB, and #malaria: http://t.co/3giNY7vbXq</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">United Nations</span><span class="text-muted"> @UN</span><span class="text-muted text-right" style="color:#720"> . May 11, 2014</span><p><a href="http://twitter.com/un/status/465582353919012864" target="_blank"> Ban Ki-moon supports the @UNAIDS #ProtecttheGoal campaign. Don't let #AIDS score! http://t.co/G5TTn08f1f http://t.co/8ure8yKY5T</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">My Postictal State</span><span class="text-muted"> @MyPostictalLife</span><span class="text-muted text-right" style="color:#720"> . Mar 19, 2014</span><p><a href="http://twitter.com/mypostictallife/status/446293809031553024" target="_blank"> Follow me on Twitter @MyPostictalLife  Do it or Else :-)
#BecauseISaidSo #SUDEP #epilepsy #findacure #notalone... http://t.co/gP6K2PNHxK</a></p></pre></li>
				</ul>			
			</div>
			
			<div class="rounded-box">
				<h3 style="text-align: center;">Symptoms of AIDS/HIV</h3>
				<ul class="list-group">
					<li class="list-group-item">Frequent fevers and sweats.</li>
					<li class="list-group-item">Persistent or frequent yeast infections.</li>
					<li class="list-group-item">Persistent skin rashes or flaky skin.</li>
					<li class="list-group-item">Short-term memory loss.</li>
					<li class="list-group-item">Mouth, genital, or anal sores from herpes infections.</li>
					<li class="list-group-item"><a href="http://www.aids.gov/" target="_blank">For More Information about AIDS/HIV</a>></li>
				</ul>			
			</div>

		</div>
	</div>

</body>
</html>