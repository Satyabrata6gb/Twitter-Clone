<html>
<body>
    USER IS TRYING TO LOGIN AT!
    <br>
    <div id = "time">

    </div>

    <br>
    <br>

    <div>
        <marquee> Made with Love By Satyabrata </marquee>
    </div>

    <script type = "text/javascript">
        function updateTime(){
            document.getElementById("time").innerText = new Date().toString();
        }

        setInterval(updateTime, 1000);
    </script>
</body>
</html>