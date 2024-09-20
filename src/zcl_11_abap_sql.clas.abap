CLASS zcl_11_abap_sql DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_11_abap_sql IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    " SELECT <Spalte1> , <Spalte2>
    " FROM <Datenbankquelle>
    " WHERE <Bedingung>

    " Lesender Zugriff auf eine Zeile (ein Datensatz)
*    SELECT SINGLE FROM /dmo/flight
*      FIELDS price
*      WHERE carrier_id    = 'LH'
*        AND connection_id = '0400'
*        AND flight_date   = '20240707'
*      INTO @DATA(flight_price). "@-Zeichen als Maskierung für Datenopjekt
*
*    out->write( flight_price ).

*    UPDATE /dmo/flight
*      SET price = 1000000000
*      WHERE carrier_id    = 'LH'
*        AND connection_id = '0400'
*        AND flight_date   = '20240707'.

*    SELECT FROM /dmo/flight
*      FIELDS price
*      WHERE carrier_id = @carrier_id
*      INTO TABLE @flight_prices. " INTO TABLE @DATA(flight_prices).
*

      data flights type table of /dmo/flight.

    SELECT FROM /dmo/flight
      FIELDS *
      WHERE price < 3000
      AND ( SEATS_MAX - seats_occupied ) > 50
      ORDER BY price ASCENDING
      INTO TABLE @flights.


      out->write( flights ).
  ENDMETHOD.
ENDCLASS.
