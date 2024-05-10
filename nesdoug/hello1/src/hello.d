import nes;

immutable BLACK = 0x0f;
immutable DK_GY = 0x00;
immutable LT_GY = 0x10;
immutable WHITE = 0x30;

extern (C)
void main()
{
    const(char)* text = "Hello in D!";
    __gshared char[15] palette = 0;
    palette[0] = BLACK;
    palette[1] = DK_GY;
    palette[2] = LT_GY;
    palette[3] = WHITE;

    ppu_off(); // screen off

    pal_bg(&palette); //	load the BG palette

    // set a starting point on the screen
    vram_adr(NTADR_A(10, 14)); // screen is 32 x 30 tiles

    // import std.conv: to;
    for (auto i = 0; i < text[i]; i++)
    {
        vram_put(text[i]); // this pushes 1 char to the screen
    }
    // vram_adr and vram_put only work with screen off
    // NOTE, you could replace everything between i = 0; and here with...
    vram_write(&text, strlen(text));
    // does the same thing

    ppu_on_all(); //	turn on screen

    while (1)
    {
        // infinite loop
        // game code can go here later.
    }
}

import core.stdc.string : strlen;
