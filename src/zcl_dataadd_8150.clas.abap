CLASS zcl_dataadd_8150 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_dataadd_8150 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: lt_header TYPE TABLE OF ztheader_8150,
          lt_items  TYPE TABLE OF ztitems_8150.


*** Header ***
    "fill internal table
    lt_header = VALUE #(
        ( id_header = '1'  email = 'juan@gmail.com'       firstname = 'Juan'       lastname = 'Toro'      country = 'Colombia'       creaton = '20250403' delivery_date = '20250410' order_status = '1'  )
        ( id_header = '2'  email = 'luisa@gmail.com'      firstname = 'Luisa'      lastname = 'Garcia'    country = 'Panama'         creaton = '20250304' delivery_date = '20250404' order_status = '1'  )
        ( id_header = '3'  email = 'sara@gmail.com'       firstname = 'Sara'       lastname = 'Morales'   country = 'Bolivia'        creaton = '20250705' delivery_date = '20250707' order_status = '1'  )
        ( id_header = '4'  email = 'jhon@gmail.com'       firstname = 'Jhon'       lastname = 'Granada'   country = 'Colombia'       creaton = '20250303' delivery_date = '20250304' order_status = '1'  )
        ( id_header = '5'  email = 'alex@gmail.com'       firstname = 'Alexander'  lastname = 'Cuesta'    country = 'Nicaragua'      creaton = '20250203' delivery_date = '20250305' order_status = '3'  )
        ( id_header = '6'  email = 'jacobo@gmail.com'     firstname = 'Jacobo'     lastname = 'Dominguez' country = 'Peru'           creaton = '20250607' delivery_date = '20250624' order_status = '2'  )
        ( id_header = '7'  email = 'calvo@gmail.com'      firstname = 'Luis'       lastname = 'Calvo'     country = 'Mexico'         creaton = '20250607' delivery_date = '20250630' order_status = '2'  )
        ( id_header = '8'  email = 'usuga@gmail.com'      firstname = 'Marlon'     lastname = 'Uribe'     country = 'Mexico'         creaton = '20250708' delivery_date = '20250801' order_status = '2'  )
        ( id_header = '9'  email = 'samuel@gmail.com'     firstname = 'Samuel'     lastname = 'Chalarca'  country = 'Brazil'         creaton = '20250609' delivery_date = '20250618' order_status = '2'  )
        ( id_header = '10' email = 'james@gmail.com'      firstname = 'James'      lastname = 'Torres'    country = 'Ecuador'        creaton = '20250210' delivery_date = '20250223' order_status = '3'  )
        ( id_header = '11' email = 'paulina@gmail.com'    firstname = 'Paulina'    lastname = 'Zapata'    country = 'Colombia'       creaton = '20250605' delivery_date = '20250607' order_status = '2'  )
        ( id_header = '12' email = 'natalia@gmail.com'    firstname = 'Natalia'    lastname = 'Ford'      country = 'Brazil'         creaton = '20250605' delivery_date = '20250705' order_status = '3'  )
        ( id_header = '13' email = 'paul@gmail.com'       firstname = 'Paul'       lastname = 'Restrepo'  country = 'U.S.A'          creaton = '20250608' delivery_date = '20250609' order_status = '1'  )
        ( id_header = '14' email = 'cristian@gmail.com'   firstname = 'Cristian'   lastname = 'Gonzales'  country = 'Brazil'         creaton = '20250609' delivery_date = '20250615' order_status = '2'  )
        ( id_header = '15' email = 'camilo@gmail.com'     firstname = 'Camilo'     lastname = 'Cifuentes' country = 'Argentina'      creaton = '20250706' delivery_date = '20250719' order_status = '3'  )
        ( id_header = '16' email = 'sebastian@gmail.com'  firstname = 'Sebastian'  lastname = 'Yatra'     country = 'Panama'         creaton = '20250611' delivery_date = '20250614' order_status = '3'  )
        ( id_header = '17' email = 'melany@gmail.com'     firstname = 'Melany'     lastname = 'Martinez'  country = 'Venezuela'      creaton = '20250603' delivery_date = '20250608' order_status = '1'  )
        ( id_header = '18' email = 'jeronimo@gmail.com'   firstname = 'Jeronimo'   lastname = 'Montecruz' country = 'Colombia'       creaton = '20250712' delivery_date = '20250812' order_status = '1'  )
        ( id_header = '19' email = 'juanpa@gmail.com'     firstname = 'Juan Pablo' lastname = 'Sarmiento' country = 'Argentina'      creaton = '20250113' delivery_date = '20250219' order_status = '1'  )
        ( id_header = '20' email = 'miguel@gmail.com'     firstname = 'Miguel'     lastname = 'Ospina'    country = 'Peru'           creaton = '20250226' delivery_date = '20250312' order_status = '1'  ) ).

    "Delete possible entries; insert new entries
    DELETE FROM ztheader_8150.
    INSERT ztheader_8150 FROM TABLE @lt_header.

    IF sy-subrc EQ 0.
      out->write( | { sy-dbcnt } registros insertados| ).
    ENDIF.

