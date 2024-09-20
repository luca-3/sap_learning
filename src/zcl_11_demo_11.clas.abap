CLASS zcl_11_demo_11 DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.


CLASS zcl_11_demo_11 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    " Deklaration interner Tabellen

    DATA flight   TYPE z00_flight.
    DATA flights  TYPE z00_flights. " TYPE <Tabellentyp>
    DATA flights2 TYPE TABLE OF z00_flight.                " TYPE TABLE OF <Strukturtyp>
    DATA flights3 TYPE TABLE OF /dmo/flight.
    DATA flights4 TYPE z00_flights.

    flight-carrier_id    = 'LH'.
    flight-connection_id = '0401'.
    flight-flight_date   = sy-datlo + 50.

    " Einfügen von Datensätzen
    flights = VALUE #( ( carrier_id = 'LH' connection_id = '0400' )
                       ( flight_date = sy-datlo )
                       ( )
                       ( flight_price = '777.99' currency_code = 'EUR' carrier_id = 'UA' )
                       ( flight )
                       ( flight ) ).

    " Hinzufügen von Datensätzen
    flight-flight_date -= 30.
    APPEND flight TO flights.
    flight-flight_date -= 90.
    flights = VALUE #( BASE flights
                       ( flight ) ).

    " Kopieren interner Tabellen
    flights2 = flights.
    flights3 = CORRESPONDING #( flights ).
    " flights.forEach(f -> System.out.println(f)); flights.forEach(System.out::println);
    " flights.forEach(f -> f.doSomething()); flights.forEach(Flight::doSomething);
    flights4 = VALUE #( FOR f IN flights
                        ( f ) ).

    out->write( flights ).
    out->write( flights2 ).
    out->write( flights3 ).
    out->write( flights4 ).
  ENDMETHOD.
ENDCLASS.
