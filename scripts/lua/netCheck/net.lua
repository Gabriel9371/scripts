local function is_online()
    local ok = os.execute("ping -c 1 -W 1 1.1.1.1 > /dev/null 2>&1") -- "-c 1" pra enviar apenas um pacote, 1.1.1.1 <- dns cloud flare :)
    --> /dev/null 2>&1 solução que peguei com chatgpt, serve pra esconder a saida padrão, 2>&1 esconde as menssagens de erro.
    if ok then
        return ok == true
    end
    
end

if is_online() then
    print("󱚽 NET: ON")
    
else
    print(" you are not connected ")
end