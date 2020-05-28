#include "Game.hpp"

static SDL_Event e;
void Game::init() {
    window.init();
    window.create();
    
    isRunning = true;
}
void Game::handleEvents() {}
void Game::update() {
    SDL_PollEvent(&e);
    if (e.type == SDL_QUIT)
        isRunning = false;
}
void Game::render() {
    window.clear();
    window.show();
}
void Game::destroy() {
}
