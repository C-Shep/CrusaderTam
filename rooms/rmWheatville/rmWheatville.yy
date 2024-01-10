{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rmWheatville",
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
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_D63662D_2_3","properties":[],"isDnd":false,"objectId":{"name":"objRandomEncounter","path":"objects/objRandomEncounter/objRandomEncounter.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":64.0,"y":528.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7F6CE22C_3_3","properties":[],"isDnd":false,"objectId":{"name":"objRoomManager","path":"objects/objRoomManager/objRoomManager.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":48.0,"y":528.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_267B9B6D_2_2","properties":[],"isDnd":false,"objectId":{"name":"objTam","path":"objects/objTam/objTam.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":320.0,"y":512.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_240190B9_1_1","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"loot","path":"objects/objChest/objChest.yy",},"objectId":{"name":"objChest","path":"objects/objChest/objChest.yy",},"value":"Weed",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"chestID","path":"objects/objChest/objChest.yy",},"objectId":{"name":"objChest","path":"objects/objChest/objChest.yy",},"value":"14",},
          ],"isDnd":false,"objectId":{"name":"objChest","path":"objects/objChest/objChest.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":496.0,"y":128.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_668143D8_1_2","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"dialog","path":"objects/objNpcParent/objNpcParent.yy",},"objectId":{"name":"objNpcParent","path":"objects/objNpcParent/objNpcParent.yy",},"value":"global.dialog.wheatvilleWoman2",},
          ],"isDnd":false,"objectId":{"name":"objNpcWoman","path":"objects/objNpcWoman/objNpcWoman.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":320.0,"y":432.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4492734B_1","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetRoom","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"rmWorld",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetX","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"5177 ",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetY","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"3576",},
          ],"isDnd":false,"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":4.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":288.0,"y":544.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_12D251C4","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetRoom","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"rmWorld",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetX","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"5174 ",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetY","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"3549",},
          ],"isDnd":false,"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":4.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":288.0,"y":80.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5C26E10E","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"dialog","path":"objects/objNpcParent/objNpcParent.yy",},"objectId":{"name":"objNpcParent","path":"objects/objNpcParent/objNpcParent.yy",},"value":"global.dialog.wheatvilleMan2",},
          ],"isDnd":false,"objectId":{"name":"objNpcMan","path":"objects/objNpcMan/objNpcMan.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":192.0,"y":336.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_61280A62","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"dialog","path":"objects/objNpcParent/objNpcParent.yy",},"objectId":{"name":"objNpcParent","path":"objects/objNpcParent/objNpcParent.yy",},"value":"global.dialog.wheatvilleMan1",},
          ],"isDnd":false,"objectId":{"name":"objNpcMan2","path":"objects/objNpcMan2/objNpcMan2.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":288.0,"y":176.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1DE7042B","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"dialog","path":"objects/objNpcParent/objNpcParent.yy",},"objectId":{"name":"objNpcParent","path":"objects/objNpcParent/objNpcParent.yy",},"value":"global.dialog.wheatvilleWoman1",},
          ],"isDnd":false,"objectId":{"name":"objNpcWoman2","path":"objects/objNpcWoman2/objNpcWoman2.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":336.0,"y":304.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_66DE17A3","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"dialog","path":"objects/objNpcParent/objNpcParent.yy",},"objectId":{"name":"objNpcParent","path":"objects/objNpcParent/objNpcParent.yy",},"value":"global.dialog.wheatvilleMan3NoPostino",},
          ],"isDnd":false,"objectId":{"name":"objNpcMan2","path":"objects/objNpcMan2/objNpcMan2.yy",},"inheritCode":false,"hasCreationCode":true,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":496.0,"y":160.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_54E3D6B6","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"dialog","path":"objects/objNpcParent/objNpcParent.yy",},"objectId":{"name":"objNpcParent","path":"objects/objNpcParent/objNpcParent.yy",},"value":"global.dialog.scarecrowNoReply",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"moves","path":"objects/objAiParent/objAiParent.yy",},"objectId":{"name":"objAiParent","path":"objects/objAiParent/objAiParent.yy",},"value":"False",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"shouldTurn","path":"objects/objNpcParent/objNpcParent.yy",},"objectId":{"name":"objNpcParent","path":"objects/objNpcParent/objNpcParent.yy",},"value":"False",},
          ],"isDnd":false,"objectId":{"name":"objNpcScarecrow","path":"objects/objNpcScarecrow/objNpcScarecrow.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":128.0,"y":480.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_73BA00EA","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"dialog","path":"objects/objNpcParent/objNpcParent.yy",},"objectId":{"name":"objNpcParent","path":"objects/objNpcParent/objNpcParent.yy",},"value":"global.dialog.scarecrowNoReply",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"moves","path":"objects/objAiParent/objAiParent.yy",},"objectId":{"name":"objAiParent","path":"objects/objAiParent/objAiParent.yy",},"value":"False",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"shouldTurn","path":"objects/objNpcParent/objNpcParent.yy",},"objectId":{"name":"objNpcParent","path":"objects/objNpcParent/objNpcParent.yy",},"value":"False",},
          ],"isDnd":false,"objectId":{"name":"objNpcScarecrow","path":"objects/objNpcScarecrow/objNpcScarecrow.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":112.0,"y":384.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_31641731","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetRoom","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"rmWheatvilleInside",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetX","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"423",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetY","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"887",},
          ],"isDnd":false,"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":176.0,"y":160.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1A28C4D","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetRoom","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"rmWheatvilleInside",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetX","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"343",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetY","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"615",},
          ],"isDnd":false,"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":368.0,"y":256.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_641A894E","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetRoom","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"rmWheatvilleInside",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetY","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"1095",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetX","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"791",},
          ],"isDnd":false,"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":2.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":464.0,"y":256.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_40E00CD2","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetRoom","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"rmWheatvilleInside",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetX","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"678",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetY","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"262",},
          ],"isDnd":false,"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":368.0,"y":384.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3B3EEBE0","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetRoom","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"rmWheatvilleInside",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetX","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"391",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetY","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"247",},
          ],"isDnd":false,"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":256.0,"y":448.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7FF45C5F","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetRoom","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"rmWheatvilleInside",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetX","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"246",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetY","path":"objects/objDoor/objDoor.yy",},"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"value":"1191",},
          ],"isDnd":false,"objectId":{"name":"objDoor","path":"objects/objDoor/objDoor.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":96.0,"y":320.0,},
      ],"visible":true,"depth":100,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":"none","properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Walls","tilesetId":{"name":"tlsWheatville","path":"tilesets/tlsWheatville/tlsWheatville.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":40,"SerialiseHeight":40,"TileCompressedData":[
