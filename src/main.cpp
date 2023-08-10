#include "../include/game.hpp"
#include "../include/stdafx.hpp"

int main() {
  sf::RenderWindow window(sf::VideoMode(1920, 1080), "TowerRPG");
  // 1280x720(720p) 1920x1080(1080p) 2560x1440(1440p)

  Game game;  // Create a game instance

  while (window.isOpen()) {
    sf::Event event;
    while (window.pollEvent(event)) {
      if (event.type == sf::Event::Closed) window.close();
    }

    // Update game logic
    game.update();

    window.clear();

    // Draw game content
    game.draw(window);

    window.display();
  }

  return 0;
}
