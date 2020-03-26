#include <Graphics/CircleShape.hpp>
#include <Graphics/Color.hpp>
#include <Graphics/RenderWindow.hpp>
#include <Window/Event.hpp>
#include <Window/VideoMode.hpp>
#include <Window/WindowStyle.hpp>
#include "main.hpp"

int main() {
	sf::RenderWindow window(sf::VideoMode(800, 600), "SFML Shader",
			sf::Style::Titlebar | sf::Style::Close);
	sf::CircleShape shape(100.f);
	shape.setFillColor(sf::Color::Green);

	while (window.isOpen()) {
		sf::Event event;
		while (window.pollEvent(event)) {
			if (event.type == sf::Event::Closed)
				window.close();
		}

		window.clear(); ///< it will clear the last frame (last image that is drawn on the screen) */
		window.draw(shape);
		window.display(); ///< this display our current frame on the screen */
	}

	return 0;
}
