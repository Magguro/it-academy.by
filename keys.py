#
#   Created by Igor Nemkovich
#   2021
#
#   Project name:keys

import sys

import pygame

def run_game():
    #Initialize game and create a screen object.
    pygame.init()
    screen = pygame.display.set_mode((1200,800))
    pygame.display.set_caption("Keys")
    while True:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                sys.exit()
            elif event.type == pygame.KEYDOWN:
                print(event)
        pygame.display.flip()

run_game()