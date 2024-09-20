CLASS zcl_11_demo_CALC DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_11_demo_CALC IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    " Declarations
    " -------------------------

    DATA number1 TYPE i.
    DATA number2 TYPE i.

    DATA result  TYPE p LENGTH 8 DECIMALS 2.
    DATA op      TYPE c LENGTH 1 VALUE '/'.

    " Input Values
    " -------------------------

    number1 = -8.
    number2 = 0.

    " Calculation
    " -------------------------

*    DATA(result) = number1 / number2.

    DATA correct TYPE c LENGTH 1 VALUE 'X'.

    CASE op.
      WHEN '/'.
      try.
        result = number1 / number2.
        catch cx_sy_zerodivide into data(e).
          out->write( e->get_text(  ) ).
          correct = ''.
        ENDTRY.
      WHEN '*'.
        result = number1 * number2.
      WHEN '+'.
        result = number1 + number2.
      WHEN '-'.
        result = number1 - number2.
      WHEN OTHERS.
        out->write( 'Diese Operation kann ich noch nicht!' ).
        correct = ''.

    ENDCASE.

    IF correct = 'X'.
      DATA(output) = |{ number1 }  { op }  { number2 } = { result }|.
    ENDIF.

    " Output
    " -------------------------

    out->write( output ).
  ENDMETHOD.
ENDCLASS.
