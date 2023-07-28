{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rmWorld",
  "isDnd": false,
  "volume": 1.0,
  "parentRoom": null,
  "views": [
    {"inherit":false,"visible":true,"xview":0,"yview":0,"wview":320,"hview":180,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
  ],
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"UI","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6DAE18E3","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"chestID","path":"objects/objChest/objChest.yy",},"objectId":{"name":"objChest","path":"objects/objChest/objChest.yy",},"value":"2",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"loot","path":"objects/objChest/objChest.yy",},"objectId":{"name":"objChest","path":"objects/objChest/objChest.yy",},"value":"Sword",},
          ],"isDnd":false,"objectId":{"name":"objChest","path":"objects/objChest/objChest.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":144.0,"y":64.0,},
      ],"visible":true,"depth":0,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_D63662D_1","properties":[],"isDnd":false,"objectId":{"name":"objRandomEncounter","path":"objects/objRandomEncounter/objRandomEncounter.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":1408.0,"y":784.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7F6CE22C_1","properties":[],"isDnd":false,"objectId":{"name":"objRoomManager","path":"objects/objRoomManager/objRoomManager.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":1392.0,"y":784.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_267B9B6D_1","properties":[],"isDnd":false,"objectId":{"name":"objTam","path":"objects/objTam/objTam.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":1408.0,"y":848.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_216974EC","properties":[],"isDnd":false,"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":1488.0,"y":800.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7CC090F7","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"innkeep","path":"objects/objNpcParent/objNpcParent.yy",},"objectId":{"name":"objNpcParent","path":"objects/objNpcParent/objNpcParent.yy",},"value":"\"Town1\"",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"dialog","path":"objects/objNpcParent/objNpcParent.yy",},"objectId":{"name":"objNpcParent","path":"objects/objNpcParent/objNpcParent.yy",},"value":"global.dialog.martineTalk",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"moves","path":"objects/objAiParent/objAiParent.yy",},"objectId":{"name":"objAiParent","path":"objects/objAiParent/objAiParent.yy",},"value":"False",},
          ],"isDnd":false,"objectId":{"name":"objNpcWoman","path":"objects/objNpcWoman/objNpcWoman.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":1600.0,"y":800.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_DDE5D08","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetX","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"368",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetY","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"112",},
          ],"isDnd":false,"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":1632.0,"y":864.0,},
      ],"visible":true,"depth":100,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":"none","properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Walls","tilesetId":{"name":"tlsWorld","path":"tilesets/tlsWorld/tlsWorld.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":400,"SerialiseHeight":400,"TileCompressedData":[
