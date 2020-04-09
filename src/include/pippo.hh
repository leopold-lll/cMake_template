#pragma once
// #ifndef PIPPO
// #define PIPPO
#include <iostream>

using std::cout;

class Pippo{
    private:
        int p;

    public:
        Pippo(){ p=42; }
        Pippo(const int _p){ p=_p; }

        void quo();
};

// #endif