import 'dart:math';

class Heapsort{
  var heap = [];
  int size() => heap.length-1;
  int altura() => (log(size()) ~/ log(2));

  Heapsort(){
    heap.add(null);
  }
  void insert(int number){
    heap.add(number);
    for (var x=1; x<=altura(); x++){

    }
  }

  void removeSmallest(){
    heap[1] = heap.last;
    heap.removeLast();
    int position=1;
    for (var x=1; position<=altura(); position++){
      if(heap[position*2] < heap[position*2+1]){
        if(heap[position]>heap[position*2]){
          int aux = heap[position];
          heap[position] = heap[position*2];
          heap[position*2] = aux;
        }
      }else{
        if(heap[position] > heap[position*2+1]){
          int aux = heap[position];
          heap[position] = heap[position*2+1];
          heap[position*2+1] = aux;
        }
      }
    }
  }
}