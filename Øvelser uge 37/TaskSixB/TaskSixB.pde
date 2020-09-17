// 6.b make 3 integer variables named x, y and z. Print "Success!" if their sum is 30, but none of them may have the value of 10, 20 or 30. Otherwise print "Failure!".

int x = 8;
int y = 9;
int z = 13;

void setup(){
  noLoop();
}

void draw(){
  

if (x != 10 && y != 10 && z != 10 && x + y + z ==30)
{
  println("succes");
}else
println("failure");

}
