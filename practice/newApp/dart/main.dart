void main(){
  List number = [];
  for(int i = 0; i < 10; i++){
    number.add(i+1);
    print(number);
  }
  
  number.clear();
  int x = number.length;
   print("Length of the List is = $x");
}