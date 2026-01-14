# NetCheck

Script simples em **lua** pra verificar rapidamente se o sistema esat conectado a internte. Fis pra uso na polybar

---

## Objetivo
Resolver um problema comum no meu setup i3wm + polybar:
descobrir se o computador esta connectado a internet

---

## Uso no terminal

```bash
    chmod +x net.lua
    lua net.lua
```

modulo na polybar:
```
[module/netcheck]
type = custom/script
exec = lua ~/.config/scripts/lua/netcheck/net.lua
interval = 4
```