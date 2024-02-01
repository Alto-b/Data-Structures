//reverse a string using doubly linked list

class Node{
  String? data;
  Node? next;
  Node? prev;
  Node(String data){
    this.data = data;
  }
}

class dll{
  Node? head;
  Node? tail;

  void display(){
    Node? temp = head;
    while(temp!=null){
      print(temp.data);
      temp = temp.next;
    }
  }

  void addValue(String data){
    Node newNode = Node(data);
    if(head == null){
      head = newNode;
    }
    else{
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

String revDisplay(){
  Node? temp = tail;
  List? res=[];
  while(temp!=null){
    res.add(temp.data);
    temp=temp.prev;
  }
  return res.join();
}

}

void main(){
  dll d = dll();
  var word="flutter";

  for(int i=0;i<word.length;i++){
    d.addValue(word[i]);
  }

  print(d.revDisplay());
}