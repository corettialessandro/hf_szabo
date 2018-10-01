function HFCALC = HFCALC(IOP,N,R,ZETA1,ZETA2,ZA,ZB)
% C*********************************************************************
%       SUBROUTINE HFCALC(IOP,N,R,ZETA1,ZETA2,ZA,ZB)
% C
% C DOES A HARTREE-FOCK CALCULATION FOR A TWO-ELECTRON DIATOMIC
% C USING THE 1S MINIMAL STO-NG BASIS SET
% C MINIMAL BASIS SET HAS BASIS FUNCTIONS 1 AND 2 ON NUCLEI A AND B
% C
% C IOP=0 NO PRINTING WHATSOEVER (TO OPTIMIZE EXPONENTS, SAY)
% C IOP=1 PRINT ONLY CONVERGED RESULTS
% C IOP=2 PRINT EVERY ITERATION
% C N STO-NG CALCULATION (N=1,2 OR 3)
% C R BONDLENGTH (AU)
% C ZETA1 SLATER ORBITAL EXPONENT (FUNCTION 1)
% C ZETA2 SLATER ORBITAL EXPONENT (FUNCTION 2)
% C ZA ATOMIC NUMBER (ATOM A)
% C ZB ATOMIC NUMBER (ATOM B)
% C
% C*********************************************************************

if IOP~=0
disp([' STO-', num2str(N),'G FOR ATOMIC NUMBERS ',num2str(ZA),' AND ',num2str(ZB)])
end
   
% CALCULATE ALL THE ONE AND TWO ELECTRON INTEGRALS
disp ' '
disp('----------INTGRL------------')
disp ' '
INTGRL(IOP,N,R,ZETA1,ZETA2,ZA,ZB)
       
% BE INEFFICIENT AND PUT ALL INTEGRALS IN PRETTY ARRAYS
disp ' '
disp('----------COLECT------------')
disp ' '
COLECT(IOP,N,R,ZETA1,ZETA2,ZA,ZB)
       
% PERFORM THE SCF CALCULATION
disp ' '
disp('----------SCF------------')
disp ' '
SCF(IOP,N,R,ZETA1,ZETA2,ZA,ZB)

end
