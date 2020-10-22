UPDATE vehicleTypes 
SET body_type =  CASE  
					WHEN body_type = 'Car' THEN '1' 
					WHEN body_type = 'Truck' THEN '2'
					WHEN body_type = 'Van' THEN '3'
					WHEN body_type = 'SUV' THEN '4'
					ELSE null
                 END ;
				 
UPDATE vehicleTypes 				 
SET      make = CASE  
					WHEN make = 'Chevrolet' THEN '1' 
					WHEN make = 'Mazda' THEN '2'
					WHEN make = 'Nissan' THEN '3'
					WHEN make = 'Ford' THEN '4'
					WHEN make = 'Volkswagen' THEN '5'
					ELSE null
				  END ;
				  
UPDATE vehicleTypes 
SET     model =  CASE  
					WHEN model = 'Corvette' THEN '1' 
					WHEN model = 'Blazer' THEN '2'
					WHEN model = 'Silverado' THEN '3'
					WHEN model = 'MX-5 Miata' THEN '4'
					WHEN model = 'CX-5' THEN '5'
					WHEN model = 'CX-9' THEN '6' 
					WHEN model = 'Maxima' THEN '7'
					WHEN model = 'Altima' THEN '8'
					WHEN model = 'Titan' THEN '9'
					WHEN model = 'Fusion' THEN '10'
					WHEN model = 'EcoSport' THEN '11'
					WHEN model = 'F-250' THEN '12'
					WHEN model = 'Beetle' THEN '13'
					WHEN model = 'Passat' THEN '14'
					WHEN model = 'Atlas' THEN '15'
					WHEN model = 'Transit-150 Cargo' THEN '16'
					ELSE null
				 END ;
