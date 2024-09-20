CLASS zcl_11_demo_05 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_11_demo_05 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    WHILE sy-index < 10.

      out->write( '' ).

    ENDWHILE.


    DO 10 TIMES.
      out->write( 'test' ).
    ENDDO.

    DO.
      out->write( sy-index ).
      IF sy-index > 200.
        EXIT.
      ENDIF.
    ENDDO.












  ENDMETHOD.
ENDCLASS.
