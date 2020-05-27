#pragma once
#include <SDL2/SDL.h>
#include <string>
#include "../Data Structures/Vector2f.hpp"

typedef void (*EventHandler)();
typedef void (*Render)();
typedef void (*Update)();
class Entity {
public:
    Vector2f mTransforms;
    SDL_Texture* mTexture;
    unsigned int mEntityID;
    std::string mIdentifier;
    bool mVisible;
    
    EventHandler mEventHandlerCallback;
    Render mRenderCallback;
    Update mUpdateCallback;
};
