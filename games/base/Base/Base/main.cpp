#include "Base.hpp"

static SDL_Event e;
static bool running = true;
class Test : public Game {
private:
    Window window;
    Inputs inputs;
public:
    Test(): window(Window("Test", 640, 480)), Game("Game") {
    }
    void init() override {
        window.init();
        window.create();
    }
    void update() override {
        inputs.registerEventLoop(e);
        if (inputs.isKeyDown(SDL_SCANCODE_ESCAPE))
            running = false;
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

    while (running) {
        test.update();
        test.render();
    }
    
    test.destroy();
    return 0;
}
