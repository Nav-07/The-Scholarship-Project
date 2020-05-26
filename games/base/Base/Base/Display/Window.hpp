#pragma once
#include <SDL2/SDL.h>
#include <string>

class Window {
private:
    SDL_Window* mWindow;
    SDL_Renderer* mRenderer;
    unsigned int mScreenWidth, mScreenHeight;
    std::string mTitle;
public:
    Window(std::string title, unsigned int width, unsigned int height);
    void init();
    void create();
    void clear();
    void show();
    void destroy();
    
    SDL_Window* getWindow() { return mWindow; }
    SDL_Renderer* getRenderer() { return mRenderer; }
    unsigned int getWidth() { return mScreenWidth; }
    unsigned int getHeight() { return mScreenHeight; }
    std::string getTitle() { return mTitle; }
};
