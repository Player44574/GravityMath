function scr_create_balls(nBalls){
	for (i=0; i<nBalls; i++) {
	    balls[i]=ceil(irandom_range(4,12+6*global.dificulty))
		solutionBalls[3*i]=-floor((irandom_range(1,5+2*global.dificulty)))
		solutionBalls[3*i+1]=-floor((irandom_range(1,5+2*global.dificulty)))
		solutionBalls[3*i+2]=-(floor(balls[i]+solutionBalls[i]+solutionBalls[i+1]))
	}
}