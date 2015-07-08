unit PropertyInfo;

interface

uses
  ContentValue;

const
  {* Property Information *}
  PI_WORLD_NAME                     = 'level-name';
  PI_WORLD_TYPE                     = 'level-type';
  PI_WORLD_SEED                     = 'level-seed';
  PI_WORLD_MODE                     = 'gamemode';
  PI_WORLD_MODE_ULTIMATE            = 'hardcore';
  PI_WORLD_MODE_FORCE               = 'force-gamemode';
  PI_WORLD_DIFFICULTY               = 'difficulty';
  PI_WORLD_GENERATE_STRUCTURES      = 'generate-structures';
  PI_WORLD_GENERATOR_SETTINGS       = 'generator-settings';
  PI_WORLD_MAX_BUILD_HEIGHT         = 'max-build-height';

  PI_GAME_FRIENDLY_FIRE             = 'pvp';
  PI_GAME_ALLOW_FLIGHT              = 'allow-flight';
  PI_GAME_ALLOW_NETHER              = 'allow_nether';
  PI_GAME_ENABLE_COMMAND_BLOCK      = 'enable-command-block';

  PI_SPAWN_ANIMALS                  = 'spawn-animals';
  PI_SPAWN_MONSTERS                 = 'spawn-monsters';
  PI_SPAWN_NPCS                     = 'spawn-npcs';

  PI_SERVER_IP                      = 'server-ip';
  PI_SERVER_PORT                    = 'server-port';
  PI_SERVER_MAX_PLAERS              = 'max-players';
  PI_SERVER_MAX_SINGLE_CONNECTION   = 'max-connections';
  PI_SERVER_DESCRIPTION             = 'motd';
  PI_SERVER_QUERY                   = 'enable-query';
  PI_SERVER_QUERY_PORT              = 'query.port';
  PI_SERVER_REMOTE_ACCESS           = 'enable-rcon';
  PI_SERVER_REMOTE_ACCESS_PORT      = 'rcon.port';
  PI_SERVER_REMOTE_ACCESS_PASSWORD  = 'rcon.password';
  PI_SERVER_IMPROVE                 = 'snooper-enabled';

  PI_OP_LEVEL                       = 'op-permission-level';

  PI_ONLINE_MODE                    = 'online-mode';

  PI_VIEW_DISTANCE                  = 'view-distance';

  PI_WHITE_LIST                     = 'white-list';

  PI_TEXTURE_PACKAGE                = 'texture-pack';

  { The Value Of The Property }
  PV_WORLD_TYPE_DEFAULT             = 'DEFAULT';
  PV_WORLD_TYPE_FLAT                = 'FLAT';
  PV_WORLD_TYPE_LARGEBIOMES         = 'LARGEBIOMES';

  PV_WORLD_MODE_SURVIVAL            = '0';
  PV_WORLD_MODE_CREATIVE            = '1';
  PV_WORLD_MODE_ADVANTURE           = '2';

  PV_WORLD_DIFFICULTY_PEACE         = '0';
  PV_WORLD_DIFFICULTY_SIMPLE        = '1';
  PV_WORLD_DIFFICULTY_DEFAULT       = '2';
  PV_WORLD_DIFFICULTY_HARD          = '3';

  PV_COMMON_BOOLEAN_TRUE            = 'true';
  PV_COMMON_BOOLEAN_FALSE           = 'false';

  { The Default Value Of The Property }
  PN_WORLD_NAME                     = 'World';

  PN_WORLD_TYPE                     = PV_WORLD_TYPE_DEFAULT;
  PN_WORLD_MODE                     = PV_WORLD_MODE_SURVIVAL;
  PN_WORLD_DIFFICULTY               = PV_WORLD_DIFFICULTY_DEFAULT;

  PN_WORLD_MODE_ULTIMATE            = PV_COMMON_BOOLEAN_FALSE;
  PN_WORLD_MODE_FORCE               = PV_COMMON_BOOLEAN_FALSE;
  PN_WORLD_GENERATE_STRUCTURES      = PV_COMMON_BOOLEAN_TRUE;
  PN_WORLD_MAX_BUILD_HEIGHT         = '256';
  PN_WORLD_SEED                     = '';
  PN_WORLD_GENERATOR_SETTINGS       = '';

  PN_GAME_FRIENDLY_FIRE             = PV_COMMON_BOOLEAN_FALSE;
  PN_GAME_ALLOW_FLIGHT              = PV_COMMON_BOOLEAN_FALSE;
  PN_GAME_ALLOW_NETHER              = PV_COMMON_BOOLEAN_TRUE;
  PN_GAME_ENABLE_COMMAND_BLOCK      = PV_COMMON_BOOLEAN_FALSE;

  PN_SPAWN_ANIMALS                  = PV_COMMON_BOOLEAN_TRUE;
  PN_SPAWN_MONSTERS                 = PV_COMMON_BOOLEAN_TRUE;
  PN_SPAWN_NPCS                     = PV_COMMON_BOOLEAN_TRUE;

  PN_SERVER_IP                      = '127.0.0.1';
  PN_SERVER_PORT                    = '23333';
  PN_SERVER_MAX_PLAERS              = '10';
  PN_SERVER_MAX_SINGLE_CONNECTION   = '3';
  PN_SERVER_QUERY                   = PV_COMMON_BOOLEAN_FALSE;
  PN_SERVER_IMPROVE                 = PV_COMMON_BOOLEAN_FALSE;
  PN_SERVER_DESCRIPTION             = '';
  PN_SERVER_QUERY_PORT              = '';
  PN_SERVER_REMOTE_ACCESS           = '';
  PN_SERVER_REMOTE_ACCESS_PORT      = '';
  PN_SERVER_REMOTE_ACCESS_PASSWORD  = '';

  PN_OP_LEVEL                       = '4';

  PN_ONLINE_MODE                    = PV_COMMON_BOOLEAN_FALSE;

  PN_VIEW_DISTANCE                  = '10';

  PN_WHITE_LIST                     = PV_COMMON_BOOLEAN_FALSE;

  PN_TEXTURE_PACKAGE                = '';

var
  PV_MAPPING_WORD_DIFFICULTY      : TContentValue;
  PV_MAPPING_WORLD_MODE           : TContentValue;

implementation

initialization
  PV_MAPPING_WORD_DIFFICULTY:= TContentValue.Create;
  PV_MAPPING_WORLD_MODE:= TContentValue.Create;

  PV_MAPPING_WORD_DIFFICULTY.Add('和平', PV_WORLD_DIFFICULTY_PEACE);
  PV_MAPPING_WORD_DIFFICULTY.Add('简单', PV_WORLD_DIFFICULTY_SIMPLE);
  PV_MAPPING_WORD_DIFFICULTY.Add('普通', PV_WORLD_DIFFICULTY_DEFAULT);
  PV_MAPPING_WORD_DIFFICULTY.Add('困难', PV_WORLD_DIFFICULTY_HARD);

  PV_MAPPING_WORLD_MODE.Add('生存模式', PV_WORLD_MODE_SURVIVAL);
  PV_MAPPING_WORLD_MODE.Add('创造模式', PV_WORLD_MODE_CREATIVE);
  PV_MAPPING_WORLD_MODE.Add('冒险模式', PV_WORLD_MODE_ADVANTURE);

end.
