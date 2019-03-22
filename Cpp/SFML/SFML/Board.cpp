#include "Board.h"

Board::Board(std::size_t _height, std::size_t _width, std::size_t _rv, std::size_t _rh, int _octaves, float _persistence) : width(_width), height(_height),
rectangles_horizontally(_rh), rectangles_verticaly(_rv), map_creator(rectangles_horizontally, rectangles_verticaly), octaves(_octaves), persistence(_persistence),
window(sf::VideoMode(_width, _height, 32), "Random Map")
{
	std::vector<Field> helper(rectangles_horizontally);
	fields = std::vector<std::vector<Field>>(rectangles_verticaly, helper);
}

void Board::open_window() {
	while (window.isOpen()) {
		window.clear(sf::Color::White);
		sf::Event event;
		while (window.pollEvent(event))
		{
			if (event.type == sf::Event::Closed) {
				window.close();
			}
		}
		this->draw(window);
		window.display();
	}
}

void Board::set_positions() {
	for (std::size_t i = 0; i != rectangles_verticaly; ++i) {
		for (std::size_t j = 0; j != rectangles_horizontally; ++j) {
			fields[i][j].rectangle.setSize(sf::Vector2f(height/rectangles_verticaly, width/rectangles_horizontally));
			fields[i][j].rectangle.setPosition(i*height / rectangles_verticaly, j*width / rectangles_horizontally);
		}
	}
}

void Board::draw(sf::RenderWindow& window) const {
	for (auto &i : fields) {
		for (auto &j : i) {
			window.draw(j.rectangle);
		}
	}
}

void Board::set_colors(const bool type, const float pow) {
	if (type) {
		map_creator.generate_continent(octaves, persistence, pow);
	}
	else {
		map_creator.generate_archipelagos(octaves, persistence);
	}

	for (std::size_t i = 0; i != rectangles_verticaly; ++i) {
		for (std::size_t j = 0; j != rectangles_horizontally; ++j) {
			fields[i][j].rectangle.setFillColor(map_creator.get_color(i,j));
		}
	}
}