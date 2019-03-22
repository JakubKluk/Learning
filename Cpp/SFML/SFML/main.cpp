#include "Board.h"



int main()
{
	float pow = 1.25;		//the bigger this value is, the bigger contninent will generate. It changes nothing
							//while generating archipelagos
	const bool type = false;			//true means the program will generate continent, false, measn archipelagos
	const int window_height = 700;
	const int window_width = 700;					//those variables changes the size of the window
	const int rectangles_in_vertical_axis = 350;
	const int rectangles_in_horizontal_axis = 350;	//those set's window's "resolution"
	const int octaves = 6;			//the more octaves, the more natural look of the map, but it takes more time to generate
	const float persistence = 0.48;       //the bigger persistance, the bigger amplitude of jumps of height function
										  //it should be beetwen 0 and 1. For persistence bigger than 1 Perlin's Noise
										  //looks like normal random noise

	Board board(window_width, window_height, rectangles_in_vertical_axis, rectangles_in_horizontal_axis, octaves, persistence);
	board.set_positions();
	board.set_colors(type, pow);
	board.open_window();
	return 0;
}