;Timer com uC8051
;16/09/20-TDM2
            org 00h
				
			mov tmod,#01h
            mov th0,#high(65535-50000)
            mov tl0,low(65535-50000)
            setb tr0

espera:
            jnb tf0,espera
			clr tr0
            clr	tf0		
			
			end