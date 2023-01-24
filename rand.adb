package body Rand is
   function initRand return randRange is
      use RandInt;
      gen : Generator;
   begin
      Reset (gen);
      return Random (gen);
   end initRand;
end Rand;
