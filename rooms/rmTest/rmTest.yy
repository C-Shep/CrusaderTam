{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rmTest",
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
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"UI","instances":[],"visible":true,"depth":0,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_D63662D","properties":[],"isDnd":false,"objectId":{"name":"objRandomEncounter","path":"objects/objRandomEncounter/objRandomEncounter.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":64.0,"y":16.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7F6CE22C","properties":[],"isDnd":false,"objectId":{"name":"objRoomManager","path":"objects/objRoomManager/objRoomManager.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":48.0,"y":16.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_267B9B6D","properties":[],"isDnd":false,"objectId":{"name":"objTam","path":"objects/objTam/objTam.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":128.0,"y":96.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_240190B9","properties":[],"isDnd":false,"objectId":{"name":"objChest","path":"objects/objChest/objChest.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":176.0,"y":96.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_303BB394","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"moveDir","path":"objects/objCharParent/objCharParent.yy",},"objectId":{"name":"objCharParent","path":"objects/objCharParent/objCharParent.yy",},"value":"270",},
          ],"isDnd":false,"objectId":{"name":"objNpcMan","path":"objects/objNpcMan/objNpcMan.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":160.0,"y":64.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_668143D8","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"dialog","path":"objects/objNpcParent/objNpcParent.yy",},"objectId":{"name":"objNpcParent","path":"objects/objNpcParent/objNpcParent.yy",},"value":"global.dialog.lucyTalk",},
          ],"isDnd":false,"objectId":{"name":"objNpcWoman","path":"objects/objNpcWoman/objNpcWoman.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":208.0,"y":80.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3DC8E4C5","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetRoom","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"rmWorld",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetY","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"128",},
          ],"isDnd":false,"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":256.0,"y":80.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_432CBC6A","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"moves","path":"objects/objAiParent/objAiParent.yy",},"objectId":{"name":"objAiParent","path":"objects/objAiParent/objAiParent.yy",},"value":"False",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"shopkeep","path":"objects/objNpcParent/objNpcParent.yy",},"objectId":{"name":"objNpcParent","path":"objects/objNpcParent/objNpcParent.yy",},"value":"\"Town1\"",},
          ],"isDnd":false,"objectId":{"name":"objNpcMan","path":"objects/objNpcMan/objNpcMan.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":272.0,"y":144.0,},
      ],"visible":true,"depth":100,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":"none","properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Walls","tilesetId":{"name":"tlsWorld","path":"tilesets/tlsWorld/tlsWorld.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":40,"SerialiseHeight":40,"TileCompressedData":[
-163,-2147483648,4,0,-2147483648,-2147483648,1,-8,-2147483648,-3,1,-25,-2147483648,4,0,-2147483648,-2147483648,1,-8,-2147483648,3,1,-2147483648,1,-25,-2147483648,4,0,-2147483648,-2147483648,1,-8,-2147483648,3,1,-2147483648,1,-26,-2147483648,3,
0,-2147483648,1,-37,-2147483648,3,0,-2147483648,1,-37,-2147483648,-3,0,-6,1,-1227,-2147483648,],},"visible":true,"depth":200,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Areas","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"Goblin","properties":[],"isDnd":false,"objectId":{"name":"objEncounterArea","path":"objects/objEncounterArea/objEncounterArea.yy",},"inheritCode":false,"hasCreationCode":true,"colour":4294967295,"rotation":0.0,"scaleX":2.5,"scaleY":2.5,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":160.0,"y":384.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"Groove","properties":[],"isDnd":false,"objectId":{"name":"objEncounterArea","path":"objects/objEncounterArea/objEncounterArea.yy",},"inheritCode":false,"hasCreationCode":true,"colour":4294967295,"rotation":0.0,"scaleX":2.5,"scaleY":2.5,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":480.0,"y":384.0,},
      ],"visible":true,"depth":300,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Ground","tilesetId":{"name":"tlsWorld","path":"tilesets/tlsWorld/tlsWorld.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":40,"SerialiseHeight":40,"TileCompressedData":[
-1600,2,],},"visible":true,"depth":400,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Random1","tilesetId":{"name":"tlsWorld","path":"tilesets/tlsWorld/tlsWorld.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":40,"SerialiseHeight":40,"TileCompressedData":[
-20,1,-20,-2147483648,-20,1,-20,-2147483648,-20,1,-20,-2147483648,-20,1,-20,-2147483648,-20,1,-20,-2147483648,-20,1,-20,-2147483648,-20,1,-20,-2147483648,-20,1,-20,-2147483648,-20,1,-20,-2147483648,-20,1,-20,-2147483648,
-20,1,-1180,-2147483648,],},"visible":true,"depth":500,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Random2","tilesetId":{"name":"tlsWorld","path":"tilesets/tlsWorld/tlsWorld.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":40,"SerialiseHeight":40,"TileCompressedData":[
-20,-2147483648,-20,1,-20,-2147483648,-20,1,-20,-2147483648,-20,1,-20,-2147483648,-20,1,-20,-2147483648,-20,1,-20,-2147483648,-20,1,-20,-2147483648,-20,1,-20,-2147483648,-20,1,-20,-2147483648,-20,1,-20,-2147483648,-20,1,
-20,-2147483648,-20,1,-1160,-2147483648,],},"visible":true,"depth":600,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","spriteId":null,"colour":4278190080,"x":0,"y":0,"htiled":false,"vtiled":false,"hspeed":0.0,"vspeed":0.0,"stretch":false,"animationFPS":15.0,"animationSpeedType":0,"userdefinedAnimFPS":false,"visible":true,"depth":700,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
  ],
  "inheritLayers": false,
  "creationCodeFile": "",
  "inheritCode": false,
  "instanceCreationOrder": [
    {"name":"inst_D63662D","path":"rooms/rmTest/rmTest.yy",},
    {"name":"inst_7F6CE22C","path":"rooms/rmTest/rmTest.yy",},
    {"name":"inst_267B9B6D","path":"rooms/rmTest/rmTest.yy",},
    {"name":"inst_240190B9","path":"rooms/rmTest/rmTest.yy",},
    {"name":"Goblin","path":"rooms/rmTest/rmTest.yy",},
    {"name":"Groove","path":"rooms/rmTest/rmTest.yy",},
    {"name":"inst_303BB394","path":"rooms/rmTest/rmTest.yy",},
    {"name":"inst_668143D8","path":"rooms/rmTest/rmTest.yy",},
    {"name":"inst_3DC8E4C5","path":"rooms/rmTest/rmTest.yy",},
    {"name":"inst_432CBC6A","path":"rooms/rmTest/rmTest.yy",},
  ],
  "inheritCreationOrder": false,
  "sequenceId": null,
  "roomSettings": {
    "inheritRoomSettings": false,
    "Width": 640,
    "Height": 640,
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