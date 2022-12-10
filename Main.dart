import 'dart:io';

import 'Heapsort.dart';

void main(){
  Heapsort heapsort = new Heapsort();
  while(1>0){
    print("Escolha uma função:");
    print("'1':para insert   '2':para remove smalltest   '3':para por em ordem   '4':para clear");
    String? func=stdin.readLineSync();
    switch(func){
      case"1":{
        print("Insira um número");
        int num = int.parse(stdin.readLineSync().toString());
        heapsort.insert(num);
        print(heapsort.heap);
        print("");
      }
      break;
      case"2":{
        heapsort.removeSmallest();
        print(heapsort.heap);
        print("");
      }
      break;
      case"3":{
        print(heapsort.sort());
        print("");
      }
      break;
      case"4":{
        heapsort = new Heapsort();
        print(heapsort.heap);
        print("");
      }
      break;
      default:{
        print("Programa será encerrado");
        return;
      }
    }
  }

}
