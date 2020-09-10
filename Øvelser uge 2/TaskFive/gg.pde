int weekDay = 1;
{


  switch(weekDay)
  {
  case 1: 
    println("Monday");
    break;
  case 2: 
    println("Tuesday");
    break;
  case 3: 
    println("Wednesday");
    break;
  case 4: 
    println("Thursday");
    break;
  case 5: 
    println("Friday");
    break;
  case 6: 
    println("Saturday");
    break;
  case 7: 
    println("Sunday");
    break;
  }

  if (weekDay < 5)
  {
    boolean weekend = false;
    println("It is not weekend");
  } else
  {
    boolean weekend = true;
    println("It is weekend!");
  }
}
