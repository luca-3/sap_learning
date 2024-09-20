CLASS zcl_11_demo_02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_11_demo_02 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA result TYPE i.

    result = 4 + 7.
    result = 4 - 8.
    result = 2 * 6.
    result = 5 / 3. " wird gerundet, wegen impliziter typkonvertierung von float zu int
    result = 5 DIV 3. " Ganzzahlige Division
    result = 5 MOD 3.

    out->write( result ).

    result = abs( -4 ). " In F1 Hilfe 'built-in functions"
    result = round( val = '55.875'
                    dec = -2 ).
  ENDMETHOD.
ENDCLASS.
