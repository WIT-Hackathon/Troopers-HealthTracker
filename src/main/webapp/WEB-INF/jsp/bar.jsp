<%@ page import="java.util.*" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Health Track</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

<script type="text/javascript">

window.onload = function () {
	var chart = new CanvasJS.Chart("chartContainer", {
		title:{
			text: "Hourly Body Temperature"
		},
		data: [
		{
			type: "column",
			dataPoints: [
				{ label: "9:00 AM",  y: 102  },
				{ label: "10:00 AM", y: 98  },
				{ label: "12:00 PM", y: 108  },
				{ label: "2:00 PM",  y: 110  },
				{ label: "4:00 PM",  y: 98  },
				{ label: "6:00 PM",  y: 120  },
				{ label: "8:00 PM",  y: 108  },
				{ label: "10:00 PM",  y: 109  }

			]
		}
		]
	});
	chart.render();
}
</script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Health Track</a><p1>.</p1>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/">Home</a></li>
    </ul>
  </div>
</nav>
<div class="container">
  <h3>Patient:${patient.firstName} </h3>
<h4>Symptom: ${patient.disease}</h4> <h4> Date :<%= (new java.util.Date()).toLocaleString()%> </h4>
</div>
<div id="chartContainer" style="height: 300px; width: 100%;"></div>
<div class="footer"> </div>
</body>
</html>