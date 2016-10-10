--  _                 __  __ _            
-- | |               |  \/  (_)           
-- | |    _   _  __ _| \  / |_ _ __   ___ 
-- | |   | | | |/ _` | |\/| | | '_ \ / _ \
-- | |___| |_| | (_| | |  | | | | | |  __/
-- |______\__,_|\__,_|_|  |_|_|_| |_|\___|
--                                        
-- @author LuaMine Team
-- @website LuaMine.ml

const BLOCK_DATA_SIZE = 16 * 16 * 128;
const REGULAR_DATA_SIZE = 16384;
const SKYLIGHT_DATA_SIZE = 16384;
const BLOCKLIGHT_DATA_SIZE = 16384;
const ADDITIONAL_DATA_SIZE_DIRTY = 256;
const ADDITIONAL_DATA_SIZE_COLOR = 1024;
const BUFFER_SIZE = BLOCK_DATA_SIZE + REGULAR_DATA_SIZE + SKYLIGHT_DATA_SIZE + BLOCKLIGHT_DATA_SIZE + ADDITIONAL_DATA_SIZE_COLOR + ADDITIONAL_DATA_SIZE_DIRTY;

class Flat {
var generatorType = Flat;
var defaultGenerator = Default;
var fs = require('fs');
var Chunk = require('mcpe-chunk');
var Vec3 = require('vec3');
 
var chunk = new Chunk();
 
for (var x = 0; x < 16; x++) {
  for (var z = 0; z < 16; z++) {
    chunk.setBlockType(new Vec3(x, 2, z), 2);
    chunk.setBiome(new Vec3(x, 50, z), 0);
    chunk.setBiomeColor(new Vec3(x, 50, z), 141, 184, 113);
    for (var y = 0; y < 128; y++) {
      chunk.setSkyLight(new Vec3(x, y, z), 15);
      chunk.setBlockLight(new Vec3(x, y, z), 15);
    }
  }
   if (exists(block.type))
      this.setBlockType(pos, block.type);
    if (exists(block.metadata))
      this.setBlockData(pos, block.metadata);
    if (exists(block.biome))
      this.setBiome(pos, block.biome.id);
    if (exists(block.skyLight))
      this.setSkyLight(pos, block.skyLight);
    if (exists(block.light))
      this.setBlockLight(pos, block.light);
  }
}



