with Ada.Text_IO;
with Interfaces.C;

package body Interfaceb is

   procedure Provided_Service_B
    (Arg1 : in     Interfaces.C.Strings.chars_ptr;
     Arg2 : in out Interfaces.C.Strings.chars_ptr) is
   begin
      Ada.Text_IO.Put_Line ("Interface B impl execution");
      Ada.Text_IO.Put_Line ("Interface B impl execution - arg1 before = " & Interfaces.C.Strings.Value (Item => Arg1));
      Ada.Text_IO.Put_Line ("Interface B impl execution - arg2 before = " & Interfaces.C.Strings.Value (Item => Arg2));

      Arg2 := Interfaces.C.Strings.New_String ("Interface B !!");

      Ada.Text_IO.Put_Line ("Interface B impl execution - arg1 after = " & Interfaces.C.Strings.Value (Item => Arg1));
      Ada.Text_IO.Put_Line ("Interface B impl execution - arg2 after = " & Interfaces.C.Strings.Value (Item => Arg2));
   end Provided_Service_B;

end Interfaceb;
