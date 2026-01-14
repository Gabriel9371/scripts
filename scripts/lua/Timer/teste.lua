local ARQ = "tt.txt"

local function timer()
   local texTime = io.open(ARQ, "r")

   if texTime then
      texTime:close()
      return true

   end
   return false
   
end

local function escrever()

   local texT = io.open(ARQ, "w")
   
   if not texT then
      return 
   end

   texT:write(os.time())

   texT:close()   

   
end

local function mostrar() 
   
   if timer() then
      local teste = io.open(ARQ, "r")
      local conteudo = teste:read("*a")
      teste:close()

      local inicio = tonumber(conteudo)
      local agora = os.time()
      local diff = agora - inicio

      print("se passaram ".. diff .." segundos")

   else
      error("Erro ao ler o arquivo :(")
   end
end

if timer() then
   mostrar()

else 
   escrever()
   print("Iniciado")
end




