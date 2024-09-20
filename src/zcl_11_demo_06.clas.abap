CLASS zcl_11_demo_06 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_11_demo_06 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA numbers TYPE TABLE OF i.

    numbers = VALUE #( ( 2 ) ( 6 ) ( 8 ) ). " Überschreibt <numbers mit den neuen Werten

    APPEND 42 TO numbers.
    APPEND -4 TO numbers.

    TRY.
        out->write( numbers[ 0 ] ).
      CATCH cx_sy_itab_line_not_found INTO DATA(x).
        out->write( x->get_text( ) ).
    ENDTRY.

    LOOP AT numbers INTO DATA(number).
      out->write( number ).
    ENDLOOP.

    LOOP AT numbers INTO DATA(n) WHERE table_line > 0.
      out->write( | { sy-tabix } : { n } | ).
    ENDLOOP.

    out->write( |Länge der Liste: { lines( numbers ) }| ).
  ENDMETHOD.
ENDCLASS.
