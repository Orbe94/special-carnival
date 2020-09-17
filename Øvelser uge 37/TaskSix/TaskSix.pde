// 6.a make 2 integer variables named a and b. Print "Success!" if either of them is equal to 10 or if the sum is. If not, print "Failure!".

int a = 8;
int b = 1;

void setup()
{
  noLoop();
}

void draw() 
{
  if (a == 10  || b == 10 || a+b == 10) {
    println("succes");
  } else
    println("failure");
}
