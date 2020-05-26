#pragma once
#include <SDL2/SDL.h>
#include <SDL2/SDL_image.h>
#include <string>
#include <map>

// The Imports for the Engine
#include "../Display/Window.hpp"

/*
This class basically is a framework for the game itself and combines all the elements of the game engine and also allows the user to create textures and entities much easily.
*/
class Game {
private:
public:
    Game(std::string title);
    virtual void init() {}
    virtual void render() {}
    virtual void update() {}
    virtual void handleEvents() {}
    virtual void destroy() {}
protected:
    std::map<std::string, SDL_Texture*> mTextures;
    
    void mLoadTexture(std::string id, std::string file, Window window);
    SDL_Texture* mGetTexture(std::string id);
    
    void mCloseEngine();
};
