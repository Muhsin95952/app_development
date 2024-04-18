import 'dart:ffi';

class calculator {
  num add(int a, int b){
    return a + b;
  }

  num sub(int a, int b){
    return a - b;
  }

  num multiply(int a, int b){
    return a * b;
  }

  num divid(int a , int b){
    return a / b;
  }
}

void main(){
calculator sal= calculator();
print(sal.add(23, 54));
print(sal.sub(45, 23));
print(sal.multiply(23, 54));
print(sal.divid(23, 6));

}