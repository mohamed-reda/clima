void main(){
    p();
}
void p() async{
    t();
    print(t2());
//    String r=await t2();
//    t3(r);
}
void t(){
    print('task1');
}
Future t2()async{
    Duration seconds=Duration(seconds: 3);
    String s;
    await Future.delayed(seconds,(){
        s= 'task2';
        print(s);
    });
    return s;
}
void t3(String s){
    print('task3 with $s');
}