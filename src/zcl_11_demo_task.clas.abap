CLASS zcl_11_demo_task DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_11_demo_task IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


  DATA number1 type i value 8.
  DATA number2 type i value 3.
  DATA result type i.

  result = number1 / number2.

  DATA output type string.
  output = | { number1 } / { number2 } = { result } |.

  out->write( output ).





  ENDMETHOD.
ENDCLASS.
