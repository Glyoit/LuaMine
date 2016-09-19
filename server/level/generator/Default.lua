
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
var generatorType = Default;
var defaultGenerator = Default;
var fs = require('fs');
var Chunk = require('mcpe-chunk');
var Vec3 = require('vec3');

// Todo
