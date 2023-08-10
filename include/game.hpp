#pragma once

#ifndef GAME_HPP
#define GAME_HPP

#include "../include/stdafx.hpp"

class Game {
 public:
  Game();  // Constructor

  void update();                        // Update game logic
  void draw(sf::RenderWindow& window);  // Draw game content

 private:
  // Define your game objects, variables, and functions here
};

#endif