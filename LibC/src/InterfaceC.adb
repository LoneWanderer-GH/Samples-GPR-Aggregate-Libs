with Interfacea;
with Interfaceb;

with Ada.Text_IO;

package body Interfacec is

   procedure Provided_Service_C
    (Arg1 : in     Interfaces.C.Strings.chars_ptr;
     Arg2 : in out Interfaces.C.Strings.chars_ptr) is
   begin
      Ada.Text_IO.Put_Line ("Interface C impl execution");
      Ada.Text_IO.Put_Line ("Interface C impl execution - arg1 before = " & Interfaces.C.Strings.Value (Item => Arg1));
      Ada.Text_IO.Put_Line ("Interface C impl execution - arg2 before = " & Interfaces.C.Strings.Value (Item => Arg2));

      Arg2 := Interfaces.C.Strings.New_String ("Prout2");

      Ada.Text_IO.Put_Line ("Interface C impl execution - call to A");
      Interfacea.Provided_Service_A
       (Arg1 => Arg1,
        Arg2 => Arg2);

      Ada.Text_IO.Put_Line ("Interface C impl execution - call to B");
      Interfaceb.Provided_Service_B
       (Arg1 => Arg1,
        Arg2 => Arg2);

      Ada.Text_IO.Put_Line ("Interface B impl execution - arg1 after = " & Interfaces.C.Strings.Value (Item => Arg1));
      Ada.Text_IO.Put_Line ("Interface B impl execution - arg2 after = " & Interfaces.C.Strings.Value (Item => Arg2));
   end Provided_Service_C;

end Interfacec;
