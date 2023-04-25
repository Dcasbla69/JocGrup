extends Area2D



enum DROPOFF { Cooldown,HitOnce,DissableHitBox }
export(DROPOFF) var HurtBoxType = DROPOFF.empty()
