import java.util.Random;

class Game
{
  private Random rnd;
  private int width;
  private int height;
  private int[][] board;
  private Keys keys;
  private int playerLife1;
  private int playerLife2;
  private Dot player1;
  private Dot player2;
  private Dot[] enemies1;
  private Dot[] enemies2;
  private Dot food; 






  Game(int width, int height, int numberOfEnemies)
  {
    if (width < 10 || height < 10)
    {
      throw new IllegalArgumentException("Width and height must be at least 10");
    }
    if (numberOfEnemies < 0)
    {
      throw new IllegalArgumentException("Number of enemies must be positive");
    } 
    this.rnd = new Random();
    this.board = new int[width][height];
    this.width = width;
    this.height = height;
    keys = new Keys();
    player1 = new Dot(0, 0, width-1, height-1);
    player2 = new Dot(1, 0, width-1, height-1);
    enemies1 = new Dot[numberOfEnemies];
    enemies2 = new Dot[numberOfEnemies];
    for (int i = 0; i < numberOfEnemies; ++i)
    {
      enemies1[i] = new Dot(width-1, height-1, width-1, height-1);
      enemies2[i] = new Dot(width-1, height-1, width-1, height-1);
    }
    this.playerLife1 = 100;
    this.playerLife2 = 100;
  }

  public int getWidth()
  {
    return width;
  }

  public int getHeight()
  {
    return height;
  }

  public int getPlayerLife1()
  {
    return playerLife1;
  }

  public int getPlayerLife2()
  {
    return playerLife2;
  }

  public void onKeyPressed(char ch)
  {
    keys.onKeyPressed(ch);
  }
  
//public void onKeyPressed2(String str)
//  {
//    keys.onKeyPressed2(str);
//}


  public void onKeyReleased(char ch)
  {
    keys.onKeyReleased(ch);
  }

//public void onKeyReleased2(String str)
//  {
//    keys.onKeyReleased2(str);
//  }

  public void update()
  {
    updatePlayer1();
    updatePlayer2();
    updateEnemies1();
    updateEnemies2();
    checkForCollisions1();
    checkForCollisions2();
    clearBoard();
    populateBoard();
    checkforWin();
  }



  public int[][] getBoard()
  {
    //ToDo: Defensive copy?
    return board;
  }

  private void clearBoard()
  {
    for (int y = 0; y < height; ++y)
    {
      for (int x = 0; x < width; ++x)
      {
        board[x][y]=0;
      }
    }
  }

  private void updatePlayer1()
  {
    //Update player 1
    if (keys.wDown() && !keys.sDown())
    {
      player1.moveUp();
    }
    if (keys.aDown() && !keys.dDown())
    {
      player1.moveLeft();
    }
    if (keys.sDown() && !keys.wDown())
    {
      player1.moveDown();
    }
    if (keys.dDown() && !keys.aDown())
    {
      player1.moveRight();
    }
  }

  private void updatePlayer2()
  {
    //Update player 2
    if (keys.upDown() && !keys.downDown())
    {
      player2.moveUp();
    }
    if (keys.leftDown() && !keys.rightDown())
    {
      player2.moveLeft();
    }
    if (keys.downDown() && !keys.upDown())
    {
      player2.moveDown();
    }
    if (keys.rightDown() && !keys.leftDown())
    {
      player2.moveRight();
    }
  }




  private void updateEnemies1()
  {
    for (int i = 0; i < enemies1.length; ++i)
    {
      //Should we follow or move randomly?
      //2 out of 3 we will follow..
      if (rnd.nextInt(3) < 2)
      {
        //We follow
        int dx = player1.getX() - enemies1[i].getX();
        int dy = player1.getY() - enemies1[i].getY();
        if (abs(dx) > abs(dy))
        {
          if (dx > 0)
          {
            //Player is to the right
            enemies1[i].moveRight();
          } else
          {
            //Player is to the left
            enemies1[i].moveLeft();
          }
        } else if (dy > 0)
        {
          //Player is down;
          enemies1[i].moveDown();
        } else
        {//Player is up;
          enemies1[i].moveUp();
        }
      } else
      {
        //We move randomly
        int move = rnd.nextInt(4);
        if (move == 0)
        {
          //Move right
          enemies1[i].moveRight();
        } else if (move == 1)
        {
          //Move left
          enemies1[i].moveLeft();
        } else if (move == 2)
        {
          //Move up
          enemies1[i].moveUp();
        } else if (move == 3)
        {
          //Move down
          enemies1[i].moveDown();
        }
      }
    }
  }

  private void updateEnemies2()
  {
    for (int i = 0; i < enemies2.length; ++i)
    {
      //Should we follow or move randomly?
      //2 out of 3 we will follow..
      if (rnd.nextInt(3) < 2)
      {
        //We follow
        int dx = player2.getX() - enemies2[i].getX();
        int dy = player2.getY() - enemies2[i].getY();
        if (abs(dx) > abs(dy))
        {
          if (dx > 0)
          {
            //Player is to the right
            enemies2[i].moveRight();
          } else
          {
            //Player is to the left
            enemies2[i].moveLeft();
          }
        } else if (dy > 0)
        {
          //Player is down;
          enemies2[i].moveDown();
        } else
        {//Player is up;
          enemies2[i].moveUp();
        }
      } else
      {
        //We move randomly
        int move = rnd.nextInt(4);
        if (move == 0)
        {
          //Move right
          enemies2[i].moveRight();
        } else if (move == 1)
        {
          //Move left
          enemies2[i].moveLeft();
        } else if (move == 2)
        {
          //Move up
          enemies2[i].moveUp();
        } else if (move == 3)
        {
          //Move down
          enemies2[i].moveDown();
        }
      }
    }
  }


  private void populateBoard()
  {
    //Insert players
    board[player1.getX()][player1.getY()] = 1;

    board[player2.getX()][player2.getY()] = 4;

    //Insert enemies for player 1
    for (int i = 0; i < enemies1.length; ++i)
    {
      board[enemies1[i].getX()][enemies1[i].getY()] = 2;
      board[enemies2[i].getX()][enemies2[i].getY()] = 2;
    }
  }


  private void checkForCollisions1()
  {
    //Check enemy collisions for player 1
    for (int i = 0; i < enemies1.length; ++i)
    {
      if (enemies1[i].getX() == player1.getX() && enemies1[i].getY() == player1.getY())
      {
        //We have a collision
        --playerLife1;
      }
    }
  }


  private void checkForCollisions2()
  {
    //Check enemy collisions for player 2
    for (int i = 0; i < enemies2.length; ++i)
    {
      if (enemies2[i].getX() == player2.getX() && enemies2[i].getY() == player2.getY())
      {
        //We have a collision
        --playerLife2;
      }
    }
  }


// Skal tjekke for hvem der vinder spillet, hvis player 1 eller 2 når under 0 point. Har kun lige hurtigt kastet noget ind her :)
private void checkforWin()
{
  for (int playerLife1 =0; playerLife1 < 0; ++playerLife1)
  if(playerLife1 >= 0);
  println("player 2 wins the game");
  
  
  
}
}
