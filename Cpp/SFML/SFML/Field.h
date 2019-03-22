#pragma once
#include <SFML/Graphics.hpp>

class Field
{
public:
	friend class Board;
	Field();
	~Field() = default;

	void set_depth(const float _depth) { depth = _depth; }
	void set_temperature(const float _temperature) { temperature = _temperature; }


private:
	sf::RectangleShape rectangle;
	float depth;
	float temperature;
};

