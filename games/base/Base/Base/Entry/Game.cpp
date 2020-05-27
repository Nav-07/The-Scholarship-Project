#include "Game.hpp"

Game::Game(std::string title) {} // Todo: Handle Title Var
void Game::mLoadTexture(std::string id, std::string file, Window window) {
    SDL_Surface* loadedSurface = IMG_Load(file.c_str());
    SDL_Texture* texture = SDL_CreateTextureFromSurface(window.getRenderer(), loadedSurface);
    mTextures.insert({id,texture});
}
SDL_Texture* Game::mGetTexture(std::string id) {
    return mTextures[id];
}
void Game::mCloseEngine() {
    for (auto& texture : mTextures)
        SDL_DestroyTexture(texture.second);
}
