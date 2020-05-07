class Player extends GameObject { //takes the information from GameObject so no copypasta
  
  Player() {
   super(width/2, height/2, 20, 3, yellow); //x,y,size,hp,color
  }
    //void show is in the superclass, GameObject
    
    void act() { //overide the act in GameObject
      super.act();
      //Respondes to key presses
      if (wkey) vy = -4;
      if (akey) vx = -4;
      if (skey) vy = 4;
      if (dkey) vx = 4;
      //Stops player if the gamer lets go of keys
      if (!wkey && !skey) vy = 0;
      if (!akey && !dkey) vx = 0; 
      //Keeps player/character onscreen
      if (x+size/2 < 0+size) x = 0+size/2;
      if (x > width-size/2) x = width-size/2;
      if (y+size/2 < 0+size) y = 0+size/2;
      if (y > height-size/2) y = height-size/2;
      //Shooting
      shoot();
      
    }
      //Shooting
      void shoot(){
       if (mousePressed){
        objects.add(new Bullet()); 
       }
        
      }
    
    void show(){
     super.show();
      
    }
  
  
  
  
  
  
  
}
