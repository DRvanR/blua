-- need to work on this...
package.path = "/var/www/drvanr.test/vendor/?.lua;" .. package.path

local Sparse = require "DRvanR.Sparse.Sparse"
local Templating = Sparse:new({root='/var/www/drvanr.test/src/'})

ngx.header['X-Are-We-Happy'] = Templating:parse('why yes, yes we are!');
ngx.say(Templating:load('Blog:Resources:View:index.html'));
