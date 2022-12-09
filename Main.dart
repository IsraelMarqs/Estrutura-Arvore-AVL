import 'Heapsort.dart';

void main(){
  Heapsort heapsort = new Heapsort();
  heapsort.insert(2);
  heapsort.insert(4);
  heapsort.insert(3);
  heapsort.insert(5);
  heapsort.insert(6);
  heapsort.insert(7);
  heapsort.insert(8);
  heapsort.insert(9);
  print(heapsort.heap);
  heapsort.removeSmallest();
  print(heapsort.heap);
  heapsort.removeSmallest();
  print(heapsort.heap);

}
