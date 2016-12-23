					; Energy/weight balance
(let
    (; Individual parameters
     (weight 80)  ; kilograms
     (height 170) ; centimetres
     (age 40)     ; years

					; Food values in kilocalories, typical servings
     (potato 170)
     (cookie 401)
     (zucchini 31)
     (turkey 72)
     (chicken 92)
     (beef-steak 100)
     (kidney-beans 108)
     (lentils 115)
     (broccoli 71)
     (cauliflower 71)
     (yoghurt 80)
     (salmon 122)
     (apple 100)
     (egg 70)
     (bread 81) ; per slice
     )

  (labels (
					; Basal Metabolic Rate, metric, kilocalories
	   (bmr (s)
	     (case s
	       (female (+ 665.1 (* 9.563 weight) (* 1.850 height) (* -4.676 age)))
	       (male (+ 66.5 (* 13.75 weight) (* 5.003 height) (* -6.755 age)))))

					; Exercise, hours, kilocalories
	   (run (hours)
	     (* 7.14 weight hours))
	   
	   (walk (hours)
	     (* 2.85 weight hours))
	   
					; Balance equation
	   (caloric-balance (sum-food sum-exercise basal-metabolic-rate)
	     (+
	      sum-food
	      (- sum-exercise)
	      (- basal-metabolic-rate))))
    
					; Daily kilocalorie estimate
    (let ((kilocalories (caloric-balance
			 (+ (* cookie 16)
			    )
			 
			 (+ (walk 1)
;			    (run 1)
			    )
			 
			 (bmr 'male))))
      
					; a positive number represents a gain in calories
      kilocalories

					; 1kg body fat yields approximately 7000 kilocalories
      
      )))
