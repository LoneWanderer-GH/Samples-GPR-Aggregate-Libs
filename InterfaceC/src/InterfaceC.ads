with Interfaces.C.Strings;

package Interfacec is

   procedure Provided_Service_C
    (Arg1 : in     Interfaces.C.Strings.chars_ptr;
     Arg2 : in out Interfaces.C.Strings.chars_ptr);
   --  pragma Import (C, Provided_Service_C, "C_Provided_Service_C");

end Interfacec;
