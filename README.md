# Game of Life

Meets all the following requirements:

- A cell can be made "alive"

- A cell can be "killed"

- A cell with fewer than two live neighbours dies of under-population

- A cell with 2 or 3 live neighbours lives on to the next generation

- A cell with more than 3 live neighbours dies of overcrowding

- An empty cell with exactly 3 live neighbours "comes to life"

- The board should wrap

*Currently still refactoring the cell checker code*

### Installation

Written in Ruby 2.5.1


### How to run
Currently the this Game of Life runs within the terminal using the gem Curses to display characters on the board.

In the game root of the directory enter:

`ruby game_of_life.rb`

If you wish to change the board size change the integer arguments concerning the play method within this file


### Testing

Uses RSpec 3.8.0

Run current tests from game root directory:

`rspec`
