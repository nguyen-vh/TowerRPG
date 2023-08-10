//  Own Headers
#include "../include/Character.hpp"
#include "../include/Game.hpp"

int main() {
  sf::RenderWindow window(sf::VideoMode(1920, 1080), "TowerRPG",
                          sf::Style::Close | sf::Style::Titlebar);

  while (window.isOpen()) {
    sf::Event event;
    while (window.pollEvent(event)) {
      if (event.type == sf::Event::Closed) window.close();
    }

    Game::GameLoop(window);
  }

  return 0;
}
