 class GameObject {
 float x,y,vx,vy, size, hp; 
 color myColor;
  
  GameObject(color c) {
    x = random(0+size/2,width-size/2);
    y = random(0+size/2,height-size/2);
    vx = vy = 0;
    hp = 3; 
    myColor = c;
  }
 
  GameObject(float x, float y, float size, float hp, color c) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.hp = hp;
    this.myColor = c;
    vx = vy = 0;
  }
  
  void show(){
   fill(myColor);
   ellipse(x,y,size,size);
   
  }
  
  void act() {
   x = x + vx;
   y = y + vy;
    
  }
  
  boolean isDead() {
   if (hp <= 0) return true;
   else return false;
    
  }
  
  
  
  
  
  
  
  
  
}
