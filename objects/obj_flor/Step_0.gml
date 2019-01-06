
// Genera una vida/moneda

if (sprite_index == spr_flor and vida <=0){
	Generar_Corazon(10); //10% de aparecer
	Generar_Moneda(40);  //40% de aparecer
}




//Comprobar si se ha cortado
if (vida <=0) {	
	sprite_index = spr_hierba;
	depth = 1000;	
}