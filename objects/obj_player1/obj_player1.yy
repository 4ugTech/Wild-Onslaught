{
  "$GMObject":"",
  "%Name":"obj_player1",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":1,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_plant1","path":"objects/obj_plant1/obj_plant1.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":2,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_player1",
  "overriddenProperties":[],
  "parent":{
    "name":"Objects",
    "path":"folders/Objects.yy",
  },
  "parentObjectId":null,
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[
    {"x":0.0,"y":0.0,},
    {"x":32.0,"y":0.0,},
    {"x":32.0,"y":32.0,},
    {"x":0.0,"y":32.0,},
  ],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"move_speed","filters":[],"listItems":[],"multiselect":false,"name":"move_speed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"4","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"total_frames","filters":[],"listItems":[],"multiselect":false,"name":"total_frames","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"4","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"idle_frame","filters":[],"listItems":[],"multiselect":false,"name":"idle_frame","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"1","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"anim_walk_left","filters":[],"listItems":[],"multiselect":false,"name":"anim_walk_left","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"spr_player2_walk_left","path":"sprites/spr_player2_walk_left/spr_player2_walk_left.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spr_player2_walk_left","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"anim_walk_right","filters":[],"listItems":[],"multiselect":false,"name":"anim_walk_right","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"spr_player2_walk_right","path":"sprites/spr_player2_walk_right/spr_player2_walk_right.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spr_player2_walk_right","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"anim_attack1","filters":[],"listItems":[],"multiselect":false,"name":"anim_attack1","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"obj_slash1","path":"objects/obj_slash1/obj_slash1.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"obj_slash1","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"anim_attack2","filters":[],"listItems":[],"multiselect":false,"name":"anim_attack2","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"obj_slash2","path":"objects/obj_slash2/obj_slash2.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"obj_slash2","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"damage","filters":[],"listItems":[],"multiselect":false,"name":"damage","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"50","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"attack_cooldown","filters":[],"listItems":[],"multiselect":false,"name":"attack_cooldown","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"60","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"anim_magic_bolt","filters":[],"listItems":[],"multiselect":false,"name":"anim_magic_bolt","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"obj_magic_bolt","path":"objects/obj_magic_bolt/obj_magic_bolt.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"obj_magic_bolt","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"anim_shield","filters":[],"listItems":[],"multiselect":false,"name":"anim_shield","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"obj_shield","path":"objects/obj_shield/obj_shield.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"obj_shield","varType":5,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_player2_walk_right",
    "path":"sprites/spr_player2_walk_right/spr_player2_walk_right.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}