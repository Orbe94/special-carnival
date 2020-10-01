/* Spawn food at random location.
 food moves away from player
 food and enemies cant collide
 
 If player is touching food then
 Increase score
 Set food position to random position
 Spawn new food:
 Add new random position to food position list
 
 else 
 
 food continue to move away from player.
 
 End if*/



//public class food {

//  private Random rnd;
//  private Dot food; {
//  private int foody=(round(random(97))+10)+80;
//  private int foodx=(round(random(97))+10)+80;
     
    
//    food = new Dot(25, 25, width-1, height-1);
//     fill (0,255,0);
//     this.rnd = new Random();
     
//  }
//}


//private void updateFood() {

//int dx = player.getX() - spawnFood.getX();
//        int dy = player.getY() - spawnFood.getY();
//        if(abs(dx) > abs(dy))
//        {
//          if(dx > 0)
//          {
//            //Player is to the right
//            spawnFood.moveRight();
//          }
//          else
//          {
//            //Player is to the left
//            spawnFood.moveLeft();
//          }
//        }
//        else if(dy > 0)
//        {
//          //Player is down;
//          spawnFood.moveDown();
//        }
//        else
//        {//Player is up;
//          spawnFood.moveUp();
//        }
//      }
