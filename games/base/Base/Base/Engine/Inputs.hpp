#pragma once
#include <SDL2/SDL.h>

class Inputs {
private:
public:
    void registerEventLoop(SDL_Event e);
    bool isKeyDown(SDL_Scancode key);
};
