void intro() {
  //background
  background(200);
  
  textSize(42);
  text("PEW PEW GAME!", 250,200);
  //To start
  rect(300,400,150,50);
  fill(0);
  textSize(26);
  text("Start",340,435);
  fill(225);
  
  
  //To options
  rect(300,475,150,50);
  fill(0);
  textSize(22);
  text("Options",330,475+30);
  fill(255);
  
}



void introClicks() {
   if(mouseX>300 && mouseX < 550 && mouseY > 400 && mouseY < 450){
  mode = GAME; 
 }
  
  if(mouseX > 300 && mouseX < 450 && mouseY > 475 && mouseY < 475+50){
   mode  = OPTION;
  }
}
