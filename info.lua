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

local function get_datePower()
   local time = cmd("uptime -p")

   return time
end

print("USER: " .. get_user())
print("UPTIME: " .. get_datePower())
