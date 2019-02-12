--
-- A simple client of the Int_Stack2 package.
--

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with I_Stack2; use I_Stack2;

procedure Int_Stack2_User is
   -- Here is a stack.  We can use the name of the private type,
   S: Int_Stack;

   -- Here's an exciting integer.
   Exciting: Integer;
begin
   -- Read in some integers, and push 'em
   begin
      loop
         Put("> ");
         Get(Exciting);
         Push(S, Exciting);
      end loop;
   exception
      when End_Error =>
         -- Mostly just leave the loop, but this looks cleaner sometimes.
         New_Line;
      when Stack_Overflow =>
         Put_Line("Stack Overflow.  Input Terminated.");
      when Data_Error =>
         Put_Line("Bad Data: Input Terminated.");
   end;

   -- Pop 'em and print 'em
   begin
      loop
         Pop(S, Exciting);
         Put(Exciting, 1);
         exit when Empty(S);
         Put(" ");
      end loop;
   exception
      when Stack_Underflow =>
        New_Line;
   end;
end Int_Stack2_User;