-244,0,-14,42,-4,0,-14,42,-8,0,1,42,-21,0,1,42,-8,0,1,42,-8,0,1,42,-3,0,-5,9,3,25,0,4,-6,0,7,15,0,15,0,42,
0,4,-4,0,3,4,0,42,-8,0,1,42,-3,0,-2,10,3,32,40,16,-13,0,1,42,-8,0,1,42,-8,0,1,42,-3,0,9,14,11,14,0,11,
25,0,0,4,-5,0,8,15,0,15,0,42,0,0,4,-5,0,1,42,-8,0,1,42,-21,0,1,42,-5,0,4,4,0,0,42,-8,0,1,42,-17,0,
5,22,9,23,0,42,-8,0,1,42,-8,0,1,42,-17,0,6,10,46,10,0,42,0,-6,9,2,0,42,-8,0,1,42,-17,0,6,53,54,55,0,42,
0,-6,10,2,0,42,-8,0,1,42,-3,0,-9,21,-5,0,7,11,62,11,0,42,0,11,-3,14,4,11,14,0,42,-8,0,3,42,0,0,-11,21,-4,
0,14,14,0,14,0,42,0,11,0,0,14,11,14,0,42,-8,0,1,42,-4,0,-8,21,-9,0,1,42,-8,0,1,42,-8,0,4,42,0,0,4,-3,
0,-6,21,-9,0,1,41,-8,0,1,42,-8,0,1,42,-21,0,5,41,43,42,0,0,-5,42,-8,0,1,42,-30,0,1,42,-8,0,1,42,-19,0,-2,
9,-9,0,1,42,-8,0,1,42,-17,0,-2,9,-2,10,2,0,4,-7,0,1,42,-8,0,1,42,-10,0,3,15,0,15,-4,0,4,10,24,11,11,-9,
0,1,42,-8,0,1,42,-9,0,3,15,0,15,-5,0,6,11,0,11,11,0,4,-7,0,1,42,-8,0,1,42,-30,0,1,42,-8,0,1,42,-9,0,
-4,9,-15,0,3,4,0,42,-8,0,1,42,-9,0,-4,10,-17,0,1,42,-8,0,1,42,-9,0,-2,11,2,0,11,-17,0,1,42,-8,0,1,42,-17,
0,-3,9,1,0,-3,9,-6,0,1,42,-8,0,1,42,-17,0,-3,10,1,0,-3,10,-2,0,1,4,-3,0,1,42,-8,0,1,42,-17,0,7,11,14,
11,0,14,11,14,-6,0,1,42,-8,0,1,42,-30,0,1,42,-8,0,-14,42,-4,0,-14,42,-244,0,],},"visible":true,"depth":200,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Areas","instances":[],"visible":true,"depth":300,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Ground","tilesetId":{"name":"tlsWheatville","path":"tilesets/tlsWheatville/tlsWheatville.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":40,"SerialiseHeight":40,"TileCompressedData":[
-18,7,4,2,12,12,2,-36,7,4,2,12,12,2,-36,7,4,2,12,12,2,-36,7,4,2,12,12,2,-36,7,4,2,12,12,2,-21,7,-16,2,-2,
12,-16,2,-6,7,-16,2,-2,12,-16,2,-6,7,-16,2,-2,12,-16,2,-6,7,-16,2,-2,12,-16,2,-6,7,-7,2,-3,10,-6,2,-2,12,-16,2,-6,
7,-8,2,1,3,-7,2,-2,12,-16,2,-6,7,-8,2,1,12,-7,2,-2,12,-16,2,-6,7,-5,2,-13,12,-16,2,-6,7,-5,2,-13,12,-2,2,1,
10,-13,2,-6,7,-16,2,-2,12,4,2,14,2,14,-12,2,-6,7,-16,2,-2,12,-2,2,1,14,-13,2,-6,7,-16,2,-2,12,-2,2,1,3,-5,2,
-2,3,-6,2,-6,7,-16,2,-2,12,-2,2,1,12,-5,2,-2,12,-6,2,-6,7,-16,2,-5,12,-5,2,-2,12,-6,2,-6,7,-16,2,-2,12,-8,2,
-2,12,-6,2,-6,7,-3,2,2,39,2,-13,12,-8,2,-2,12,-6,2,-6,7,-5,2,-13,12,-8,2,-2,12,-6,2,-6,7,-8,2,-2,12,-6,2,-2,
12,-8,2,-2,12,-6,2,-6,7,-3,2,-4,7,3,2,12,12,-6,2,-2,12,-2,2,1,10,-5,2,-2,12,-6,2,-6,7,-3,2,-4,7,3,2,12,
12,-6,2,-2,12,-2,2,1,3,-5,2,-2,12,-6,2,-6,7,-3,2,-4,7,3,2,12,12,-6,2,-2,12,-2,2,1,12,-5,2,-2,12,-6,2,-6,
7,-3,2,-4,7,3,2,12,12,-6,2,-12,12,-6,2,-6,7,-8,2,-2,12,-6,2,-12,12,-6,2,-6,7,-3,2,-4,7,3,2,12,12,-3,2,8,
3,2,2,12,12,2,2,12,-3,2,1,12,-9,2,-6,7,-3,2,-4,7,3,2,12,12,-3,2,5,12,2,2,12,12,-16,2,-6,7,-3,2,-4,7,
1,2,-10,12,-16,2,-6,7,-3,2,-4,7,1,2,-10,12,-16,2,-6,7,-16,2,-2,12,-16,2,-6,7,-16,2,-2,12,-16,2,-6,7,-16,2,-2,12,
-16,2,-21,7,4,2,12,12,2,-36,7,4,2,12,12,2,-36,7,4,2,12,12,2,-36,7,4,2,12,12,2,-36,7,4,2,12,12,2,-18,7,],},"visible":true,"depth":400,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","spriteId":null,"colour":4278190080,"x":0,"y":0,"htiled":false,"vtiled":false,"hspeed":0.0,"vspeed":0.0,"stretch":false,"animationFPS":15.0,"animationSpeedType":0,"userdefinedAnimFPS":false,"visible":true,"depth":500,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
  ],
  "inheritLayers": false,
  "creationCodeFile": "",
  "inheritCode": false,
  "instanceCreationOrder": [
    {"name":"inst_D63662D_2_3","path":"rooms/rmWheatville/rmWheatville.yy",},
    {"name":"inst_7F6CE22C_3_3","path":"rooms/rmWheatville/rmWheatville.yy",},
    {"name":"inst_267B9B6D_2_2","path":"rooms/rmWheatville/rmWheatville.yy",},
    {"name":"inst_668143D8_1_2","path":"rooms/rmWheatville/rmWheatville.yy",},
    {"name":"inst_240190B9_1_1","path":"rooms/rmWheatville/rmWheatville.yy",},
    {"name":"inst_4492734B_1","path":"rooms/rmWheatville/rmWheatville.yy",},
    {"name":"inst_12D251C4","path":"rooms/rmWheatville/rmWheatville.yy",},
    {"name":"inst_5C26E10E","path":"rooms/rmWheatville/rmWheatville.yy",},
    {"name":"inst_61280A62","path":"rooms/rmWheatville/rmWheatville.yy",},
    {"name":"inst_1DE7042B","path":"rooms/rmWheatville/rmWheatville.yy",},
    {"name":"inst_66DE17A3","path":"rooms/rmWheatville/rmWheatville.yy",},
    {"name":"inst_54E3D6B6","path":"rooms/rmWheatville/rmWheatville.yy",},
    {"name":"inst_73BA00EA","path":"rooms/rmWheatville/rmWheatville.yy",},
    {"name":"inst_31641731","path":"rooms/rmWheatville/rmWheatville.yy",},
    {"name":"inst_1A28C4D","path":"rooms/rmWheatville/rmWheatville.yy",},
    {"name":"inst_641A894E","path":"rooms/rmWheatville/rmWheatville.yy",},
    {"name":"inst_40E00CD2","path":"rooms/rmWheatville/rmWheatville.yy",},
    {"name":"inst_3B3EEBE0","path":"rooms/rmWheatville/rmWheatville.yy",},
    {"name":"inst_7FF45C5F","path":"rooms/rmWheatville/rmWheatville.yy",},
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