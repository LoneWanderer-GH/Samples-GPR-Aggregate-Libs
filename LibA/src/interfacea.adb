with Ada.Text_IO;

package body Interfacea is

   procedure Provided_Service_A
    (Arg1 : in     Interfaces.C.Strings.chars_ptr;
     Arg2 : in out Interfaces.C.Strings.chars_ptr) is
   begin
      Ada.Text_IO.Put_Line ("Interface A impl execution");
      Ada.Text_IO.Put_Line ("Interface A impl execution - arg1 before = " & Interfaces.C.Strings.Value (Item => Arg1));
      Ada.Text_IO.Put_Line ("Interface A impl execution - arg2 before = " & Interfaces.C.Strings.Value (Item => Arg2));

      Arg2 := Interfaces.C.Strings.New_String ("Interface A");

      Ada.Text_IO.Put_Line ("Interface A impl execution - arg1 after = " & Interfaces.C.Strings.Value (Item => Arg1));
      Ada.Text_IO.Put_Line ("Interface A impl execution - arg2 after = " & Interfaces.C.Strings.Value (Item => Arg2));
   end Provided_Service_A;

end Interfacea;
