#include "Game.hpp"

int main(int argc, char* argv[]) {
    Game game;
    game.init();
    while(game.isRunning) {
        game.handleEvents();
        game.update();
        game.render();
    }
    game.destroy();
    return 0;
}
