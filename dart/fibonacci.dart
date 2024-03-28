void main(){
int first = 0;
int second = 1;
print(first);
print(second);
int result = 0;
for(int i = 0; i < 50; i++){
  result = first + second;
  first = second;
  second = result;
print(result);
}
}