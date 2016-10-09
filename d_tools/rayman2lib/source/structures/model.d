﻿module structures.model;

// Only the part used by GLI Send Triangles func
//struct Model {
//	void* gap0;
//	ushort faceCount;
//	ushort unknown;
//	void* indicesPointer;
//	void* unknownPointer1;
//	void* unknownPointer2;
//	void* unknownPointer3;
//}

// Model_INDEX_LEVEL

/*
	Single model elements
*/

struct Model_0_0 {
	Model_0_1* model_0_1;
}

struct Model_0_1 {
	uint unknown1; // Always? 0x00000000
	uint unknown2; // Always? 0x01000000 (LE)
	Model_0_2* model_0_2;
	void* gliData;
}

struct Model_0_2 {
	uint unknown1;
	uint unknown2;
	Model_0_3* model_0_3;
}

struct Model_0_3 {
	Vertex* vertices;
	void* unknownPointer2;
	void** unknownPointer3;
	uint unknown;
	void* unknownPointer4;
	Model_0_4* model_0_4;
}

struct Model_0_4 {
	Model_0_5* model_0_5;
	void* unknownPointer2;
}

struct Model_0_5 {
	void* unknownPointer1;
	ushort faceCount;
	ushort unknown;
	VertexFace* indices;
	UVFace* uvIndices; // float u, float v
	float* vertices; // float 1, float 2, float 3, float 4 - No idea what this is
	UV* uvs;
}

struct VertexIndex {
	ushort xIndex;
	ushort yIndex;
	ushort zIndex;
}

struct Vertex {
	float x, y, z;
}

struct VertexFace {
	ushort xIndex, yIndex, zIndex;
}

struct UV {
	float u, v;
}

struct UVFace {
	ushort xIndex, yIndex, zIndex;
}

/*
	Grouped models
*/

struct GroupedModel_0 {
	GroupedModel_1* groupedModel_1;
	GroupedModel_1_1* groupedModel_1_1;
}

struct GroupedModel_1 {
	void* unknownPointer1;
	void* unknownPointer2;
	void* unknownPointer3;
	void* unknownPointer4;
}

struct GroupedModel_1_1 {
	uint unknown1;
	uint unknown2;
	uint unknown3;
	void* unknownPointer1;
	ubyte[0x28] gap1;
	void* unknownPointer2;
	uint unknown4;
	uint unknown5;
	char* name;
}