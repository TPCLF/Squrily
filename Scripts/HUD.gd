extends CanvasLayer
var nuts = 0
var coins = 0

func _process(_delta):
	$CoinCounter/CoinCount.text = str(coins)
	$NutCounter/NutCount.text = str(nuts)
func _on_coin_coin_collected():
	coins = coins +1
	#print("Coin!!")


func _on_fall_zone_2_body_entered(_qbody):
	nuts = nuts +1
	#print("Nut!!")
