Ajout de l'ia de base des followers (vraiment basique)

Ajouter la ligne: move_queue=ds_queue_create(); dans le create de perso_obj

Ensuite pour chaque perso (Nate, Oren et Mia) ajouter ce morceau de code dans le Step.

	Pour Nate :

else{
	//Follow Players
	if(global.id_perso==2){var perso = oren_obj;var aDroite = 1;}
	else{var perso = mia_obj; var aDroite = -1;}
	ds_queue_enqueue(move_queue, perso.x);
	ds_queue_enqueue(move_queue, perso.y);
	LAG_STEPS = 20;
	if (ds_queue_size(move_queue) > LAG_STEPS*2) {
		x=ds_queue_dequeue(move_queue);
		y=ds_queue_dequeue(move_queue);		
	}
}

	Pour Oren :

else{
	//Follow Players
	if(global.id_perso==1){var perso = nate_obj;}
	else{var perso = mia_obj;}
	ds_queue_enqueue(move_queue, perso.x);
	ds_queue_enqueue(move_queue, perso.y);
	LAG_STEPS = 10;
	if (ds_queue_size(move_queue) > LAG_STEPS*2) {
		x=ds_queue_dequeue(move_queue);
		y=ds_queue_dequeue(move_queue);		
	}
}

	Pour Mia :

else{
	//Follow Players
	if(global.id_perso==1){var perso = nate_obj;}
	else{var perso = oren_obj;}
	ds_queue_enqueue(move_queue, perso.x);
	ds_queue_enqueue(move_queue, perso.y);
	LAG_STEPS = 15;
	if (ds_queue_size(move_queue) > LAG_STEPS*2) {
		x=ds_queue_dequeue(move_queue);
		y=ds_queue_dequeue(move_queue);		
	}
}
