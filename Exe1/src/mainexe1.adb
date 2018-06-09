with Interfacea;
with Interfacec;

with Interfaces.C.Strings;
with Ada.Text_IO;

procedure Mainexe1 is
   String1 : constant String := "String1";
   String2 : constant String := "                                                        ";

   ToChar1 : constant Interfaces.C.Strings.chars_ptr := Interfaces.C.Strings.New_String (String1);
   ToChar2 : Interfaces.C.Strings.chars_ptr          := Interfaces.C.Strings.New_String (String2);

begin
   Interfacea.Provided_Service_A
    (Arg1 => ToChar1,
     Arg2 => ToChar2);

   Ada.Text_IO.Put_Line (Interfaces.C.Strings.Value (ToChar2));

   Interfacec.Provided_Service_C
    (Arg1 => ToChar1,
     Arg2 => ToChar2);

   Ada.Text_IO.Put_Line (Interfaces.C.Strings.Value (ToChar2));
end Mainexe1;
