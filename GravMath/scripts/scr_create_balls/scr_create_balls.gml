function scr_create_balls(nBalls){
	for (i=0; i<nBalls; i++) {
	    balls[i]=ceil(irandom_range(4,12+6*global.dificulty))
		solutionBalls[3*i]=-floor((irandom_range(1,5+2*global.dificulty)))
		solutionBalls[3*i+1]=-(ceil(balls[i]+solutionBalls[i])/2)
		solutionBalls[3*i+2]=-(floor(balls[i]+solutionBalls[i]+solutionBalls[i+1]))
	}
	
	for (j=0; j<nBalls*3; j++) {
	    for (k=0; k<nBalls*3; k++) {
		    if solutionBalls[j]=solutionBalls[k]{duplicate=true; break;}
		}
	}
	
	for (l=0; l<nBalls; l++) {
	    if balls[l]+solutionBalls[3*l]+solutionBalls[3*l+1]+solutionBalls[3*l+2]!=0{duplicate=true; break;}
	}
	
	if not duplicate{
		out="Bolas:\n"
		for (i=0; i<nBalls; i++) {
		    out=out + "Bola" + string(balls[i]) + " s1:" + string(solutionBalls[3*i]) 
			 + " s2:"+ string(solutionBalls[3*i+1])
			 + " s3:"+ string(solutionBalls[3*i+2]) + "\n"
		}
		
		show_message(out)
	}else{
		scr_create_balls(2)
	}
}