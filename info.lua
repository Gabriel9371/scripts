local function cmd(c)
   local p = io.popen(c)
   local output = p:read("*a")
   p:close()

   return output:gsub("\n$", "") --so quebra linha se estiver no final


   
end


local function get_user()
   local user = cmd("whoami")

   return user
   
end

local function get_system_uptime()
   local time = cmd("uptime -p")

   return time
end



--LC_ALL=C top -bn1 | grep 'Cpu(s)'
local function get_cpu()
   local line = cmd("LC_ALL=C top -bn1 | grep 'Cpu(s)'")
   local idle = line:match("(%d+%.?%d*) id")
   
   if not idle then
      return "?"

   end

   local uso = 100 - tonumber(idle)
   return string.format("%.1f%%", uso)


   
end

local function get_mem()
   local line = cmd("free -b | awk '/Mem/ {print $2, $3}'")
   local total, usado = line:match("(%d+)%s+(%d+)")

   if not total then
      return "?"
   end
   local percent = (tonumber(usado) / tonumber(total)) *100
   return string.format("%.1f%%", percent)

end

print("USER: " .. get_user())
print("UPTIME: " .. get_system_uptime())
print("CPU: ".. get_cpu())
print("RAM: ".. get_mem())
