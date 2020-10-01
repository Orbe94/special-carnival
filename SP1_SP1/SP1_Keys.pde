class Keys
{
  private boolean wDown = false;
  private boolean aDown = false;
  private boolean sDown = false;
  private boolean dDown = false;
  private boolean upDown = false;
  private boolean leftDown = false;
  private boolean downDown = false;
  private boolean rightDown = false;
  
  public Keys(){}
  
  public boolean wDown()
  {
    return wDown;
  }
  
  public boolean aDown()
  {
    return aDown;
  }
  
  public boolean sDown()
  {
    return sDown;
  }
  
  public boolean dDown()
  {
    return dDown;
  }
  
  public boolean upDown()
  {
    return upDown;
  }
  
  public boolean leftDown()
  {
    return leftDown;
  }
  
  public boolean downDown()
  {
    return downDown;
  }
  
  public boolean rightDown()
  {
    return rightDown;
  }
  
  
  void onKeyPressed(char ch)
  {
    if(ch == 'W' || ch == 'w')
    {
      wDown = true;
    }
    else if (ch == 'A' || ch == 'a')
    {
      aDown = true;
    }
    else if(ch == 'S' || ch == 's')
    {
      sDown = true;
    }
    else if(ch == 'D' || ch == 'd')
    {
      dDown = true;
    }
  }
  
  //void onKeyPressed2 (String str)
  //{
  //  if(str == 'UP'|| str == 'up')
  //  {
  //    upDown = true;
  //  }
  //  else if (str == 'LEFT' || str == 'left')
  //  {
  //    leftDown = true;
  //  }
  //  else if(str == 'DOWN' || str == 'down')
  //  {
  //    downDown = true;
  //  }
  //  else if(str == 'RIGHT' || str == 'right')
  //  {
  //    rightDown = true;
  //  }
  //}
  
  void onKeyReleased(char ch)
  {
    if(ch == 'W' || ch == 'w')
    {
      wDown = false;
    }
    else if (ch == 'A' || ch == 'a')
    {
      aDown = false;
    }
    else if(ch == 'S' || ch == 's')
    {
      sDown = false;
    }
    else if(ch == 'D' || ch == 'd')
    {
      dDown = false;
    }
  }
}

//void onKeyReleased2(String str)
//  {
//    if(str == 'UP' || str == 'up')
//    {
//      upDown = false;
//    }
//    else if (str == 'LEFT' || str == 'left')
//    {
//      leftDown = false;
//    }
//    else if(str == 'DOWN' || str == 'down')
//    {
//      downDown = false;
//    }
//    else if(str == 'RIGHT' || str == 'right')
//    {
//      rightDown = false;
//    }
//  }
