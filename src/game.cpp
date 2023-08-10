#include "../include/Game.hpp"

Game::Game(){};

Game::~Game(){};

void Game::GameLoop(sf::RenderWindow& window) {
  InputHandling();

  UpdateGameState();

  RenderGraphics(window);
};

void Game::InputHandling(){
    // + Keyboard Mouse
};

void Game::UpdateGameState(){
    // + Update game state (player position, enemy AI, collisions, etc.)
};

void Game::RenderGraphics(sf::RenderWindow& window) {
  window.clear(sf::Color::Black);

  // + Draw game elements (background, characters, objects, UI)

  sf::CircleShape shape(100.f);
  shape.setFillColor(sf::Color::Red);
  window.draw(shape);

  window.display();
};
