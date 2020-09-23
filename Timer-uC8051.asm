;Timer-50ms com o uC8051
;16/09/2020-TDM2

            org 00h
            
            mov tmod,#01h                 ;contador 16-bits
            mov th0,#high(65533-50000)    ;somatoria colocando a parte alta  
            mov tlo,#low(65533-50000)	  ;somatoria colocando a parte baixa 		
			setb tr0                      ;ligado o timer

espera:
            jnb tf0,espera 
			clr tr0                       ;desliga timer
			clr tf0
			end                           ;fim
			