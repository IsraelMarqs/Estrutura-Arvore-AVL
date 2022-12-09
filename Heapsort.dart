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
    int position = heap.indexOf(heap.last);
    for (var x=1; x<=altura(); x++){
      if(heap[(position/2).floor()]>heap[position]){
        int aux = heap[position];
        heap[position]=heap[(position/2).floor()];
        heap[(position/2).floor()]=aux;
        position=(position/2).floor();
      }
    }
  }

  void removeSmallest(){
    heap[1] = heap.last;
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
    heap.removeLast();
  }
  List removeSmall(var heap){
    heap[1] = heap.last;
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
    heap.removeLast();
     return heap;
  }

  List sort(){
    List listaord = [];
    int ind = size();
    var heapaux = heap;
    for(var x=0;x<ind;x++){
      listaord.add(heapaux[1]);
      heapaux =  removeSmall(heapaux);
    }
    return listaord;
  }
}