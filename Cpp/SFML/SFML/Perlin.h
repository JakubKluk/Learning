#pragma once
#include <vector>
#include <random>
#include <iostream>
class Perlin
{
public:
	Perlin();
	~Perlin() = default;
	float perlin(const float x, const float y, const float z);
	float fade(const float t);
	float grad(const int hash, const float x, const float y, const float z);
	float lerp_k(const float a, const float b, const float x) {
		return a + x * (b - a);
	}
	float Octave(const float x, const float y, const float z, const int octaves, const float persistence);
private:
	std::vector<int> permutation;
	std::vector<int> p;
};