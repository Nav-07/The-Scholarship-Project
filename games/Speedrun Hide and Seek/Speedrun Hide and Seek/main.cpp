#include <string>
#include <cmath>
#include <SDL2/SDL.h>

int main(int argc, char* argv[]) {
    SDL_Window* window;
    SDL_Renderer* renderer;
    SDL_Event e;
    bool isRunning = false;
    const int SCREEN_WIDTH = 640, SCREEN_HEIGHT = 480;
    const std::string SCREEN_TITLE = "Speedrun Hide and Seek";
    
    SDL_Init(SDL_INIT_EVERYTHING);
    window = SDL_CreateWindow(SCREEN_TITLE.c_str(), SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_SHOWN);
    renderer = SDL_CreateRenderer(window, -1, 0);
    isRunning = true;
    
    while (isRunning) {
        SDL_PollEvent(&e);
        if (e.type == SDL_QUIT)
            isRunning = false;
        SDL_RenderClear(renderer);
        
        SDL_RenderPresent(renderer);
    }
    
    SDL_DestroyWindow(window);
    SDL_DestroyRenderer(renderer);
    SDL_Quit();
    return 0;
}
