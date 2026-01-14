local STATE_FILE = "/tmp/pomodoro.state"

local function rondando()
   local f = io.open(STATE_FILE, "r")
   if f then
      f:close()
      return true
   end
   return false
end


local function start()
   local f = io.open(STATE_FILE, "w")
   
   if not f then
      return 
   end

   f:write("START=".. os.time())

   f:close()
   
end

local function parar()
   os.remove(STATE_FILE)
   
end


local function get_tempoInicial()
   local f = io.open(STATE_FILE, "r")

   if not f then
      return nil
   end

   local line = f:read("*l")
   f:close()


   if not line then
      return nil
   end

   local start = line:match("START=(%d+)")
   return tonumber(start)


end

local function calc_time()
   local start = get_tempoInicial()
   if not start then
      return 0
   end

   return os.time() - start

end

--teste
if not rondando() then
   start()
   print("Iniciado")

else
   local segundos = calc_time()
   parar()
   print("Voce estudou por ".. math.floor(segundos / 60) .. " Minutos")
end
