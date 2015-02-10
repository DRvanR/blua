-- need to work on this...
package.path = "/var/www/drvanr.test/vendor/?.lua;" .. package.path

local AppKernel = require "DRvanR.Homer.AppKernel"
local kernel = AppKernel:new()

kernel:handle()
