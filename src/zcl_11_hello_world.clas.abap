CLASS zcl_11_hello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_11_hello_world IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    out->write( 'Hallo Welt' ).
    out->write( 'Das ist ein Output :)' ). "Das ist ein Kommentar

*So kommentiert man eine ganze Zeile aus


  ENDMETHOD.
ENDCLASS.