*** Items ***
    "fill internal table
    lt_items = VALUE #(
        ( id_item = '10'  id_header = '1'  name = 'Mouse G20 8000'             description = 'Mouse gamer 8000 DPI'      releasedate = '20250101' discontinueddate = '20270101' price = '120.00'  currency_code = 'USD' height = '3'  width = '2'  depth = '0'
 quantity = '1' unit_of_measure = 'IN' )
        ( id_item = '40'  id_header = '1'  name = 'Iphone 15 Pro Max'          description = 'Phone'                     releasedate = '20250103' discontinueddate = '20270103' price = '800.99'  currency_code = 'USD' height = '7'  width = '3'  depth = '0'
 quantity = '1' unit_of_measure = 'IN' )
        ( id_item = '70'  id_header = '1'  name = 'Keyboard 512 K55'           description = 'Mechanic Keyboard Red'     releasedate = '20250104' discontinueddate = '20270104' price = '172.99'  currency_code = 'USD' height = '17' width = '6'  depth = '1'
 quantity = '1' unit_of_measure = 'IN' )
        ( id_item = '70'  id_header = '2'  name = 'Keyboard 512 K55'           description = 'Mechanic Keyboard Red'     releasedate = '20250104' discontinueddate = '20270104' price = '172.99'  currency_code = 'USD' height = '17' width = '6'  depth = '1'
 quantity = '1' unit_of_measure = 'IN' )
        ( id_item = '50'  id_header = '3'  name = 'Apple Watch'                description = 'Watch'                     releasedate = '20250105' discontinueddate = '20270105' price = '600.00'  currency_code = 'USD' height = '8'  width = '1'  depth = '0'
 quantity = '3' unit_of_measure = 'IN' )
        ( id_item = '90'  id_header = '3'  name = 'Headset LG 190'             description = 'Headset ANC Spacial Sound' releasedate = '20250102' discontinueddate = '20270102' price = '300.00'  currency_code = 'USD' height = '6'  width = '6'  depth = '1'
 quantity = '2' unit_of_measure = 'IN' )
        ( id_item = '10'  id_header = '4'  name = 'Mouse G20 8000'             description = 'Mouse gamer 8000 DPI'      releasedate = '20250101' discontinueddate = '20270101' price = '120.00'  currency_code = 'USD' height = '3'  width = '2'  depth = '0'
 quantity = '2' unit_of_measure = 'IN' )
        ( id_item = '50'  id_header = '4'  name = 'Apple Watch'                description = 'Watch'                     releasedate = '20250105' discontinueddate = '20270105' price = '600.00'  currency_code = 'USD' height = '8'  width = '1'  depth = '0'
 quantity = '2' unit_of_measure = 'IN' )
        ( id_item = '110'  id_header = '5' name = 'Motherboard HMI120'         description = 'Motherboard Asus For PC'   releasedate = '20250107' discontinueddate = '20270107' price = '249.99'  currency_code = 'USD' height = '10' width = '10' depth = '0'
 quantity = '2' unit_of_measure = 'IN' )
        ( id_item = '60' id_header = '6'   name = 'Ram Dual 16gb 3200'         description = 'Ram Memory 16 gb Dual'     releasedate = '20250108' discontinueddate = '20270108' price = '82.00'   currency_code = 'USD' height = '3'  width = '2'  depth = '0'
 quantity = '3' unit_of_measure = 'IN' )
        ( id_item = '90' id_header = '6'   name = 'Headset LG 190'             description = 'Headset ANC Spacial Sound' releasedate = '20250102' discontinueddate = '20270102' price = '300.00'  currency_code = 'USD' height = '6'  width = '6'  depth = '1'
 quantity = '2' unit_of_measure = 'IN' )
        ( id_item = '20' id_header = '7'   name = 'HDD 1TB'                    description = 'Hard Disk Drive'           releasedate = '20250109' discontinueddate = '20270109' price = '50.30'   currency_code = 'USD' height = '3'  width = '3'  depth = '0'
 quantity = '3' unit_of_measure = 'IN' )
        ( id_item = '30' id_header = '7'   name = 'PC Case Koni560 2 Fans RBG' description = 'Pc Case'                   releasedate = '20250110' discontinueddate = '20270110' price = '300.00'  currency_code = 'USD' height = '15' width = '7'  depth = '15'
 quantity = '1' unit_of_measure = 'IN' )
        ( id_item = '40' id_header = '7'   name = 'Iphone 15 Pro Max'          description = 'Phone'                     releasedate = '20250103' discontinueddate = '20270103' price = '800.99'  currency_code = 'USD' height = '7'  width = '3'  depth = '0'
 quantity = '2' unit_of_measure = 'IN' )
        ( id_item = '50' id_header = '7'   name = 'Apple Watch'                description = 'Watch'                     releasedate = '20250105' discontinueddate = '20270105' price = '600.00'  currency_code = 'USD' height = '8'  width = '1'  depth = '0'
 quantity = '3' unit_of_measure = 'IN' )
        ( id_item = '60' id_header = '8'   name = 'Ram Dual 16gb 3200'         description = 'Ram Memory 16 gb Dual'     releasedate = '20250108' discontinueddate = '20270108' price = '82.00'   currency_code = 'USD' height = '3'  width = '2'  depth = '0'
 quantity = '3' unit_of_measure = 'IN' )
        ( id_item = '20' id_header = '9'   name = 'HDD 1TB'                    description = 'Hard Disk Drive'           releasedate = '20250109' discontinueddate = '20270109' price = '50.30'   currency_code = 'USD' height = '3'  width = '3'  depth = '0'
 quantity = '1' unit_of_measure = 'IN' )
        ( id_item = '30' id_header = '9'   name = 'PC Case Koni560 2 Fans RBG' description = 'Pc Case'                   releasedate = '20250110' discontinueddate = '20270110' price = '300.00'  currency_code = 'USD' height = '15' width = '7'  depth = '15'
 quantity = '1' unit_of_measure = 'IN' )
        ( id_item = '120' id_header = '10' name = 'Mouse Pad 15 x 20'          description = 'Mouse pad for mouse'       releasedate = '20250111' discontinueddate = '20270111' price = '30.00'   currency_code = 'USD' height = '15' width = '15' depth = '0'
 quantity = '1' unit_of_measure = 'IN' )
        ( id_item = '10' id_header = '11'  name = 'Mouse G20 8000'             description = 'Mouse gamer 8000 DPI'      releasedate = '20250101' discontinueddate = '20270101' price = '120.00'  currency_code = 'USD' height = '3'  width = '2'  depth = '0'
 quantity = '1' unit_of_measure = 'IN' )
        ( id_item = '30' id_header = '12'  name = 'PC Case Koni560 2 Fans RBG' description = 'Pc case'                   releasedate = '20250110' discontinueddate = '20270110' price = '300.00'  currency_code = 'USD' height = '15' width = '7'  depth = '15'
 quantity = '1' unit_of_measure = 'IN' )
        ( id_item = '130' id_header = '12' name = 'Laptop Mackbook'            description = 'Laptop pc apple'           releasedate = '20250106' discontinueddate = '20270106' price = '1200.50' currency_code = 'USD' height = '22' width = '11' depth = '0'
 quantity = '1' unit_of_measure = 'IN' )
        ( id_item = '20' id_header = '13'  name = 'HDD 1TB'                    description = 'Hard Disk Drive'           releasedate = '20250109' discontinueddate = '20270109' price = '50.30'   currency_code = 'USD' height = '3'  width = '3'  depth = '0'
 quantity = '1' unit_of_measure = 'IN' )
        ( id_item = '40' id_header = '13'  name = 'Iphone 15 Pro Max'          description = 'Phone'                     releasedate = '20250103' discontinueddate = '20270103' price = '800.99'  currency_code = 'USD' height = '7'  width = '3'  depth = '0'
 quantity = '1' unit_of_measure = 'IN' )
        ( id_item = '50' id_header = '14'  name = 'Apple Watch'                description = 'Watch'                     releasedate = '20250105' discontinueddate = '20270105' price = '600.00'  currency_code = 'USD' height = '8'  width = '1'  depth = '0'
 quantity = '1' unit_of_measure = 'IN' )
        ( id_item = '130' id_header = '15' name = 'Laptop Mackbook'            description = 'Laptop pc apple'           releasedate = '20250106' discontinueddate = '20270106' price = '1200.50' currency_code = 'USD' height = '22' width = '11' depth = '0'
 quantity = '1' unit_of_measure = 'IN' )
        ( id_item = '60' id_header = '16'  name = 'Ram Dual 16gb 3200'         description = 'Ram Memory 16 gb Dual'     releasedate = '20250108' discontinueddate = '20270108' price = '82.00'   currency_code = 'USD' height = '3'  width = '2'  depth = '0'
 quantity = '1' unit_of_measure = 'IN' )
        ( id_item = '10' id_header = '17'  name = 'Mouse G20 8000'             description = 'Mouse gamer 8000 DPI'      releasedate = '20250101' discontinueddate = '20270101' price = '120.00'  currency_code = 'USD' height = '3'  width = '2'  depth = '0'
 quantity = '1' unit_of_measure = 'IN' )
        ( id_item = '70' id_header = '17'  name = 'Keyboard 512 K55'           description = 'Mechanic Keyboard Red'     releasedate = '20250104' discontinueddate = '20270104' price = '172.99'  currency_code = 'USD' height = '17' width = '6'  depth = '1'
 quantity = '1' unit_of_measure = 'IN' )
        ( id_item = '20' id_header = '18'  name = 'HDD 1TB'                    description = 'Hard Disk Drive'           releasedate = '20250109' discontinueddate = '20270109' price = '50.30'   currency_code = 'USD' height = '3'  width = '3'  depth = '0'
 quantity = '3' unit_of_measure = 'IN' )
        ( id_item = '130' id_header = '19' name = 'Laptop Mackbook'            description = 'Laptop pc apple'           releasedate = '20250106' discontinueddate = '20270106' price = '1200.50' currency_code = 'USD' height = '22' width = '11' depth = '0'
 quantity = '1' unit_of_measure = 'IN' )
        ( id_item = '70' id_header = '20'  name = 'Keyboard 512 K55'           description = 'Mechanic Keyboard Red'     releasedate = '20250104' discontinueddate = '20270104' price = '172.99'  currency_code = 'USD' height = '17' width = '6'  depth = '1'
 quantity = '2' unit_of_measure = 'IN' )
        ( id_item = '90' id_header = '20'  name = 'Headset LG 190'             description = 'Headset ANC Spacial Sound' releasedate = '20250102' discontinueddate = '20270102' price = '300.00'  currency_code = 'USD' height = '6'  width = '6'  depth = '1'
 quantity = '1' unit_of_measure = 'IN' ) ).

    "Delete possible entries; insert new entries
    DELETE FROM ztitems_8150.
    INSERT ztitems_8150 FROM TABLE @lt_items.

    IF sy-subrc EQ 0.
      out->write( | { sy-dbcnt } registros insertados| ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
