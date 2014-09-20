
module("luci.controller.limitcpu", package.seeall)

function index()
	require("luci.i18n")
	luci.i18n.loadc("limitcpu")
	if not nixio.fs.access("/etc/config/limitcpu") then
		return
	end
	
	local page = entry({"admin", "system", "limitcpu"}, cbi("limitcpu"), _("LimitCPU"), 66)
	page.i18n = "limitcpu"
	page.dependent = true
	
end
