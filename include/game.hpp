#pragma once

#ifndef GAME_HPP
#define GAME_HPP

#include "../include/stdafx.hpp"

//* Main Loop, Game Logic, Input Handling, Update Stats, Render Graphics

class Game {
 public:
  Game();

  virtual ~Game();

  //* Heart of the program
  static void GameLoop(sf::RenderWindow& window);

  //* Register Input
  static void InputHandling();

  //* Update all positions, stats, collisions, etc.
  static void UpdateGameState();

  //* Clear old Frame, Draw new State, Display
  static void RenderGraphics(sf::RenderWindow& window);

 private:
};

#endif