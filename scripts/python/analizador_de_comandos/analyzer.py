with open("/home/gabriel/.zsh_history", "r") as f:
    for linha in f:
        if ";" in linha:
            comando = linha.split(";", 1)[1]
            comando = comando.strip()

            partes = comando.split()

            if not partes:
                continue
            if partes[0] == "sudo" and len(partes) > 1:
                print(partes[1])
            else:
                print(partes[0])
            print(comando)