-8531,21,1,0,-393,21,1,0,-4,21,-4,0,-390,21,-11,0,-388,21,-12,0,-124,21,-53,0,-211,21,-13,0,-120,21,-58,0,-198,21,1,0,-9,21,-14,0,-117,21,-61,0,-197,21,-4,0,-7,21,-15,0,-116,21,-62,0,-195,21,-6,0,-6,21,-15,0,-112,21,-66,0,-195,21,-7,0,-4,21,-17,0,-107,21,-70,0,-194,21,-9,0,-3,21,-17,0,-103,21,-74,0,-193,21,-10,0,-3,21,-17,0,-100,21,-77,0,-192,21,-11,0,-2,21,-19,0,-96,21,-80,0,-191,21,-13,0,1,21,-19,0,-96,21,-80,0,-190,21,-35,0,-3,21,-3,0,-86,21,-83,0,-189,21,-36,0,-3,21,-5,0,-84,21,-83,0,-188,21,-37,0,-3,21,-5,0,-70,21,-97,0,-156,21,-9,0,-6,21,-9,0,-7,21,-39,0,-3,21,-6,0,-68,21,-97,0,-155,21,-28,0,-3,21,-40,0,-3,21,-8,0,-66,21,-97,0,-155,21,-71,0,-3,21,-10,0,-64,21,-97,0,-156,21,-71,0,-3,21,-10,0,-63,21,-97,0,-156,21,-71,0,-3,21,-10,0,-63,21,-97,0,-156,21,-72,0,-2,21,-11,0,-62,21,-97,0,-157,21,-72,0,1,21,-12,0,-61,21,-97,0,-158,21,-84,0,-61,21,-97,0,-159,21,-84,0,-60,21,-97,0,-160,21,-84,0,-59,21,-97,0,-163,21,-82,0,-57,21,-98,0,-164,21,-82,0,-56,21,-98,0,-165,21,-81,0,-56,21,-98,0,-164,21,-72,0,-3,21,-8,0,-52,21,-101,0,-162,21,-75,0,-5,21,-6,0,-51,21,-101,0,-161,21,-79,0,-6,21,-3,0,-50,21,-101,0,-160,21,-81,0,-6,21,-2,0,-50,21,-101,0,-158,21,-84,0,-6,21,-2,0,-47,21,-103,0,-157,21,-85,0,-7,21,-2,0,-46,21,-103,0,-156,21,-87,0,-7,21,1,0,-46,21,-103,0,-155,21,-89,0,-53,21,-103,0,
-154,21,-91,0,-49,21,-106,0,-154,21,-92,0,-48,21,-106,0,-154,21,-93,0,-12,21,-4,0,-29,21,-108,0,-154,21,-95,0,-4,21,-10,0,-29,21,-108,0,-155,21,-108,0,-29,21,-108,0,-155,21,-108,0,-29,21,-108,0,-156,21,-106,0,-30,21,-108,0,-158,21,-104,0,-30,21,-108,0,-161,21,-100,0,-31,21,-108,0,-162,21,-18,0,-6,21,-75,0,-31,21,-108,0,-165,21,-10,0,-13,21,-72,0,-32,21,-107,0,-156,21,-5,0,-7,21,-7,0,-16,21,-70,0,-32,21,-107,0,-155,21,-11,0,-4,21,-4,0,-17,21,-69,0,-33,21,-106,0,-155,21,-14,0,-24,21,-68,0,-33,21,-104,0,-155,21,-18,0,-22,21,-68,0,-33,21,-102,0,-157,21,-19,0,-22,21,-67,0,-33,21,-97,0,-161,21,-20,0,-22,21,-66,0,-34,21,-93,0,-165,21,-18,0,-24,21,-66,0,-34,21,-91,0,-166,21,-18,0,-26,21,-65,0,-34,21,-60,0,-197,21,-17,0,-27,21,-31,0,-9,21,-25,0,-34,21,-60,0,-197,21,-17,0,-27,21,-30,0,-11,21,-24,0,-34,21,-57,0,-200,21,-17,0,-28,21,-28,0,-13,21,-24,0,-33,21,-57,0,-199,21,-19,0,-27,21,-27,0,-15,21,-23,0,-33,21,-57,0,-199,21,-19,0,-27,21,-14,0,-28,21,-23,0,-33,21,-54,0,-202,21,-20,0,-28,21,-10,0,-30,21,-22,0,-34,21,-54,0,-201,21,-22,0,-28,21,-6,0,-7,21,-12,0,-14,21,-22,0,-34,21,-54,0,-201,21,-22,0,-28,21,-3,0,-7,21,-17,0,-11,21,-22,0,-35,21,-50,0,-204,21,-24,0,-35,21,-53,0,-34,21,-50,0,-203,21,-25,0,-31,21,-57,0,-34,21,-50,0,-53,21,-4,0,-145,21,-27,0,-27,21,-61,0,-33,21,-47,0,-54,21,-8,0,-143,21,-27,0,-27,21,-61,0,-33,21,-47,0,
-52,21,-11,0,-142,21,-28,0,-26,21,-61,0,-33,21,-47,0,-52,21,-12,0,-140,21,-29,0,-27,21,-59,0,-34,21,-45,0,-53,21,-15,0,-137,21,-30,0,-27,21,-59,0,-34,21,-45,0,-53,21,-17,0,-7,21,1,0,-5,21,-6,0,-114,21,-32,0,-27,21,-58,0,-35,21,-45,0,-52,21,-19,0,-5,21,-2,0,-4,21,-8,0,-112,21,-34,0,-26,21,-58,0,-35,21,-45,0,-52,21,-20,0,-3,21,-3,0,-3,21,-10,0,-108,21,-37,0,-26,21,-58,0,-35,21,-42,0,-54,21,-27,0,-3,21,-10,0,-107,21,-38,0,-26,21,-58,0,-35,21,-42,0,-53,21,-29,0,-2,21,-10,0,-105,21,-40,0,-26,21,-45,0,1,21,-12,0,-35,21,-42,0,-53,21,-29,0,-3,21,-9,0,-104,21,-41,0,-27,21,-43,0,-4,21,-9,0,-36,21,-42,0,-40,21,-2,0,-10,21,-30,0,-3,21,-9,0,-4,21,-7,0,-92,21,-42,0,-27,21,-43,0,-6,21,-6,0,-37,21,-40,0,-42,21,-3,0,-8,21,-31,0,-3,21,-8,0,-5,21,-10,0,-87,21,-44,0,-27,21,-44,0,-48,21,-40,0,-42,21,-8,0,1,21,-33,0,-4,21,-7,0,-4,21,-14,0,-83,21,-45,0,-27,21,-44,0,-48,21,-40,0,-42,21,-43,0,-3,21,-6,0,-4,21,-16,0,-82,21,-45,0,-27,21,-45,0,-47,21,-40,0,-42,21,-43,0,-3,21,-6,0,-3,21,-17,0,-81,21,-46,0,-27,21,-45,0,-129,21,-44,0,-2,21,-4,0,-4,21,-18,0,-80,21,-47,0,-27,21,-46,0,-129,21,-44,0,-2,21,1,0,-5,21,-19,0,-79,21,-48,0,-27,21,-47,0,-128,21,-48,0,-3,21,-20,0,-79,21,-48,0,-27,21,-49,0,-126,21,-72,0,-77,21,-49,0,-27,21,-50,0,-126,21,-72,0,-76,21,-7,0,-6,21,-37,0,
-26,21,-50,0,-128,21,-72,0,-86,21,-38,0,-26,21,-50,0,-132,21,-70,0,-84,21,-38,0,-26,21,-50,0,-136,21,-70,0,-79,21,-40,0,-24,21,-50,0,-138,21,-71,0,-77,21,-40,0,-24,21,-50,0,-139,21,-71,0,-76,21,-40,0,-24,21,-50,0,-140,21,-68,0,-77,21,-41,0,-24,21,-49,0,-130,21,-5,0,-7,21,-65,0,-79,21,-41,0,-24,21,-48,0,-130,21,-9,0,-5,21,-63,0,-79,21,-43,0,-23,21,-46,0,-8,21,1,0,-114,21,-2,0,-6,21,-12,0,-3,21,-63,0,-79,21,-44,0,-23,21,-43,0,-9,21,-2,0,-114,21,-3,0,-6,21,-78,0,-77,21,-45,0,-23,21,-42,0,-9,21,-3,0,-111,21,-6,0,-7,21,-78,0,-76,21,-46,0,-22,21,-40,0,-9,21,-5,0,-110,21,-8,0,-6,21,-79,0,-75,21,-46,0,-23,21,-37,0,-9,21,-6,0,-111,21,-8,0,-7,21,-79,0,-74,21,-47,0,-22,21,-35,0,-9,21,-7,0,-112,21,-9,0,-7,21,-80,0,-72,21,-47,0,-22,21,-34,0,-7,21,-8,0,-113,21,-10,0,-8,21,-78,0,-73,21,-47,0,-22,21,-32,0,-5,21,-11,0,-114,21,-11,0,-9,21,-75,0,-74,21,-49,0,-20,21,-47,0,-114,21,-12,0,-10,21,-73,0,-75,21,-51,0,-6,21,-3,0,-9,21,-45,0,-115,21,-13,0,-9,21,-10,0,-9,21,-54,0,-77,21,-61,0,-4,21,-46,0,-114,21,-16,0,-8,21,-8,0,-16,21,-49,0,-78,21,-108,0,-115,21,-19,0,-6,21,-7,0,-20,21,-46,0,-79,21,-72,0,-6,21,-26,0,-117,21,-21,0,-5,21,-6,0,-5,21,-9,0,-9,21,-43,0,-82,21,-70,0,-149,21,-22,0,-5,21,-5,0,-3,21,-15,0,-7,21,-43,0,-81,21,-70,0,-148,21,-23,0,-4,21,-5,0,-2,21,-18,0,
-6,21,-45,0,-79,21,-70,0,-147,21,-24,0,-3,21,-27,0,-6,21,-45,0,-78,21,-71,0,-144,21,-26,0,-2,21,-29,0,-5,21,-45,0,-79,21,-70,0,-141,21,-28,0,-2,21,-30,0,-5,21,-46,0,-78,21,-70,0,-139,21,-30,0,1,21,-32,0,-4,21,-47,0,-77,21,-71,0,-137,21,-64,0,-4,21,-12,0,-7,21,-29,0,-76,21,-71,0,-135,21,-66,0,-4,21,-11,0,-11,21,-26,0,-77,21,-70,0,-133,21,-68,0,-4,21,-10,0,-14,21,-24,0,-77,21,-69,0,-130,21,-72,0,-5,21,-8,0,-15,21,-25,0,-77,21,-68,0,-126,21,-76,0,-5,21,-6,0,-17,21,-14,0,-8,21,-3,0,-78,21,-66,0,-16,21,1,0,-107,21,-79,0,-17,21,-2,0,-8,21,-11,0,-93,21,-66,0,-15,21,-2,0,-105,21,-82,0,-16,21,-3,0,-6,21,-10,0,-95,21,-66,0,-13,21,-5,0,-102,21,-84,0,-14,21,-5,0,-5,21,-10,0,-97,21,-64,0,-3,21,-16,0,-102,21,-85,0,-13,21,-5,0,-5,21,-8,0,-100,21,-82,0,-102,21,-87,0,-10,21,-5,0,-8,21,-5,0,-102,21,-81,0,-102,21,-88,0,-7,21,-7,0,-116,21,-80,0,-103,21,-101,0,-117,21,-79,0,-104,21,-101,0,-117,21,-78,0,-104,21,-102,0,-117,21,-78,0,-103,21,-105,0,-14,21,-8,0,-92,21,-79,0,-101,21,-109,0,-8,21,-13,0,-90,21,-79,0,-13,21,-2,0,-86,21,-132,0,-89,21,-79,0,-11,21,-4,0,-85,21,-134,0,-87,21,-79,0,-10,21,-5,0,-84,21,-135,0,-87,21,-79,0,-9,21,-6,0,-84,21,-21,0,-5,21,-110,0,-87,21,-78,0,-7,21,-9,0,-84,21,-16,0,-12,21,-109,0,-86,21,-77,0,-4,21,-12,0,-85,21,-13,0,-15,21,-108,0,-86,21,-77,0,-2,21,-15,0,
-85,21,-11,0,-17,21,-107,0,-86,21,-77,0,1,21,-16,0,-89,21,-4,0,-20,21,-107,0,-86,21,-94,0,-113,21,-107,0,-87,21,-93,0,-112,21,-108,0,-87,21,-93,0,-111,21,-109,0,-87,21,-93,0,-107,21,-113,0,-88,21,-28,0,1,21,-63,0,-99,21,-4,0,-6,21,-111,0,-88,21,-27,0,-2,21,-63,0,-94,21,-11,0,-7,21,-108,0,-89,21,-25,0,-3,21,-63,0,-88,21,-18,0,-9,21,-105,0,-90,21,-23,0,-4,21,-63,0,-86,21,-22,0,-8,21,-104,0,-90,21,-8,0,-6,21,-8,0,-4,21,-64,0,-84,21,-26,0,-6,21,-104,0,-91,21,-6,0,-8,21,-6,0,-4,21,-65,0,-83,21,-30,0,-2,21,-105,0,-92,21,-5,0,-9,21,-4,0,-5,21,-65,0,-82,21,-138,0,-92,21,-4,0,-11,21,1,0,-6,21,-65,0,-83,21,-138,0,-93,21,-2,0,-19,21,-65,0,-84,21,-137,0,-113,21,-66,0,-84,21,-137,0,-113,21,-66,0,-85,21,-136,0,-72,21,-3,0,-38,21,-67,0,-84,21,-136,0,-69,21,-8,0,-37,21,-66,0,-84,21,-136,0,-67,21,-12,0,-9,21,-2,0,-26,21,-64,0,-84,21,-136,0,-66,21,-16,0,-5,21,-4,0,-26,21,-64,0,-83,21,-136,0,-65,21,-30,0,-22,21,-64,0,-84,21,-135,0,-64,21,-33,0,-10,21,-7,0,-4,21,-64,0,-83,21,-135,0,-63,21,-36,0,-7,21,-78,0,-81,21,-135,0,-63,21,-38,0,-3,21,-82,0,-80,21,-134,0,-62,21,-124,0,-81,21,-133,0,-61,21,-127,0,-80,21,-132,0,-60,21,-129,0,-81,21,-130,0,-58,21,-131,0,-82,21,-129,0,-57,21,-132,0,-86,21,-125,0,-55,21,-135,0,-85,21,-125,0,-54,21,-136,0,-86,21,-124,0,-55,21,-135,0,-87,21,-123,0,-57,21,-134,0,-88,21,-121,0,
-60,21,-131,0,-90,21,-119,0,-60,21,-131,0,-90,21,-119,0,-58,21,-133,0,-91,21,-118,0,-56,21,-136,0,-92,21,-116,0,-55,21,-137,0,-94,21,-114,0,-55,21,-138,0,-94,21,-113,0,-56,21,-138,0,-94,21,-24,0,-3,21,-85,0,-57,21,-137,0,-96,21,-19,0,-9,21,-82,0,-57,21,-137,0,-96,21,-18,0,-13,21,-79,0,-58,21,-136,0,-98,21,-15,0,-16,21,-77,0,-59,21,-134,0,-99,21,-14,0,-18,21,-76,0,-60,21,-133,0,-100,21,-12,0,-18,21,-77,0,-61,21,-93,0,-8,21,-3,0,-10,21,-17,0,-103,21,-10,0,-17,21,-78,0,-62,21,-88,0,-12,21,-3,0,-14,21,-13,0,-105,21,-7,0,-18,21,-78,0,-63,21,-26,0,-5,21,-52,0,-16,21,-3,0,-17,21,-10,0,-106,21,-2,0,-22,21,-78,0,-64,21,-24,0,-6,21,-49,0,-13,21,-16,0,-14,21,-6,0,-130,21,-78,0,-66,21,-20,0,-8,21,-48,0,-11,21,-22,0,-11,21,-4,0,-119,21,-9,0,-5,21,-77,0,-68,21,-7,0,-2,21,-6,0,-12,21,-45,0,-10,21,-31,0,-7,21,-2,0,-116,21,-13,0,-4,21,-77,0,-96,21,-44,0,-8,21,-34,0,-28,21,-2,0,-92,21,-17,0,-2,21,-75,0,-98,21,-43,0,-7,21,-39,0,-24,21,-4,0,-90,21,-95,0,-99,21,-41,0,-8,21,-40,0,-23,21,-5,0,-93,21,-91,0,-99,21,-40,0,-8,21,-42,0,-22,21,-6,0,-95,21,-88,0,-99,21,-39,0,-7,21,-44,0,-23,21,-7,0,-94,21,-85,0,-102,21,-37,0,-6,21,-46,0,-23,21,-10,0,-92,21,-84,0,-102,21,-37,0,-5,21,-46,0,-24,21,-21,0,-84,21,-81,0,-102,21,-36,0,-5,21,-47,0,-24,21,-23,0,-7,21,-6,0,-70,21,-80,0,-102,21,-35,0,-5,21,-46,0,
-26,21,-40,0,-64,21,-82,0,-103,21,-33,0,-6,21,-45,0,-27,21,-43,0,-60,21,-83,0,-104,21,-31,0,-6,21,-44,0,-29,21,-44,0,-57,21,-84,0,-108,21,-27,0,-7,21,-42,0,-32,21,-47,0,-52,21,-85,0,-113,21,-20,0,-9,21,-39,0,-35,21,-49,0,-50,21,-85,0,-118,21,-13,0,-12,21,-35,0,-38,21,-49,0,-51,21,-84,0,-119,21,-8,0,-17,21,-31,0,-41,21,-50,0,-52,21,-82,0,-113,21,-12,0,-22,21,-22,0,-48,21,-49,0,-53,21,-79,0,-112,21,-16,0,-91,21,-49,0,-55,21,-77,0,-111,21,-18,0,-90,21,-49,0,-58,21,-74,0,-77,21,-2,0,-29,21,-21,0,-90,21,-49,0,-60,21,-72,0,-72,21,-12,0,-22,21,-22,0,-92,21,-48,0,-62,21,-70,0,-66,21,-21,0,-17,21,-23,0,-94,21,-47,0,-64,21,-68,0,-63,21,-24,0,-14,21,-25,0,-96,21,-45,0,-66,21,-66,0,-61,21,-28,0,-11,21,-26,0,-99,21,-43,0,-67,21,-65,0,-59,21,-31,0,-8,21,-27,0,-101,21,-42,0,-68,21,-63,0,-59,21,-32,0,-7,21,-26,0,-104,21,-41,0,-70,21,-60,0,-59,21,-33,0,-5,21,-27,0,-106,21,-39,0,-71,21,-59,0,-60,21,-32,0,-6,21,-25,0,-108,21,-38,0,-73,21,-58,0,-60,21,-32,0,-4,21,-25,0,-110,21,-38,0,-73,21,-57,0,-63,21,-30,0,-3,21,-24,0,-111,21,-39,0,-74,21,-55,0,-66,21,-28,0,1,21,-23,0,-113,21,-39,0,-76,21,-53,0,-69,21,-48,0,-113,21,-41,0,-77,21,-50,0,-72,21,-46,0,-113,21,-41,0,-78,21,-48,0,-74,21,-45,0,-112,21,-43,0,-79,21,-44,0,-78,21,-43,0,-112,21,-44,0,-79,21,-42,0,-80,21,-43,0,-110,21,-46,0,-80,21,-37,0,-85,21,-41,0,
-109,21,-48,0,-80,21,-34,0,-88,21,-41,0,-107,21,-50,0,-80,21,-29,0,-94,21,-40,0,-106,21,-51,0,-61,21,-12,0,-7,21,-26,0,-97,21,-40,0,-104,21,-54,0,-56,21,-19,0,-4,21,-25,0,-99,21,-39,0,-103,21,-55,0,-53,21,-50,0,-100,21,-39,0,-102,21,-56,0,-51,21,-52,0,-101,21,-38,0,-102,21,-57,0,-49,21,-53,0,-102,21,-38,0,-100,21,-60,0,-46,21,-55,0,-102,21,-10,0,1,21,-27,0,-99,21,-62,0,-44,21,-57,0,-101,21,-8,0,-2,21,-28,0,-97,21,-65,0,-42,21,-61,0,-99,21,-4,0,-4,21,-29,0,-94,21,-68,0,-42,21,-65,0,-101,21,-31,0,-91,21,-71,0,-42,21,-66,0,-99,21,-33,0,-89,21,-72,0,-42,21,-67,0,-96,21,-36,0,-86,21,-74,0,-41,21,-69,0,-93,21,-39,0,-84,21,-43,0,-6,21,-26,0,-41,21,-69,0,-63,21,1,0,-27,21,-43,0,-82,21,-36,0,-13,21,-25,0,-41,21,-70,0,-62,21,-2,0,-26,21,-47,0,-79,21,-34,0,-16,21,-18,0,-2,21,-3,0,-42,21,-71,0,-60,21,-4,0,-23,21,-53,0,-77,21,-29,0,-18,21,-15,0,-6,21,-2,0,-43,21,-71,0,-60,21,-7,0,-18,21,-58,0,-75,21,-26,0,-20,21,-14,0,-6,21,-2,0,-43,21,-72,0,-59,21,-9,0,-15,21,-64,0,-72,21,-23,0,-21,21,-13,0,-7,21,1,0,-45,21,-72,0,-59,21,-11,0,-11,21,-67,0,-71,21,-20,0,-21,21,-15,0,-54,21,-71,0,-59,21,-13,0,-6,21,-73,0,-69,21,-17,0,-17,21,-20,0,-55,21,-72,0,-58,21,-94,0,-67,21,-14,0,-18,21,-21,0,-56,21,-72,0,-58,21,-95,0,-67,21,-11,0,-22,21,-17,0,-58,21,-73,0,-58,21,-95,0,-102,21,-10,0,-63,21,-72,0,
-58,21,-95,0,-175,21,-72,0,-59,21,-94,0,-176,21,-71,0,-59,21,-94,0,-176,21,-71,0,-60,21,-93,0,-176,21,-72,0,-60,21,-91,0,-178,21,-71,0,-62,21,-89,0,-178,21,-71,0,-63,21,-87,0,-179,21,-71,0,-64,21,-85,0,-181,21,-19,0,-2,21,-49,0,-66,21,-83,0,-174,21,-2,0,-6,21,-17,0,-3,21,-49,0,-78,21,-70,0,-174,21,-4,0,-5,21,-16,0,-4,21,-49,0,-80,21,-67,0,-174,21,-6,0,-4,21,-15,0,-6,21,-48,0,-81,21,-65,0,-175,21,-8,0,-3,21,-13,0,-8,21,-47,0,-82,21,-62,0,-177,21,-9,0,-4,21,-11,0,-9,21,-45,0,-84,21,-59,0,-11,21,1,0,-168,21,-9,0,-5,21,-9,0,-11,21,-43,0,-85,21,-57,0,-10,21,-3,0,-170,21,-8,0,-6,21,-7,0,-11,21,-42,0,-86,21,-55,0,-10,21,-5,0,-170,21,-9,0,-6,21,-6,0,-10,21,-42,0,-87,21,-62,0,1,21,-7,0,-172,21,-7,0,-7,21,-6,0,-9,21,-42,0,-88,21,-68,0,-173,21,-8,0,-6,21,-5,0,-9,21,-43,0,-88,21,-68,0,-162,21,-7,0,-6,21,-6,0,-6,21,-5,0,-9,21,-42,0,-89,21,-67,0,-162,21,-9,0,-5,21,-6,0,-5,21,-6,0,-8,21,-43,0,-89,21,-67,0,-161,21,-11,0,-5,21,-5,0,-4,21,-7,0,-8,21,-43,0,-88,21,-67,0,-161,21,-12,0,-7,21,-2,0,-5,21,-6,0,-9,21,-43,0,-88,21,-66,0,-161,21,-14,0,-12,21,-7,0,-7,21,-46,0,-87,21,-65,0,-161,21,-16,0,-10,21,-7,0,-7,21,-47,0,-86,21,-66,0,-160,21,-18,0,-9,21,-6,0,-7,21,-48,0,-86,21,-65,0,-160,21,-22,0,-4,21,-8,0,-4,21,-52,0,-85,21,-65,0,-159,21,-91,0,-85,21,-63,0,
-160,21,-92,0,-86,21,-61,0,-161,21,-93,0,-87,21,-58,0,-161,21,-94,0,-88,21,-55,0,-162,21,-95,0,-91,21,-51,0,-163,21,-95,0,-94,21,-45,0,-165,21,-96,0,-97,21,-40,0,-166,21,-97,0,-102,21,-31,0,-169,21,-98,0,-107,21,-19,0,-175,21,-99,0,-115,21,-9,0,-176,21,-91,0,1,21,-8,0,-299,21,-92,0,-2,21,-7,0,-298,21,-93,0,-3,21,-6,0,-297,21,-94,0,-3,21,-6,0,-296,21,-94,0,-5,21,-5,0,-296,21,-94,0,-5,21,-5,0,-295,21,-94,0,-7,21,-4,0,-295,21,-94,0,-7,21,-3,0,-295,21,-94,0,-9,21,-2,0,-295,21,-94,0,-306,21,-94,0,-306,21,-93,0,-306,21,-94,0,-305,21,-94,0,-180,21,-3,0,-123,21,-93,0,-182,21,-3,0,-121,21,-82,0,1,21,-10,0,-184,21,-3,0,-120,21,-81,0,-3,21,-8,0,-186,21,-4,0,-117,21,-81,0,-4,21,-8,0,-187,21,-4,0,-115,21,-82,0,-4,21,-7,0,-189,21,-4,0,-113,21,-82,0,-5,21,-6,0,-190,21,-5,0,-112,21,-81,0,-5,21,-6,0,-192,21,-4,0,-111,21,-81,0,-6,21,-5,0,-194,21,-4,0,-110,21,-81,0,-6,21,-3,0,-196,21,-6,0,-108,21,-22,0,1,21,-57,0,-207,21,-8,0,-104,21,-21,0,-3,21,-56,0,-209,21,-10,0,-101,21,-20,0,-5,21,-54,0,-210,21,-11,0,-100,21,-19,0,-7,21,-53,0,-211,21,-12,0,-98,21,-10,0,-6,21,-3,0,-7,21,-54,0,-212,21,-12,0,-96,21,-8,0,-18,21,-19,0,-3,21,-32,0,-213,21,-12,0,-9,21,-2,0,-8,21,-5,0,-71,21,-6,0,-20,21,-16,0,-5,21,-34,0,-213,21,-12,0,-6,21,-6,0,-5,21,-7,0,-72,21,-2,0,-21,21,-14,0,-6,21,-37,0,-213,21,-12,0,
-5,21,-7,0,-7,21,-4,0,-93,21,-15,0,-6,21,-39,0,-212,21,-13,0,-113,21,-13,0,-10,21,-27,0,1,21,-11,0,-215,21,-11,0,-110,21,-12,0,-12,21,-10,0,-4,21,-14,0,-3,21,-8,0,-220,21,-7,0,-109,21,-12,0,-11,21,-10,0,-9,21,-10,0,-6,21,-6,0,-222,21,-6,0,-104,21,-16,0,-11,21,-9,0,-11,21,-8,0,-8,21,-4,0,-222,21,-8,0,-9,21,-6,0,-84,21,-23,0,-5,21,-10,0,-14,21,-6,0,-233,21,-11,0,-4,21,-12,0,-82,21,-36,0,-17,21,-5,0,-226,21,-3,0,-5,21,-10,0,-4,21,-12,0,-83,21,-33,0,-20,21,-3,0,-228,21,-3,0,-9,21,-5,0,-5,21,-9,0,-86,21,-30,0,-254,21,-3,0,-113,21,-29,0,-255,21,-3,0,-113,21,-28,0,-256,21,-4,0,-112,21,-27,0,-258,21,-4,0,-111,21,-24,0,-261,21,-5,0,-30,21,-7,0,-72,21,-22,0,-266,21,-5,0,-27,21,-11,0,-68,21,-22,0,-268,21,-5,0,-25,21,-13,0,-67,21,-21,0,-270,21,-7,0,-22,21,-14,0,-66,21,-9,0,-3,21,-8,0,-272,21,-7,0,-20,21,-15,0,-67,21,-6,0,-6,21,-6,0,-275,21,-2,0,-23,21,-7,0,-4,21,-4,0,-69,21,-3,0,-7,21,-5,0,-302,21,-4,0,-7,21,-3,0,-386,21,-5,0,-8,21,1,0,-364,21,1,0,-20,21,-6,0,-373,21,-2,0,-18,21,-8,0,-373,21,-4,0,-14,21,-9,0,-374,21,-6,0,-9,21,-10,0,-6,21,-11,1073741845,-358,21,-10,0,-2,21,-13,0,-5,21,-12,1073741845,-359,21,-22,0,-7,21,-12,1073741845,-361,21,-17,0,-10,21,-12,1073741845,-363,21,-14,0,-11,21,-12,1073741845,-368,21,-5,0,-15,21,-12,1073741845,-388,21,-12,1073741845,-388,21,-12,1073741845,-388,21,-12,1073741845,-388,21,-12,1073741845,-388,21,-12,1073741845,
-388,21,-12,1073741845,-11761,21,-37,-2147483648,],},"visible":true,"depth":200,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Areas","instances":[],"visible":true,"depth":300,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Ground","tilesetId":{"name":"tlsWorld","path":"tilesets/tlsWorld/tlsWorld.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":400,"SerialiseHeight":400,"TileCompressedData":[
-160000,2,],},"visible":true,"depth":400,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","spriteId":null,"colour":4278190080,"x":0,"y":0,"htiled":false,"vtiled":false,"hspeed":0.0,"vspeed":0.0,"stretch":false,"animationFPS":15.0,"animationSpeedType":0,"userdefinedAnimFPS":false,"visible":true,"depth":500,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
  ],
  "inheritLayers": false,
  "creationCodeFile": "",
  "inheritCode": false,
  "instanceCreationOrder": [
    {"name":"inst_D63662D_1","path":"rooms/rmWorld/rmWorld.yy",},
    {"name":"inst_7F6CE22C_1","path":"rooms/rmWorld/rmWorld.yy",},
    {"name":"inst_267B9B6D_1","path":"rooms/rmWorld/rmWorld.yy",},
    {"name":"inst_216974EC","path":"rooms/rmWorld/rmWorld.yy",},
    {"name":"inst_6DAE18E3","path":"rooms/rmWorld/rmWorld.yy",},
    {"name":"inst_7CC090F7","path":"rooms/rmWorld/rmWorld.yy",},
    {"name":"inst_DDE5D08","path":"rooms/rmWorld/rmWorld.yy",},
  ],
  "inheritCreationOrder": false,
  "sequenceId": null,
  "roomSettings": {
    "inheritRoomSettings": false,
    "Width": 6400,
    "Height": 6400,
    "persistent": false,
  },
  "viewSettings": {
    "inheritViewSettings": false,
    "enableViews": true,
    "clearViewBackground": false,
    "clearDisplayBuffer": true,
  },
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
}