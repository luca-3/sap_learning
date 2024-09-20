CLASS zcl_11_demo_09 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_11_demo_09 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    " definition eines lokalen strukturtypen
    TYPES: BEGIN OF ty_flight,
             carrierer_id  TYPE /dmo/carrier_id,
             connection_id TYPE /dmo/connection_id,
             flight_date   TYPE /dmo/flight_date,
             flight_price  TYPE /dmo/flight_price,
             currency_code TYPE /dmo/currency_code,
           END OF ty_flight.

    " deklaration einer struktur(variable)
    DATA flight TYPE z11_flight.

    " zugriff auf die Srukturkomponenten
    flight-carrierer_id  = 'LH'.
    flight-connection_id = '0400'.
    flight-flight_date   = cl_abap_context_info=>get_system_date( ).

    flight = VALUE #(  BASE flight
                      connection_id = '0401'
                      flight_price  = '327.32'
                      currency_code = 'EUR' ).

    out->write( flight-flight_date ).
    out->write( flight ).
  ENDMETHOD.
ENDCLASS.
