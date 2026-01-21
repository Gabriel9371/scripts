import pygame
import sys

pygame.init()

LARGURA = 800
ALTURA = 600

tela = pygame.display.set_mode((LARGURA, ALTURA))

pygame.display.set_caption("Fisica Fake")

clock = pygame.time.Clock()


x = 400
y = 300

raio = 10




vx = 3
vy = 2



#Teste
gravidade = 0.4

while True:
    for evento in pygame.event.get():
        if evento.type == pygame.QUIT:
            pygame.quit()
            sys.exit()
        
    tela.fill((20, 20, 20))

    x += vx

    vy+= gravidade
    y += vy
    if x - raio <= 0 or x + raio >= LARGURA:
        vx = -vx
    if y - raio <= 0 or y + raio >= LARGURA:
        vy = -vy

    if y + raio >= ALTURA:
        y = ALTURA -raio
        vy = -vy * 0.8



    pygame.draw.circle(tela, (200,200,200), (int(x), int(y)), raio)
    pygame.display.flip()
    clock.tick(60)