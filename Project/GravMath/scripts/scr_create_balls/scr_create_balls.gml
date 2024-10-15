function scr_create_balls(nBalls) {
    for (i = 0; i < nBalls; i++) {
        // Generamos bolas con un rango basado en la dificultad, permitiendo números positivos y negativos
        balls[i] = irandom_range(-12 - 6 * global.dificulty, 12 + 6 * global.dificulty);
        
        // Generamos soluciones aleatorias que pueden ser positivas o negativas, también ajustadas por la dificultad
        solutionBalls[3*i] = irandom_range(-5 - 2 * global.dificulty, 5 + 2 * global.dificulty);
        solutionBalls[3*i+1] = irandom_range(-5 - 2 * global.dificulty, 5 + 2 * global.dificulty);
        
        // La tercera solución se ajusta para que la suma de bola y soluciones no sea igual a cero
        solutionBalls[3*i+2] = -(balls[i] + solutionBalls[3*i] + solutionBalls[3*i+1]);
        
        // Verificamos que las soluciones no sumen cero
        if balls[i] + solutionBalls[3*i] + solutionBalls[3*i+1] + solutionBalls[3*i+2] != 0 {
            generated = 0;
            break;
        } else {
            generated = 1;
        }
    }
    
    if generated == 1 {
        out = "Bolas:\n";
        for (i = 0; i < nBalls; i++) {
            out = out + "Bola " + string(balls[i]) + " s1:" + string(solutionBalls[3*i]) 
                    + " s2:" + string(solutionBalls[3*i+1])
                    + " s3:" + string(solutionBalls[3*i+2]) + "\n";
        }
    }
    
    return generated;
}
