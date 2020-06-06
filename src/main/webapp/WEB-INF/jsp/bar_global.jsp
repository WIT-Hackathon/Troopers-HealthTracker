<%@ page import="java.util.*" %>
<!DOCTYPE HTML>
<html>
<head>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script type="text/javascript">

window.onload = function () {
	var chart = new CanvasJS.Chart("chartContainer", {
		title:{
			text: "Patients Body Temperature"
		},
		data: [
		{
			type: "column",
			dataPoints: [
			{ label: "Sheldon Cooper",  y: 120  },
           { label: "Amy Fowler", y: 98  },
            { label: "Meg March", y: 108  },
          { label: "Dave John",  y: 110  },
                   { label: "Nick Seaon",  y: 95  }


			]
		}
		]
	});
	chart.render();
	var chart1 = new CanvasJS.Chart("chartContainer1", {
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
                   	chart1.render();

}
</script>
</head>
<body>
<div id="chartContainer" style="height: 300px; width: 100%;"></div>
<div id="chartContainer1" style="height: 300px; width: 100%;"></div>

</body>
</html>