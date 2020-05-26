#include "Base.hpp"

class Test : public Game {
private:
    Window window;
public:
    Test(): window(Window("Test", 640, 480)), Game("Game") {
    }
    void init() override {
        window.init();
        window.create();
    }
    void render() override {
        window.clear();
        window.show();
    }
    void destroy() override {
        window.destroy();
        mCloseEngine();
    }
};

int main(int argc, char* argv[]) {
    Test test;
    test.init();
    
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
        };
    }
    
    test.destroy();
    return 0;
}
