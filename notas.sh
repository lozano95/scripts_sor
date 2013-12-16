#!/bin/bash
nota=$2
nombre=$1

if [ "$nota" == "0" ]; then
  calificacion="muy deficiente" 
else
  if [ "$nota" == "1" ]; then
   calificacion="dedicate a vendimiar"
  else
    if [ "$nota" == "2" ]; then 
      calificacion="tu nota es muy deficiente"
    else 
      if [ "$nota" == "3" ]; then 
        calificacion="tu nota es muy deficiente"
      else
        if [ "$nota" == "4" ]; then
          calificacion="tu nota es insuficiente"
        else
          if [ "$nota" == "5" ]; then
            calificacion="tu nota es suficiente "
          else   
            if [ "$nota" == "6" ]; then
              calificacion="tu nota es bien "
            else    
              if [ "$ntoa" == "7" ]; then               
		  calificacion="tu nota es notable "
              else 
                if [ "$nota" == "8" ]; then
                 	 calificacion="tu nota es notable "
                else  
                  if [ "$nota:" == "9" ]; then                
				 calificacion="tu nota es sobresaliente "
                  else 
			if [ "$2" == "10" ]; then  
  				 calificacion="tu nota es sobresaliente "
			else   
 				 echo "$1, tu nota es erronea "
 
                    fi
                  fi
                fi 
              fi
            fi
          fi
        fi
      fi
    fi  
  fi
fi    

echo "$nombre tu calificacion es $calificacion "
