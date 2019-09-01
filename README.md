# roomba-simulator

## Description
A program that takes a room dimension as coordinates and has a Roomba location set as coordinates. The Roomba is given a set of instructions telling it which direction to move in. The room has patches of dirt represented as coordinates and when the Roomba is instructed to move it will clean up the patch of dirt if it comes into contact with it. The program takes an input.txt file and return the output as STDOUT to the terminal.

## How to run the program
- Clone the repository from GitHub
- Move into the repository `cd roomba-simulator`
- Run `bundle`
- Run the command `ruby lib/controller.rb` in your terminal

## Features
The room knows:
- It's dimensions
- Where the dirt is

The roomba knows:
- It's current position
- Roomba can move North
- Roomba can move East
- Roomba can move South
- Roomba can move West
- Does not move outside the parameters of the room
- Roomba can collect dirt
- Roomba will not clean same patch of dirt twice if already removed

Input can:
- Read the file contents
- Get the room dimensions
- Get the Roomba location
- Get the location of the dirt
- Get the driving instructions
