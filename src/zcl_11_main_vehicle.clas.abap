CLASS zcl_11_main_vehicle DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_11_main_vehicle IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA vehicles TYPE TABLE OF REF TO lcl_vehicle.                       " List<Vehicle> vehicles = new List<>();

    DATA vehicle  TYPE REF TO lcl_vehicle. " vehicle is now initial (null pointer) Java: Vehicle vehicle;

    vehicle = NEW lcl_vehicle( make = 'audi' model = 'a4' ). " vehicle = new Vehicle();
*    TRY.
*        vehicle->set_attributes( make  = 'testMake'
*                                 model = 'testModel' ).
*      CATCH cx_abap_invalid_value INTO DATA(x).
*        out->write( x->get_text( ) ).
*        vehicle->speed_in_kmh = 237.
*        APPEND vehicle TO vehicles.
*    ENDTRY.

    vehicle = NEW #( make = 'opel' model = 'zafira life' ). " vehicle = new Vehicle(); (#() mit # ist kurzform (inferenz)
*    vehicle->make         = 'audi'.
*    vehicle->model        = 'a4'.
*    vehicle->speed_in_kmh = 32.
    APPEND vehicle TO vehicles.

    vehicle = NEW #( make = 'tesla' model = 'cybertruck' ). " vehicle = new Vehicle();
*    vehicle->make         = 'opel'.
*    vehicle->model        = 'zafira life'.
*    vehicle->speed_in_kmh = 175.
    APPEND vehicle TO vehicles.

    LOOP AT vehicles INTO vehicle.
      out->write( vehicle->to_string( ) ).
    ENDLOOP.

    vehicles[ 1 ]->accelerate( 63 ).

    TRY.

        vehicles[ 2 ]->break( 2 ).

      CATCH cx_abap_invalid_value INTO DATA(e).
        out->write( e->get_text( ) ).

    ENDTRY.

    LOOP AT vehicles INTO vehicle.
      out->write( vehicle->get_output( ) ).
    ENDLOOP.

    out->write( vehicles ).


    out->write( lcl_vehicle=>number_of_vehicles ).
    out->write( vehicle->number_of_vehicles ).
  ENDMETHOD.
ENDCLASS.
