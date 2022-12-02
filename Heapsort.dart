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
    int ind = 1;
    try{
      for (var x=1; x<=altura(); x++){
        if(heap[ind*2] < heap[ind*2+1]){
          if(heap[ind]>heap[ind*2]){
            int aux = heap[ind];
            heap[ind] = heap[ind*2];
            heap[ind*2] = aux;
            ind = ind*2;
            continue;
          }
          break;
        }
        if(heap[ind*2] > heap[ind*2+1]){
          if(heap[ind] > heap[ind*2+1]){
            int aux = heap[ind];
            heap[ind] = heap[ind*2+1];
            heap[ind*2+1] = aux;
            ind = ind*2+1;
            continue;
          }
          break;
        }
      }
    }catch(e){}
  }
}
