with Ada.Numerics.Discrete_Random;

package Rand is
   type randRange is range 1 .. 100;
   package RandInt is new Ada.Numerics.Discrete_Random (randRange);
   function initRand return randRange;
end Rand;
