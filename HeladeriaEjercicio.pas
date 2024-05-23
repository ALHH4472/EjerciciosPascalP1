
Program Heladeria;

Var
  //variables que almacenan las opciones del usuario
  opcion,opcion2: Integer;

  //arreglo de 3 posiciones de enteros que almacenan los sabores de helado
  // 1 = chocolate, 2= mantecas, 3 = fresa.
  sabores: array[1..3] of string;

  //arreglo de 3 posiciones de enteros que almacena el numero de ventas que se han hecho de cada sabor
  // 1 = chocolate, 2= mantecas, 3 = fresa.
  ventas: array[1..3] of Integer;

  //arreglo de 3 posiciones de enteros que almacena el precio de los helados de cada sabor
  // 1 = chocolate, 2= mantecas, 3 = fresa.
  precios: array[1..3] of real;

  //contador del bucle for
  i: Integer;

Begin

  //se almacenan en el arreglos los sabores de helados
  sabores[1] := 'Chocolate';
  sabores[2] := 'Mantecado';
  sabores[3] := 'Fresa';

 //se almacenan en el arreglos los precios de helados en dolares
  precios[1] := 5;
  precios[2] := 4;
  precios[3] := 3;


  //bucle que se repite hasta que la opcion sea salir (3)
  Repeat

    begin
    //le mostramos posibles opciones al usuario
    writeln('¿Que deseas hacer?');
    writeln('1. Comprar Helado');
    writeln('2. Ver ventas');
    writeln('3. Salir');
    readln(opcion);

    //comprueba si la opcion es salir
    if (opcion=3) then

      begin
      //se muestra mensaje de salida
      writeln('Saliendo ...');

      //se rompe el bucle para que termine y vaya al final
      break;
      end;

    //comprueba si la opcion es ver las ventas
    if (opcion = 2) then

      begin


        //se imprimen en pantalla las ventas por cada helado
        //recorriendo los sabores y ventas con un bucle
        for i:= 1 to 3 do
        begin
          writeln('Cantidad de helados de ', sabores[i],' vendidos: ',ventas[i]);
        end;
        writeln(' ');
        //se rompe el bucle para que termine y vaya al final
      end;

    if (opcion = 1) then

      begin

        repeat

          //le mostramos los posibles sabores al usuario
          writeln('¿Que sabor quieres?');
          writeln('1. Helado de Chocolate');
          writeln('2. Helado de Mantecado');
          writeln('3. Helado de Fresa');
          writeln('4. Atrás');
          readln(opcion2);

          //se comprueba si se eligio ir atras
          if (opcion2 = 4) then
            begin
              writeln('Saliendo...');
              writeln(' ');
            end;

          //se comprueba si se eligio uno de los 3 sabores
          if ((opcion2 = 3) OR (opcion2 = 2) OR (opcion2= 1)) then
            begin

             // se muestra la informacion de los helados que hay en los arreglos
              writeln('Elegiste el sabor :', sabores[opcion2]);
              writeln('Con un precio de :', precios[opcion2], '$');

              //se suma una venta a la opcion escogida
              ventas[opcion2] := ventas[opcion2]+1;

              // salimos del bucle
              opcion2 := 4;

            end;

        until opcion2 = 4


      end;
  end;

  Until opcion=3;

  readln;
End.   