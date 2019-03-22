#pragma once

#include <vector>
#include "Field.h"
#include <stdlib.h>
#include "Perlin.h"
#include "MapCreator.h"


class Board
{
public:
	Board(std::size_t _height, std::size_t _width, std::size_t _rv, std::size_t _rh, int octaves, float persistence);

	~Board() = default;

	void set_positions();

	void draw(sf::RenderWindow& window) const;

	void open_window();

	void set_colors(const bool type, const float pow = 1);

private:
	sf::RenderWindow window;
	int octaves;
	float persistence;
	std::vector<std::vector<Field>> fields;
	std::size_t width;
	std::size_t height;
	std::size_t rectangles_horizontally;
	std::size_t rectangles_verticaly;
	MapCreator map_creator;
};
