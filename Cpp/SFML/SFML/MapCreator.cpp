#include "MapCreator.h"

MapCreator::MapCreator(std::size_t _rectangles_horizontally, std::size_t _rectangles_verticaly) : rectangles_horizontally(_rectangles_horizontally), rectangles_verticaly(_rectangles_verticaly) {
	float x;
	float y;
	float z;
	std::vector<sf::Color> help(rectangles_horizontally);
	map = std::vector<std::vector<sf::Color>>(rectangles_verticaly, help);
	this->change_seed();
}

void MapCreator::change_seed() {
	std::srand((int)time(NULL));
	x = static_cast <float> (rand()) / static_cast <float> (RAND_MAX);
	y = static_cast <float> (rand()) / static_cast <float> (RAND_MAX);
	z = static_cast <float> (rand()) / static_cast <float> (RAND_MAX);
}

float MapCreator::corner_distance_coefficient(const std::size_t i, const std::size_t j, const float pow) {
	float max_distance = std::sqrt((rectangles_horizontally*rectangles_horizontally / 4) + (rectangles_verticaly*rectangles_verticaly / 4));
	float x_axis_distance = (j - rectangles_horizontally / 2)*(j - rectangles_horizontally / 2);
	float y_axis_distance = (i - rectangles_verticaly / 2)*(i - rectangles_verticaly / 2);
	return 1 - std::pow(std::sqrt(x_axis_distance + y_axis_distance) / max_distance, pow);
	//this functions returns a value in range [0;1]. This value depends on distance of [i][j] tile from the bordr of map.
	//pow argument makes the function non-linear which allows to control size of continent.
}

void MapCreator::generate_continent(const int octaves, const float persistence, const float pow) {
	float help1 = x;						//this function creates map with a single big continent in the center
	float help2 = y;						//it is using the corner_distance_coefficient function to center the mass
	float per = persistence;				//of land.
	Perlin p;
	std::vector<float> helper(rectangles_horizontally);
	std::vector<std::vector<float>> depth(rectangles_verticaly, helper);
	std::vector<std::vector<float>> temperature(rectangles_verticaly, helper);
	for (int i = 0; i != rectangles_verticaly; ++i) {
		for (int j = 0; j != rectangles_horizontally; ++j) {
			depth[i][j] = p.Octave(help1, help2, z, octaves, per)*0.55 + 0.45*corner_distance_coefficient(i,j, pow);
			help1 += 0.01;
		}
		help1 = x;
		help2 += 0.01;
	}
	change_seed();
	help1 = x;
	help2 = y;
	for (int i = 0; i != rectangles_verticaly; ++i) {
		for (int j = 0; j != rectangles_horizontally; ++j) {
			temperature[i][j] = p.Octave(help1, help2, z, octaves, per);
			help1 += 0.01;
		}
		help1 = x;
		help2 += 0.01;
	}
	assign_colors(depth, temperature);
}

void MapCreator::generate_archipelagos(const int octaves, const float persistence) {
	float help1 = x;
	float help2 = y;
	float per = persistence;										//this function creates map with a bunch of medium
	Perlin p;														//islands. just a clear Perlin's Noise.
	std::vector<float> helper(rectangles_horizontally);
	std::vector<std::vector<float>> depth(rectangles_verticaly, helper);
	std::vector<std::vector<float>> temperature(rectangles_verticaly, helper);
	for (int i = 0; i != rectangles_verticaly; ++i) {
		for (int j = 0; j != rectangles_horizontally; ++j) {
			depth[i][j] = p.Octave(help1, help2, z, octaves, per);
			help1 += 0.01;
		}
		help1 = x;
		help2 += 0.01;
	}
	change_seed();
	for (int i = 0; i != rectangles_verticaly; ++i) {
		for (int j = 0; j != rectangles_horizontally; ++j) {
			temperature[i][j] = p.Octave(help1, help2, z, octaves, per);
			help1 += 0.01;
		}
		help1 = x;
		help2 += 0.01;
	}
	assign_colors(depth, temperature);
}

bool MapCreator::check_for_coast(const std::size_t x, const std::size_t y, const std::vector<std::vector<float>>& depth) {
	if (x != 0 && y != 0) {
		if (depth[x - 1][y - 1] < 0.5) { return true; }				//The function is currently not in use
	}																//It's work is to check type of all neighbours of
	if (y != 0) {													//[i][j] tile
		if (depth[x][y - 1] < 0.5) { return true; }					//it may prove usefull later
	}
	if (x != rectangles_horizontally - 2 && y != 0) {
		if (depth[x + 1][y - 1] < 0.5) { return true; }
	}
	if (x != rectangles_horizontally - 2) {
		if (depth[x + 1][y] < 0.5) { return true; }
	}
	if (x != rectangles_horizontally - 2 && y != rectangles_verticaly-1) {
		if (depth[x + 1][y + 1] < 0.5) { return true; }
	}
	if (y != rectangles_verticaly-2) {
		if (depth[x][y + 1] < 0.5) { return true; }
	}
	if (x!=0 && y != rectangles_verticaly - 2) {
		if (depth[x-1][y + 1] < 0.5) { return true; }
	}
	if (x != 0) {
		if (depth[x - 1][y] < 0.5) { return true; }
	}
	return false;
}

void MapCreator::assign_colors(const std::vector<std::vector<float>>& depth, const std::vector<std::vector<float>>& temperature) {
	for (int i = 0; i != rectangles_verticaly; ++i) {
		for (int j = 0; j != rectangles_horizontally; ++j) {
			if (depth[i][j] < 0.5) {
				map[i][j] = sea;
			}
			else if (depth[i][j] > 0.5 && depth[i][j] < 0.51) {
				map[i][j] = coast;
			}
			else if ((depth[i][j] > 0.51) && (depth[i][j] < 0.6) && (temperature[i][j] < 0.47)) {
				map[i][j] = cold_plains;
			}
			else if ((depth[i][j] > 0.51) && (depth[i][j] < 0.6) && (temperature[i][j]>0.47)) {
				map[i][j] = moderate_plains;
			}
			else if ((depth[i][j] > 0.6) && (depth[i][j] < 0.65) && (temperature[i][j] < 0.47)) {
				map[i][j] = cold_flatland;
			}
			else if ((depth[i][j] > 0.6) && (depth[i][j] < 0.65) && (temperature[i][j] > 0.47)) {
				map[i][j] = moderate_flatland;
			}
			else if ((depth[i][j] > 0.65) && (temperature[i][j] < 0.47)) {
				map[i][j] = cold_highland;
			}
			else if ((depth[i][j] > 0.65) && (temperature[i][j] > 0.47) ) {
				map[i][j] = moderate_highland;
			}
		}
	}
}
