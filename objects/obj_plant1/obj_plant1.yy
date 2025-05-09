{
  "$GMObject":"",
  "%Name":"obj_plant1",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_player1","path":"objects/obj_player1/obj_player1.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":1,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":1,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":{"name":"obj_shield","path":"objects/obj_shield/obj_shield.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":2,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_plant1",
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
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"anim_walk_left","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"name":"anim_walk_left","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"spr_enemy1_walk_left","path":"sprites/spr_enemy1_walk_left/spr_enemy1_walk_left.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spr_enemy1_walk_left","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"anim_walk_right","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"name":"anim_walk_right","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"spr_enemy1_walk_right","path":"sprites/spr_enemy1_walk_right/spr_enemy1_walk_right.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spr_enemy1_walk_right","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"anim_walk_down","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"name":"anim_walk_down","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"spr_enemy1_walk_down","path":"sprites/spr_enemy1_walk_down/spr_enemy1_walk_down.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spr_enemy1_walk_down","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"anim_walk_up","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"name":"anim_walk_up","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"spr_enemy1_walk_up","path":"sprites/spr_enemy1_walk_up/spr_enemy1_walk_up.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spr_enemy1_walk_up","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"anim_idle","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"name":"anim_idle","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"spr_enemy1_idle","path":"sprites/spr_enemy1_idle/spr_enemy1_idle.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spr_enemy1_idle","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"move_speed","filters":[],"listItems":[],"multiselect":false,"name":"move_speed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":".2","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"anim_attack_left","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"name":"anim_attack_left","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"spr_enemy1_attack_left","path":"sprites/spr_enemy1_attack_left/spr_enemy1_attack_left.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spr_enemy1_attack_left","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"anim_attack_right","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"name":"anim_attack_right","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"spr_enemy1_attack_right","path":"sprites/spr_enemy1_attack_right/spr_enemy1_attack_right.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spr_enemy1_attack_right","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"anim_attack_down","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"name":"anim_attack_down","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"spr_enemy1_attack_down","path":"sprites/spr_enemy1_attack_down/spr_enemy1_attack_down.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spr_enemy1_attack_down","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"anim_attack_up","filters":[
        "GMSprite",
      ],"listItems":[],"multiselect":false,"name":"anim_attack_up","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"spr_enemy1_attack_up","path":"sprites/spr_enemy1_attack_up/spr_enemy1_attack_up.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"spr_enemy1_attack_up","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"anim_death","filters":[],"listItems":[],"multiselect":false,"name":"anim_death","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"obj_plant1_death","path":"objects/obj_plant1_death/obj_plant1_death.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"obj_plant1_death","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"collision_radius","filters":[],"listItems":[],"multiselect":false,"name":"collision_radius","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"10","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"attack_radius","filters":[],"listItems":[],"multiselect":false,"name":"attack_radius","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"50","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"point_value","filters":[],"listItems":[],"multiselect":false,"name":"point_value","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"10","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"hp","filters":[],"listItems":[],"multiselect":false,"name":"hp","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"100","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"damage","filters":[],"listItems":[],"multiselect":false,"name":"damage","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"10","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"i_frames","filters":[],"listItems":[],"multiselect":false,"name":"i_frames","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"10","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"invincible","filters":[],"listItems":[],"multiselect":false,"name":"invincible","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
    {"$GMObjectProperty":"v1","%Name":"this","filters":[],"listItems":[],"multiselect":false,"name":"this","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"obj_plant1","varType":0,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_enemy1_idle",
    "path":"sprites/spr_enemy1_idle/spr_enemy1_idle.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}