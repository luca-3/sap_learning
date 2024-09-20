CLASS zcl_11_demo_03 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_11_demo_03 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data word1 type string value 'Hello     '.
  data word2 type string value 'World'.
  data result type string.

  result &&= word1.

  out->write( word1 && ' ' && word2 ).

  out->write( |Hello World und nochmal { word1 } mit { word2 }| ).


  ENDMETHOD.
ENDCLASS.
