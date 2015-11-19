Fpglappy Bird
===

FPGA implementation of Flappy Bird on the Nexys 4.

### Main Blocks
- Vision Processing
- Game Logic
- Video
- Audio

###Hierarchy of Blocks

-fglappy //references all submodules
---debouncer //debounce switch/button inputs
---gamelogic //reference the following 4 modules
------gamestate //handles different state transitions
------physics //determines if jump occured while in playstate
------highscore //saves highest score thus far
------timer //timer between end of game and highscore display screen
