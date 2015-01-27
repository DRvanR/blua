ngx.header['X-Are-We-Happy'] = 'why yes, yes we are!';
ngx.say([[
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="http://fonts.googleapis.com/css?family=Fira+Sans:400,700" rel="stylesheet" type="text/css">
    <link href="/css/main.css" rel="stylesheet" type="text/css">
    <title>DRvanR</title>
</head>
<body>
    <h1 class="gray">Hello World!</h1>
    <p>Now including HTML!</p>
</body>
</html>
]]);
