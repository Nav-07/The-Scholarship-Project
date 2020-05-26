#include "Display/Window.hpp"

int main(int argc, char* argv[]) {
    Window window("Test Window", 640, 480);
    window.init();
    window.create();
    
    SDL_Event e;
    bool running = true;
    while (running) {
        SDL_PollEvent(&e);
        switch (e.type) {
            case SDL_QUIT:
                running=false;
                break;
            default:
                break;
        }
        window.clear();
        window.show();
    }
    
    return 0;
}
