#include "Inputs.hpp"

static const Uint8* keyboardState = SDL_GetKeyboardState(0);
void Inputs::registerEventLoop(SDL_Event e) {
    SDL_PollEvent(&e);
}
bool Inputs::isKeyDown(SDL_Scancode key) {
    if (keyboardState != 0) {
        if (keyboardState[key] != 0)
            return true;
        else
            return false;
    } else {
        return false;
    }
}
