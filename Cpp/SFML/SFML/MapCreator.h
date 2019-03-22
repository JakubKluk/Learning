#pragma once
#include "Perlin.h"
#include <SFML/Graphics.hpp>
#include <math.h>

class MapCreator
{
public:
	MapCreator(std::size_t rectangles_horizontally, std::size_t rectangles_verticaly);
	~MapCreator() = default;

	void generate_archipelagos(const int octaves, const float persistence);
	void generate_continent(const int octaves, const float persistence, const float pow);

	void change_seed();

	void assign_colors(const std::vector<std::vector<float>>& depth, const std::vector<std::vector<float>>& temperature);
	bool check_for_coast(const std::size_t x, const std::size_t y, const std::vector<std::vector<float>>& depth);

	float corner_distance_coefficient(const std::size_t i, const std::size_t j, const float pow);

	sf::Color get_color(const std::size_t i, const std::size_t j) { return map[i][j]; }
private:
	std::vector<std::vector<sf::Color>> map;
	std::size_t rectangles_horizontally;
	std::size_t rectangles_verticaly;
	float x;
	float y;
	float z;
};

const sf::Color sea(0, 0, 255);
const sf::Color cold_plains(40, 230, 22);			//constants that defines colors of biomes
const sf::Color cold_flatland(40, 255, 22);
const sf::Color cold_highland(112, 255, 81);
const sf::Color moderate_plains(20, 255, 20);
const sf::Color moderate_flatland(0, 255, 0);
const sf::Color moderate_highland(20, 230, 20);
const sf::Color coast(255, 204, 0);

