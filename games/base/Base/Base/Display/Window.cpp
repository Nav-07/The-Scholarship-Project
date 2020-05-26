#include "Window.hpp"

Window::Window(std::string title, unsigned int width, unsigned int height) {
    this->mTitle = title;
    this->mScreenWidth = width;
    this->mScreenHeight = height;
}
void Window::init() {
    SDL_Init(SDL_INIT_EVERYTHING);
}
void Window::create() {
    mWindow = SDL_CreateWindow(mTitle.c_str(), SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, mScreenWidth, mScreenHeight, SDL_WINDOW_SHOWN);
    mRenderer = SDL_CreateRenderer(mWindow, -1, 0);
}
void Window::clear() {
    SDL_RenderClear(mRenderer);
}
void Window::show() {
    SDL_RenderPresent(mRenderer);
}
void Window::destroy() {
    SDL_DestroyWindow(mWindow);
    SDL_DestroyRenderer(mRenderer);
}
