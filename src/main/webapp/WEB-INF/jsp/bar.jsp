<%@ page import="java.util.*" %>
<html>
<head>
<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
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
<div class="panel-heading">
<h2>Patient:${patient.firstName} </h2>
		</div>
<div class="panel-body">
<h4>Disease: ${patient.disease}</h4> <h4> Date :<%= (new java.util.Date()).toLocaleString()%> </h4>
</div>
</div>
<%@ include file="common/footer.jspf"%>
<div id="chartContainer" style="height: 300px; width: 100%;"></div>
</body>
</html>