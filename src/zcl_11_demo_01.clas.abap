CLASS zcl_11_demo_01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_11_demo_01 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    " Zeichenketten
    TYPES ty_name           TYPE string.                 " Bsp. 'Das ist ein String', also dynamische Zeichenkette
    TYPES ty_last_name      TYPE c LENGTH 20.            " max 20 Zeichen, immer statisch 20 Zeichen lang (eher c nutzen, da Datenbanknah)
    TYPES ty_char           TYPE c LENGTH 1.             " char
    TYPES ty_iuser          TYPE n LENGTH 6.             " Bsp. 'I52842', für Numerischen Folgen
    TYPES ty_birth_date     TYPE d.                      " Numerische folge der Länge 8, Bsp. 'YYYYMMTT'
    TYPES ty_birth_time     TYPE t.                      " 'HHMMSS'

    " Ganzzahlen
    TYPES ty_number         TYPE i.                      " Bsp. -463

    " Kommazahlen
    TYPES ty_ieee_float     TYPE f.                      " Nicht nutzen, da fehler durch Floating Point
    TYPES ty_salary_in_euro TYPE p LENGTH 16 DECIMALS 2. " Festpunktzahl, bis 16 Byte, feste anzahl nachkommastellen, Bsp. '53623.43'

    " Boolean (nicht wirklich)
    TYPES ty_flag           TYPE c LENGTH 1.             " 'X' ist true, '' ist false

    " Deklaration einer Variable
    DATA first_name TYPE string.
    " TODO: variable is assigned but never used (ABAP cleaner)
    DATA last_name  TYPE ty_last_name.
    DATA iuser TYPE ty_iuser.

    out->write( first_name ).

    first_name = 'Luca'.
    last_name = 'Neuner'.

    out->write( first_name ).

    " TODO: variable is assigned but never used (ABAP cleaner)
    DATA(birth_date) = '19820104'.

*    CONSTANTS pi TYPE p LENGTH 2 DECIMALS 2 VALUE '3.14'.


    DATA birth_city TYPE /dmo/city.


    CLEAR iuser. "Initialwert bleibt übrig, hier: 6 mal '0', wegen numerischer folge


  ENDMETHOD.
ENDCLASS.










