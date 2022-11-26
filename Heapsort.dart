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
    for (var x=1; x<=altura(); x++){
      if(heap[x*2] < heap[x*2+1]){
        if(heap[x]>heap[x*2]){
          int aux = heap[x];
          heap[x] = heap[x*2];
          heap[x*2] = aux;
        }
      }else{
        if(heap[x] > heap[x*2+1]){
          int aux = heap[x];
          heap[x] = heap[x*2+1];
          heap[x*2+1] = aux;
        }
      }
    }
  }
}