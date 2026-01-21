import pygame
import sys

pygame.init()

LARGURA = 800
ALTURA = 600

tela = pygame.display.set_mode((LARGURA, ALTURA))

pygame.display.set_caption("Fisica Fake")

clock = pygame.time.Clock()


while True:
    for evento in pygame.event.get():
        if evento.type == pygame.QUIT:
            pygame.quit()
            sys.exit()
        
    tela.fill((20, 20, 20))
    pygame.display.flip()
    clock.tick(60)