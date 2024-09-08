function scr_create_balls(nBalls){
	for (i=0; i<nBalls; i++) {
	    balls[i]=ceil(irandom_range(4,12+6*global.dificulty))
		solutionBalls[3*i]=-floor((irandom_range(1,5+2*global.dificulty)))
		solutionBalls[3*i+1]=-floor((irandom_range(1,5+2*global.dificulty)))
		solutionBalls[3*i+2]=-(floor(balls[i]+solutionBalls[i]+solutionBalls[i+1]))
		
		if solutionBalls[3*i]>=0{generated=0 break}
		else if solutionBalls[3*i+1]>=0{generated=0 break}
		else if solutionBalls[3*i+2]>=0{generated=0 break}
		
		else if balls[i]+solutionBalls[3*i]+solutionBalls[3*i+1]+solutionBalls[3*i+2]!=0{generated=0 break}
		else{generated=1}
	}
	
	if generated=1{
		out="Bolas:\n"
		for (i=0; i<nBalls; i++) {
		    out=out + "Bola" + string(balls[i]) + " s1:" + string(solutionBalls[3*i]) 
			 + " s2:"+ string(solutionBalls[3*i+1])
			 + " s3:"+ string(solutionBalls[3*i+2]) + "\n"
		}
	}
	return generated
}