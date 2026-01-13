# System_info.lua

Script simples escrito em **Lua** para mostrar informações básicas do sistema
em ambientes Linux.

Este script foi criado como exercício de estudo e também para uso diário,
principalmente integrado com a **Polybar**.

## informações exibidas
- uso de CPU
- uso de RAM

### uso pelo terminal
```bash
    lua system_info.lua
```

Exemplo de saida: <br>
CPU 12% | RAM 43%


## como eu uso com a polybar
crio o modulo<br>

```
[module/sysinfo]
type = custom/script
exec = lua ~/("caminho aonde voce salvou seu script")
interval = 1

```

# Dependencias
o script utiliza ferramentas padrão do Linux como:<br>
`top`<br>
`free`<br>
`awk`<br>


    