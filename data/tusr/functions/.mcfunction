#> tusr:

# Spyglassの機能を使ってTUSBのfunctionへ飛ぶためのやつ
function area:entered/
function area:system/cloudia/no_job
function player:initialized
function skill:act/summoner/pompom/act0
function entity:unique_floor/custom_floor
function skill:enemy/damage/explosion
function item:sign/click/teleport
function skill:act/white_mage/clear/cure/level5
function skill:data/common
execute in area:flying_island run say a
function effects:confuse/apply
function player:tips/show
function player:trigger/kill
function player:trigger/death
function area:jump_to/cloudia/tutorial
