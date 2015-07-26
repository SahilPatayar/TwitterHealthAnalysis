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

<title>Arthritis Tweet Count</title>
</head>
<body>
	<div class="container">
		<div class="header">
			<ul class="nav nav-pills pull-right" role="tablist">
				<li role="presentation" class="active"><a href="home">Home</a></li>
				<li role="presentation"><a href="about">About</a></li>
				<li role="presentation"><a href="contact">Contact</a></li>
			</ul>
			<h3 class="text-muted">Tweet Count on Arthritis</h3>
		</div>

		<div class="container">

<script type="text/javascript">
      		
			$('document').ready( function() {
				$('#mapCounty').on('click', function (e) {					
					$('#arthritis-map').empty();
					drawChartCounty();				
				});
	      			
				
				$('#mapState').on('click', function (e) {
					$('#arthritis-map').empty();
					drawChartState();					
				});				
				
			
			});				
				
				google.load("visualization", '1', {packages:['geochart']});      			      		
				google.setOnLoadCallback(drawChartState);
				
				function drawChartState() {
		        	
					var query = new google.visualization.Query(
		            	'https://docs.google.com/spreadsheets/d/1mP_Uia1PjQJQrnT91I4CDT5CItAh5vbmQ0RKSdU_AuU/edit?usp=sharing');
		        		query.send(handleQueryResponseState);
		      		}
				
				function drawChartCounty() {
		        	var query = new google.visualization.Query(
		            	'https://docs.google.com/spreadsheets/d/1Qob9VdCobNnlMLbxzKhHA4ucZCXjjDBT2D5d_L5U-3Y/edit?usp=sharing');
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
	      	 	var chart = new google.visualization.GeoChart(document.getElementById('arthritis-map'));
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
		      	 	var chart = new google.visualization.GeoChart(document.getElementById('arthritis-map'));
		      	 	chart.draw(data, options); 
		      		  
		      		}
				
</script>


			<div id="arthritis-map" style="width: 800px; height: 533px; padding-bottom:20px;"></div>
			
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
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Everyday Health</span><span class="text-muted"> @EverydayHealth</span><span class="text-muted text-right" style="color:#720"> . Jun 25, 2014</span><p><a href="http://twitter.com/everydayhealth/status/481902416137564160" target="_blank"> Pool exercises (especially in warm water) can help relieve #arthritis symptoms: http://t.co/fcTsJzBUNL</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Everyday Health</span><span class="text-muted"> @EverydayHealth</span><span class="text-muted text-right" style="color:#720"> . Jun 24, 2014</span><p><a href="http://twitter.com/everydayhealth/status/481457444066185217" target="_blank"> Now is the perfect time to get outside and move those joints! Here are the 7 best summer sports for #arthritis: http://t.co/WfPMyKWmdL</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Medical News Today</span><span class="text-muted"> @mnt</span><span class="text-muted text-right" style="color:#720"> . Jun 20, 2014</span><p><a href="http://twitter.com/mnt/status/480013250579668993" target="_blank"> Could this be a #baldness cure? Arthritis drug helps bald man grow full head of hair: http://t.co/KMSFWvzccp http://t.co/xYhpfcmcPV</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Everyday Health</span><span class="text-muted"> @EverydayHealth</span><span class="text-muted text-right" style="color:#720"> . Jun 1, 2014 </span><p><a href="http://twitter.com/everydayhealth/status/473200058461335553" target="_blank"> 3 Things #Arthritis Patients Wish Their Docs Would Do: http://t.co/9tFN6sWUQC</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Everyday Health</span><span class="text-muted"> @EverydayHealth</span><span class="text-muted text-right" style="color:#720"> . Apr 14, 2014</span><p><a href="http://twitter.com/everydayhealth/status/455885578593378304" target="_blank"> People with rheumatoid arthritis may be at increased risk for kidney disease http://t.co/zYqxfrMZq4 #rheum</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Arthritis NatlResFnd</span><span class="text-muted"> @ArthritisNRF</span><span class="text-muted text-right" style="color:#720"> . May 21, 2014</span><p><a href="http://twitter.com/arthritisnrf/status/469160370360180736" target="_blank"> #CureArthritis from the @ConanOBrien show! Let's raise arthritis awareness! #Conan #rheum #spoonie http://t.co/aempNVpaKM</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Arthritis NatlResFnd</span><span class="text-muted"> @ArthritisNRF</span><span class="text-muted text-right" style="color:#720"> . Jun 12, 2014</span><p><a href="http://twitter.com/arthritisnrf/status/477118032452390913" target="_blank"> When you support #arthritis research this is the IMPACT! #CureArthritis http://t.co/M4jVfKuio5</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Everyday Health</span><span class="text-muted"> @EverydayHealth</span><span class="text-muted text-right" style="color:#720"> . Jun 2, 2014 </span><p><a href="http://twitter.com/everydayhealth/status/473369795891834880" target="_blank"> 6 Herbs and Spices for Rheumatoid Arthritis http://t.co/MYYXVy4I2m #rheum</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Everyday Health</span><span class="text-muted"> @EverydayHealth</span><span class="text-muted text-right" style="color:#720"> . Apr 19, 2014</span><p><a href="http://twitter.com/everydayhealth/status/457437812414218240" target="_blank"> Water exercise for psoriatic #arthritis can help relieve joint pain and stiffness. Here's why: http://t.co/Zs75ceS6g2 #psoriaticarthritis</a></p></pre></li>
					<li class="list-group-item"><pre><span style="color:blue;font-weight:bold;font-size:18px;">Adrienne Koopersmith</span><span class="text-muted"> @ask_koopersmith</span><span class="text-muted text-right" style="color:#720"> . May 26, 2014</span><p><a href="http://twitter.com/ask_koopersmith/status/471046994015043585" target="_blank"> Q of Day: #SeriousBusiness:  Any #PainManagement Support Groups in Chicago?  If so, pl. contact #ASAP. #Hospitals. #OsteoArthritis Thx</a></p></pre></li>
				</ul>
			</div>
			
			<div class="rounded-box">

				<h3 style="text-align: center;">Symptoms of Arthritis</h3>
				<ul class="list-group">
					<li class="list-group-item">Joint pain, Joint tenderness, Joint swelling, Joint redness</li>
					<li class="list-group-item">Stiffness of joints, particularly worse in the morning.</li>
					<li class="list-group-item">Many joints affected (polyarthritis)</li>
					<li class="list-group-item">Both sides of the body affected (symmetric)</li>
					<li class="list-group-item"><a href="http://www.arthritistoday.org/"
						target="_blank">For More Information about Arthritis</a>></li>
				</ul>

			</div>


		</div>
	</div>

</body>
</html>