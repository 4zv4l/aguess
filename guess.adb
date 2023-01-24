with Ada.Text_IO;   use Ada.Text_IO;
with Rand;          use Rand;

procedure Guess is
   secret : constant randRange := initRand;
   guess : randRange := 1;
begin
   while guess /= secret loop
      begin
         Put ("guess> ");
         guess := randRange'Value (Get_Line);
         if guess < secret then
            Put_Line ("Bigger !");
         elsif guess > secret then
            Put_Line ("Lower !");
         else
            null;
         end if;
      exception
         when Constraint_Error =>
            Put_Line ("Must be a number between 1 and 100...");
      end;
   end loop;
   Put_Line ("Congrats !!!");
end Guess;
