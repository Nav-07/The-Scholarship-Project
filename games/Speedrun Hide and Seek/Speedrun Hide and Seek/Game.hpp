#pragma once
#include <SDL2/SDL.h>
#include <string>
#include <map>
#include "Engine/Window.hpp"

class Game {
private:
    std::map<std::string, SDL_Texture*> mTextures;
    
    void loadTexture(std::string file, std::string id);
    void destroyTextures();
public:
    Game() {  }
    void init();
    void handleEvents();
    void update();
    void render();
    void destroy();
};
