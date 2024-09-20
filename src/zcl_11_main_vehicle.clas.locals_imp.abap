*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
CLASS lcl_vehicle DEFINITION.

  PUBLIC SECTION.
    " public void accelerate(int value) {sppedInKmh += value}
    METHODS accelerate
      IMPORTING !value TYPE i.

    METHODS break
      IMPORTING !value TYPE i
      RAISING   cx_abap_invalid_value.

    METHODS to_string
      RETURNING VALUE(dummy) TYPE string.

    METHODS get_output
      RETURNING VALUE(output) TYPE string_table. " type table of string

    METHODS constructor
      IMPORTING make  TYPE string
                model TYPE string.

*      RAISING   cx_abap_invalid_value.

    DATA make         TYPE string READ-ONLY. " READ-ONLY bedeutet außerhalb der klasse nur lesen, innerhalb alles. Verwenden statt getter und setter
    DATA model        TYPE string READ-ONLY.
    DATA speed_in_kmh TYPE i      READ-ONLY.

    CLASS-DATA number_of_vehicles TYPE i READ-ONLY. " Statisch




  PRIVATE SECTION.



ENDCLASS.

CLASS lcl_vehicle IMPLEMENTATION.
  METHOD accelerate.
    speed_in_kmh += value.
  ENDMETHOD.

  METHOD break.
    IF value > speed_in_kmh.
      RAISE EXCEPTION NEW cx_abap_invalid_value( ).
    ENDIF.

    speed_in_kmh -= value.
  ENDMETHOD.

  METHOD to_string.
    dummy = |{ make } { model } ( { speed_in_kmh } )|.
    "ODER: return |{ make } { model } ( { speed_in_kmh } )|.
  ENDMETHOD.


  METHOD get_output.

  ENDMETHOD.

  METHOD constructor.
*    IF make IS INITIAL.
*      RAISE EXCEPTION NEW cx_abap_invalid_value( value = 'make' ).
*    ENDIF.
*
*    IF model IS INITIAL.
*      RAISE EXCEPTION NEW cx_abap_invalid_value( value = 'make' ).
*    ENDIF.
    number_of_vehicles += 1.

    me->make  = make.
    me->model = model.
  ENDMETHOD.

ENDCLASS.
