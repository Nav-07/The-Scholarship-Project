#pragma once
#include <SDL2/SDL.h>
#include <string>

class Window {
private:
public:
    SDL_Window* mWindow;
    SDL_Renderer* mRenderer;
    unsigned int mScreenWidth, mScreenHeight;
    std::string mScreenTitle;
    
    Window(std::string title, unsigned int width, unsigned int height);
    void init();
    void create();
    void clear();
    void show();
    ~Window();
};
