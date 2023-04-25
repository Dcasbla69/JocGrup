extends Area2D


enum DROPOFF { Cooldown,HitOnce,DissableHitBox }
export(DROPOFF) var HurtBoxType = DROPOFF.empty()

onready var collision = $CollisionShape2D
onready var dissabletimer = $DisableTimer


signal hurt(damage)
