with Interfaces.C.Strings;

package Interfaceb is

   procedure Provided_Service_B
    (Arg1 : in     Interfaces.C.Strings.chars_ptr;
     Arg2 : in out Interfaces.C.Strings.chars_ptr);
   --     pragma Import (C, Provided_Service_B, "C_Provided_Service_B");

end Interfaceb;
