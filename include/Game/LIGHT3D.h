#include "TYPES.h"
#include "LIST.h"

// size: 0x18
struct PointLight {
	// offset: 0000 (8 bytes)
	struct NodeType node;
	// offset: 0008
	unsigned char r;
	// offset: 0009
	unsigned char g;
	// offset: 000A
	unsigned char b;
	// offset: 000B
	unsigned char flags;
	// offset: 000C (6 bytes)
	struct _Position position;
	// offset: 0012
	short radius;
	// offset: 0014
	long radiusSquared;
};

// size: 0x28
struct SpotLight {
	// offset: 0000 (8 bytes)
	struct NodeType node;
	// offset: 0008
	unsigned char r;
	// offset: 0009
	unsigned char g;
	// offset: 000A
	unsigned char b;
	// offset: 000B
	unsigned char flags;
	// offset: 000C (6 bytes)
	struct _Position centroid;
	// offset: 0012
	short radius;
	// offset: 0014
	long radiusSquared;
	// offset: 0018 (6 bytes)
	struct _Position position;
	// offset: 001E (6 bytes)
	struct _Position direction;
	// offset: 0024
	short cosFalloffAngle;
	// offset: 0026
	short attenuationScale;
};

// size: 0x47C
struct LightInfo {
	// offset: 0000
	long numPointLights;
	// offset: 0004 (768 bytes)
	struct PointLight pointLightPool[32];
	// offset: 0304 (8 bytes)
	struct NodeType usedPointLightList;
	// offset: 030C (8 bytes)
	struct NodeType freePointLightList;
	// offset: 0314 (8 bytes)
	struct NodeType activePointLightList;
	// offset: 031C
	long numSpotLights;
	// offset: 0320 (320 bytes)
	struct SpotLight spotLightPool[8];
	// offset: 0460 (8 bytes)
	struct NodeType usedSpotLightList;
	// offset: 0468 (8 bytes)
	struct NodeType freeSpotLightList;
	// offset: 0470 (8 bytes)
	struct NodeType activeSpotLightList;
	// offset: 0478
	long numSavedColors;
};