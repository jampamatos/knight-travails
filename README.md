# Project: Knight Travails

## Table of Contents

- [Project: Knight Travails](#project-knight-travails)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Game Description](#game-description)
  - [Class and Module Breakdown](#class-and-module-breakdown)
  - [How to use](#how-to-use)
  - [Conclusion](#conclusion)

## Introduction

This project is a command-line based game where a player can move a knight chess piece on a 8x8 board from a starting position to an ending position. The player will be prompted to enter the starting and ending positions and the knight will move to the ending position, showing all the moves it made. The number of moves it took the knight to reach the ending position is also displayed. The game uses the [Breadth First Search (BFS)](https://en.wikipedia.org/wiki/Breadth-first_search) algorithm to calculate the shortest path between the starting and ending positions. This project is part of the [Odin Project's](https://www.theodinproject.com) [Ruby curriculum](https://www.theodinproject.com/lessons/ruby-knights-travails), which aims to provide an in-depth and hands-on learning experience for the Ruby programming language.

## Game Description

This game is a simulation of the classic chess game, where the player can control a knight and move it on a 8x8 chess board. The player can choose a starting position and an ending position for the knight, and the game will calculate the shortest path for the knight to reach the end position, along with the number of moves it took to get there. The game also displays the chess board in a grid format, highlighting the knight's current position and the path it took to reach the end position. Players can also play multiple rounds of the game, starting from different positions and trying to reach different end positions each time.

## Class and Module Breakdown

The project consists of several classes and modules:

- The `Board` class is the main class of the project. It initializes the game board, keeps track of the knight's position and path, and provides methods for moving the knight and displaying the board.
- The `Knight` class is responsible for the knight's movements and for finding the shortest path between two positions on the board.
- The `ChessBoardDisplay` module provides methods for displaying the board in a visually pleasing way.
- The `Messages` module contains all the text and prompts that the game uses, such as the start and end game messages, and prompts for inputting positions.

Each of these classes and modules work together to provide a functional game that allows players to find the shortest path for a knight to move from a starting position to an end position on a 8x8 chess board.

## How to use

To use this game, first clone the repository to your local machine. Then, navigate to the project directory and run the command ruby `main.rb` in your terminal. You will be prompted to enter a starting position for the knight in the form of a letter from A-H and a number from 1-8 (e.g. A1). Then, you will be prompted to enter an ending position for the knight in the same format.

The game will then display the shortest path for the knight to reach the end position, along with the number of moves it took to reach the end. You will also be prompted to play again or quit the game.

Additionally, you can also use the `Board` and `Knight` classes in your own code, if you want to use the knight's shortest path algorithm or move the knight around the board in your own custom game or application.

## Conclusion

In conclusion, this project has been a valuable learning experience in understanding data structures and breadth-first search algorithms. The implementation of a knight's shortest path on a chess board has allowed us to explore different pathfinding strategies and their respective trade-offs. Through this project, we were able to see how the use of a queue and a visited set can optimize our search for the shortest path. Additionally, it has also helped in understanding the importance of proper data organization and how it can improve the efficiency of our code. Overall, this project has been a great opportunity to apply theoretical concepts in a practical setting, and has provided a deeper understanding of data structures and algorithms.
