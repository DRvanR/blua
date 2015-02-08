package.path = "../vendor/?.lua;" .. package.path

require "DRvanR.Sparse.Trial"

local test = Trial()
local three = test:add(1,2)

ngx.header['X-Are-We-Happy'] = 'why yes, yes we are!';
ngx.header['X-Succes'] = 'sum:' .. three;
ngx.say([[
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="/apple-touch-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/apple-touch-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon-180x180.png">
    <link rel="icon" type="image/png" href="/favicon-32x32.png" sizes="32x32">
    <link rel="icon" type="image/png" href="/android-chrome-192x192.png" sizes="192x192">
    <link rel="icon" type="image/png" href="/favicon-96x96.png" sizes="96x96">
    <link rel="icon" type="image/png" href="/favicon-16x16.png" sizes="16x16">
    <link rel="manifest" href="/android-chrome-manifest.json">
    <meta name="msapplication-TileColor" content="#1d1d1d">
    <meta name="msapplication-TileImage" content="/mstile-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <link type="text/css" rel="stylesheet" href="css/site.css"  media="screen,projection"/>
    <title>DRvanR</title>
</head>
<body>
    <header>
        <nav class="top-nav">
            <div class="container">
                <div class="nav-wrapper">
                    <span class="header-title">Hello World!</span>
                    <a class="button-collapse" href="#" data-activates="nav-mobile">
                        <i class="mdi-navigation-menu"></i>
                    </a>
                </div>
            </div>
            <ul id="nav-mobile" class="side-nav fixed">
                <li class="logo center-align"><a href="/">DRvanR<span class="muted">.com</span></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"><i class="mdi-social-person left"></i>Whoami</a></li>
                <li>
                    <a href="#">
                        <i class="mdi-communication-email left"></i>
                        Leave a Message
                    </a>
                </li>
            </ul>
            </nav>
    </header>
    <main>
        <div class="container">
            <div class="row">
                <div class="col s12 m10 l10 offset-m1 offset-l1 content">
                    <h1>Lispsum!</h1>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris euismod consectetur est, vel vehicula nisl sodales sit amet. Donec luctus pharetra lacus vel rhoncus. Praesent tempus aliquam finibus. Donec lorem nibh, efficitur eget ante vitae, feugiat consectetur neque. Aenean at turpis eros. Donec eu nibh auctor, interdum metus in, sodales tortor. In eget turpis eu arcu interdum dictum non vitae dui. Duis eu lorem at tortor congue ullamcorper vestibulum eu magna. Vestibulum sagittis cursus molestie. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
                    </p>
                    <p>
                        Sed feugiat nulla dolor, nec viverra felis ultrices quis. Nam euismod libero non nisi finibus fringilla. Praesent tincidunt facilisis lectus, imperdiet sollicitudin risus ultricies sed. Nunc mollis fermentum felis, sed aliquam leo sollicitudin vel. Duis consequat dolor ac maximus venenatis. Phasellus imperdiet magna a diam convallis, quis ultricies justo mollis. Nulla nulla augue, vehicula ut convallis semper, bibendum a nibh. Integer blandit, nunc et gravida finibus, neque mi mollis mi, ut commodo magna nulla eu nisl. Nam pulvinar nulla in massa rhoncus, eget sagittis nibh ultricies. Curabitur porta gravida leo, vel commodo lacus gravida eget. Vestibulum scelerisque orci rutrum, laoreet est vel, mollis odio.
                    </p>
                    <pre class="mono">
                        <code class="lua">
local location = {
    foo = "/usr/local/lua/lib/pack1_1.lua",
    goo = "/usr/local/lua/lib/pack1_1.lua",
    foo1 = "/usr/local/lua/lib/pack1_2.lua",
    goo1 = "/usr/local/lua/lib/pack1_3.lua",
}

    pack1 = {}

setmetatable(pack1, {__index = function (t, funcname)
  local file = location[funcname]
  if not file then
    error("package pack1 does not define " .. funcname)
  end
  assert(loadfile(file))()     -- load and run definition
  return t[funcname]           -- return the function
end})

return pack1
                        </code> 
                    </pre>
                    <p>
                        Pellentesque sagittis enim dapibus, pharetra libero nec, lobortis purus. Phasellus venenatis nisi ac eros pretium euismod. Etiam vitae volutpat mi. Sed et eros quis nulla scelerisque egestas ac nec risus. Morbi sagittis tempor vulputate. In finibus vestibulum arcu, lobortis faucibus libero tristique at. Pellentesque hendrerit felis vel nisl pharetra, vitae sollicitudin augue rutrum. Aliquam erat volutpat. Suspendisse vel nibh ac ligula viverra vehicula. Nullam quis lectus turpis. Suspendisse vestibulum nunc non suscipit scelerisque. Nam bibendum turpis cursus, interdum erat ac, scelerisque dolor. Aenean nec mauris eu lorem iaculis accumsan. Curabitur porta lorem vel dignissim condimentum. Morbi ex augue, porta gravida leo id, feugiat ornare risus.
                    </p>
                    <p><a href="#">This is a link</a></p>
                </div>
            </div>
        </div>  
    </main>
    <footer class="page-footer">
        <div class="container">
            <div class="row">
                <div class="col s4">
                    Powered By:
                    <ul>
                        <li><a href="http://openresty.org/" target="_blank">OpenResty</a><li>
                        <li><a href="http://materializecss.com/" target="_blank">Materialize CSS</a><li>
                        <li><a href="https://highlightjs.org/" target="_blank">highlight.js</a><li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-copyright">
            <div class="container">
                &copy; 2015 - Daan van Renterghem, all rights reserved
            </div>
        </div>
    </footer>   
    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="js/materialize.min.js"></script>
    <script type="text/javascript" src="js/site.js"></script>  
    <script type="text/javascript" src="js/highlight.pack.js"></script>  
</body>
</html>
]]);
