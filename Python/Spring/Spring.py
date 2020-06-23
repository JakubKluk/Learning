import pygame
import sys
import math

weight = 1
elastic = 0.4
damping = 0.3
FPS = 30
gravity = 9.81
step = 0.1
stretch = 10

# weight, elastic and damping are the coefficients of the differential equation describing
# the move of the mass on the spring
# step is used in Euler's Method to solve the equation
# pressing "s" while program is running will stretch the spring down by the value of "stretch"
# pressing "d" while program is running will add gravity, pressing "a" will
# subtract gravity


class Board:
    def __init__(self, width: int, height: int, color):
        self.board = pygame.display.set_mode((width, height))
        self.board.fill(color)
        self.color = color

    def draw(self, *args):
        self.board.fill(self.color)
        for drawable in args:
            drawable.draw_on(self.board)

        pygame.display.flip()


class Main:
    def __init__(self, width: int, height: int, color, FPS: int):
        pygame.init()
        self.board = Board(width, height, color)
        self.clock = pygame.time.Clock()
        self.FPS = FPS

    def run(self):

        line = Spring(500, 150, 200, (204, 102, 0), weight, elastic, damping)

        while True:

            for event in pygame.event.get():
                if event.type == pygame.QUIT:
                    sys.exit(0)

            keys = pygame.key.get_pressed()

            if keys[pygame.K_d]:
                line.align_force(gravity)

            if keys[pygame.K_a]:
                line.align_force(-gravity)

            if keys[pygame.K_s]:
                line.stretch(stretch)

            line.change_position(step)
            self.board.draw(line)
            self.clock.tick(self.FPS)


class Spring:

    def __init__(self, pos_x: int, pos_y: int, length: int, color, weight: float, elasticity: float, damping: float):
        self.color = color
        self.pos_x = pos_x
        self.pos_y = pos_y
        self.end_y = pos_y+length
        self.length = length
        self.weight = weight
        self.elasticity = elasticity
        self.damping = damping
        self.force = 0
        self.y = 0

    def draw_on(self, board: Board):
        pygame.draw.line(board, self.color, (self.pos_x, self.pos_y), (self.pos_x, self.end_y), 5)
        pygame.draw.circle(board, self.color, (self.pos_x, int(self.end_y)), 15)

    def change_position(self, step: float):
        temp = self.end_y
        self.end_y = self.end_y + step*self.y
        self.y = self.y + step*(self.force - self.elasticity*(temp-self.pos_y-self.length)/self.weight -
                                self.damping*self.y/self.weight)

    def stretch(self, value: int):
        self.end_y += value

    def align_force(self, value: float):
        self.force += value


main = Main(1000, 800, (192, 192, 192), FPS)
main.run()
