Fpglappy Bird
===

FPGA implementation of Flappy Bird on the Nexys 4.

### Main Blocks
- Vision Processing
- Game Logic
- Video
- Audio

###Hierarchy of Blocks  
**bold** references files  
*italics* references modules  

(Tip: to get things to show up on the next, line put two empty spaces at the end of the line)

-**fglappy.v** //references all submodules  
---*debouncer* module //debounce switch/button inputs  
---**gamelogic.v** //reference the following 4 modules  
------*gamestate* module //handles different state transitions  
------*physics* module //determines if jump occured while in playstate  
------*highscore* module //saves highest score thus far  
------*timer* module //timer between end of game and highscore display screen  
