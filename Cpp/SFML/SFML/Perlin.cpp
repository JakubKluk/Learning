#include "Perlin.h"



Perlin::Perlin()
{
	permutation = std::vector<int>(256);
	p = std::vector<int>(512);
	for (int i = 0; i != 256; i++) {
		permutation[i] = i;
	}
	std::random_shuffle(permutation.begin(), permutation.end());
	for (int x = 0; x < 512; x++) {
		p[x] = permutation[x % 256];
	}
}

float Perlin::perlin(const float x, const float y, const float z) {
	int xi = int(x) % 255;
	int yi = int(y) % 255;
	int zi = int(z) % 255;
	float xf = x - int(x);
	float yf = y - int(y);
	float zf = z - int(z);

	float u = fade(xf);
	float v = fade(yf);
	float w = fade(zf);

	int aaa, aba, aab, abb, baa, bba, bab, bbb;
	aaa = p[p[p[xi] + yi] + zi];
	aba = p[p[p[xi] + yi+1] + zi];
	aab = p[p[p[xi] + yi] + zi+1];
	abb = p[p[p[xi] + yi+1] + zi+1];
	baa = p[p[p[xi+1] + yi] + zi];
	bba = p[p[p[xi+1] + yi+1] + zi];
	bab = p[p[p[xi+1] + yi] + zi+1];
	bbb = p[p[p[xi+1] + yi+1] + zi+1];

	float x1, x2, y1, y2;
	x1 = lerp_k(grad(aaa, xf, yf, zf),
		grad(baa, xf - 1, yf, zf),
		u);
	x2 = lerp_k(grad(aba, xf, yf - 1, zf),
		grad(bba, xf - 1, yf - 1, zf),
		u);
	y1 = lerp_k(x1, x2, v);

	x1 = lerp_k(grad(aab, xf, yf, zf - 1),
		grad(bab, xf - 1, yf, zf - 1),
		u);
	x2 = lerp_k(grad(abb, xf, yf - 1, zf - 1),
		grad(bbb, xf - 1, yf - 1, zf - 1),
		u);
	y2 = lerp_k(x1, x2, v);

	return (lerp_k(y1, y2, w) + 1) / 2;
}

float Perlin::fade(const float t) {
	return t * t*t*(t*(t * 6 - 15) + 10);
}

float Perlin::grad(const int hash, const float x, const float y, const float z) {
	int h = hash % 15;
	float u;
	if (h < 8) {
		u = x;
	}
	else {
		u = y;
	}
	float v;
	if (h < 4) {
		v = y; 
	}
	else if (h == 12 || h ==14) {
		v = x;
	}
	else {
		v = z;
	}
	return ((h & 1) == 0 ? u : -u) + ((h & 2) == 0 ? v : -v);
}

float Perlin::Octave(const float x, const float y, const float z, const int octaves, const float persistence) {
	float total = 0;
	float frequency = 1;
	float amplitude = 1;
	float maxValue = 0;
	for (int i = 0; i < octaves; i++) {
		total += perlin(x * frequency, y * frequency, z * frequency) * amplitude;

		maxValue += amplitude;

		amplitude *= persistence;
		frequency *= 2;
	}
	return total / maxValue;
}