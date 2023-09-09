<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jQuery.Marquee/1.5.0/jquery.marquee.min.js"></script>
    <title>Document</title>

    <style>
        html {
            font-size: 10px;
        }

        body {
            color: #231815;
            font-family: system-ui, monospace;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }

        .marquee_text {
            font-size: 6rem;
            font-weight: bold;
            line-height: 7rem;

            position: absolute;
            top: 50%;
            transform: translateY(-50%);
        }

    </style>
</head>
<body>
    <div class="marquee_text">Veer Surendra Sai University Of Technology</div>
</body>

<script>
    $('.marquee_text').marquee({
        span: true,
        direction: 'left',
        duration: 50000,
        gap: 50,
        delayBeforeStart: 0,
        duplicated: true,
        startVisible: true
    });
</script>
</html>