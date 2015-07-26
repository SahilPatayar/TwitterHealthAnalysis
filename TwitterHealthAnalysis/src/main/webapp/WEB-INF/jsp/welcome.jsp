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


<title>Twitter Health Analysis</title>
</head>
<body>
	<div class="container">
		<div class="header">
			<ul class="nav nav-pills pull-right" role="tablist">
				<li role="presentation" class="active"><a href="home">Home</a></li>
				<li role="presentation"><a href="about">About</a></li>
				<li role="presentation"><a href="contact">Contact</a></li>
			</ul>
			<h3 class="text-muted">Twitter Health Analysis</h3>
		</div>

		<div class="jumbotron">
			<h2>Twitter Health Analysis</h2>			
			 <!-- <p class="lead">How social media reacting to Health</p> -->        
		</div>

		<div class="row marketing">
			<div class="col-lg-6">

				<a href="cancer"><h4>Cancer</h4></a>
				<p>Cancer is the uncontrolled growth of abnormal cells in the
					body. Cancerous cells are also called malignant cells.</p>

				<a href="alzheimer"><h4>Alzheimer</h4></a>
				<p>Dementia is a loss of brain function that occurs with certain
					diseases. Alzheimer's disease (AD), is one form of dementia that
					gradually gets worse over time. It affects memory, thinking, and
					behavior.</p>

				<a href="asthma"><h4>Asthma</h4></a>
				<p>Asthma is a disorder that causes the airways of the lungs to
					swell and narrow, leading to wheezing, shortness of breath, chest
					tightness, and coughing.</p>

				<a href="flu"><h4>Flu/Virus</h4></a>
				<p>Flu/Virus is a respiratory infection caused by a number of
					viruses. The viruses pass through the air and enter your body
					through your nose or mouth. Between 5% and 20% of people in the
					U.S. get the flu each year. The flu can be serious or even deadly
					for elderly people, newborn babies, and people with certain chronic
					illnesses.</p>

				<a href="arthritis"><h4>Arthritis</h4></a>
				<p>Arthritis is inflammation of one or more joints. A joint is
					the area where two bones meet. There are over 100 different types
					of arthritis.</p>

			</div>

			<div class="col-lg-6">
				<a href="diabetes"><h4>Diabetes</h4></a>
				<p>Diabetes is usually a lifelong (chronic) disease in which
					there are high levels of sugar in the blood.</p>

				<a href="tuberculosis"><h4>Tuberculosis</h4></a>
				<p>Pulmonary tuberculosis (TB) is a contagious bacterial
					infection that involves the lungs. It may spread to other organs.</p>

				<a href="obesity"><h4>Obesity/Overweight</h4></a>
				<p>Obesity means having too much body fat. It is not the same as
					being overweight, which means weighing too much. A person may be
					overweight from extra muscle, bone, or water, as well as from
					having too much fat.</p>

				<a href="aids"><h4>HIV/AIDS</h4></a>
				<p>The human immunodeficiency virus is a lentivirus that causes
					the acquired immunodeficiency syndrome, a condition in humans in
					which progressive failure of the immune system allows
					life-threatening opportunistic infections and cancers to thrive.</p>

				<a href="epilepsy"><h4>Epilepsy</h4></a>
				<p>Epilepsy is a brain disorder in which a person has repeated
					seizures (convulsions) over time. Seizures are episodes of
					disturbed brain activity that cause changes in attention or
					behavior.</p>
			</div>
		</div>



	</div>




</body>
</html>