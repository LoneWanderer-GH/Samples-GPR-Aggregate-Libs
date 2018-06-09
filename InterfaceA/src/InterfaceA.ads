with Interfaces.C.Strings;

package Interfacea is

   procedure Provided_Service_A
    (Arg1 : in     Interfaces.C.Strings.chars_ptr;
     Arg2 : in out Interfaces.C.Strings.chars_ptr);
   --  pragma Import (C, Provided_Service_A, "C_Provided_Service_A");

end Interfacea;
