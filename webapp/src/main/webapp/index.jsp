<html>
	<head>
		<title>Jenkins Deployment</title>
	</head>
	<body>
		<h1>Hello World from my Tomcat Server!</h1>
		<br>
		<button id="jobButton">Run Job</button>
		<script type="text/javascript">
          document.getElementById("jobButton").addEventListener("click", ()=>{
            window.open =
            "http://localhost:8080/job/TomcatButtonDeployment/build?token=111aa57c65be6a560e007a9f84dbbd96d7";
          })
        </script>
	</body>
</html>
