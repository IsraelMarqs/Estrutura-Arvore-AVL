import 'Heapsort.dart';

void main(){
  Heapsort heapsort = new Heapsort();
  heapsort.insert(4);
  heapsort.insert(3);
  heapsort.insert(1);
  print(heapsort.heap);
  print(heapsort.sort());

}
