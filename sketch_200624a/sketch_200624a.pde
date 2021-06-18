////////////////////////////////////////////SETTING/////////////////////////////////////
int num=5;
PFont fontE, fontH, fontB;
final int initScreen = 0;
final int menuScreen = 1;
final int wiro = 2;
final int inspiration = 3;
final int love=4;
int gameScreen = initScreen;
boolean isClickWiroButton = false;
boolean isClickInspirationButton = false;
boolean isClickLoveButton = false;

String wiroStr = new String();
String inspirationStr = new String();
String loveStr = new String();
PImage[] myImageArray = new PImage[num];
PImage start, menu;



////////////////////////////////////////////SETUP/////////////////////////////////////
void setup() {
  size(700, 900);
  fontH = createFont("Cooper Black.ttf", 32);
  fontE = createFont("Cooper Black.ttf", 32);
  fontB = createFont("Cooper Black.ttf", 32);

  textFont(fontE);
//  String[] fontList = PFont.list();
  //printArray(fontList); 

  myImageArray[0] = loadImage( "bg1.jpg");
  myImageArray[1] = loadImage( "bg2.jpg");
  myImageArray[2] = loadImage( "bg3.jpg");
 myImageArray[3] = loadImage( "bg4.jpg");
 myImageArray[4] = loadImage( "bg5.jpg");

  start = loadImage( "start.jpg");
  menu = loadImage( "menu.jpg");
  smooth();

  rectMode(CENTER);
}

////////////////////////////////////////////SWITCH/////////////////////////////////////
void draw() {
  switch (gameScreen) {
    ////////////////////////////////////////////FirstScreen/////////////////////////////////////
  case initScreen:
    image(start, 0, 0, width, height);
    fill(0);
    textFont(fontE);
    textAlign(CENTER);
    textSize(90); 
    text("Your Favorite \nQuote", width/2, height/5);
    fill(0);
    textFont(fontE);
    textAlign(CENTER, CENTER);
    textSize(60); 
    text("START", 190, 450);


    if (mouseX >50  && mouseX < 300 && mouseY > 400 && mouseY < 500 ) {

      fill(160, 214, 216);
      textFont(fontE);
      textAlign(CENTER, CENTER);
      textSize(60); 
      text("START", 190, 450);
      if (mousePressed&&mouseX >50  && mouseX < 400 && mouseY > 300 && mouseY < 500 ) {
        gameScreen = menuScreen;
      }
    }
    break;
    ////////////////////////////////////////////menuScreen/////////////////////////////////////
  case menuScreen:
    image(menu, 0, 0, width, height);
    noStroke();
    fill(194, 162, 255);
    rect( width/2, 300, width/3, 90, 0, 30, 30, 30);
    fill(194, 162, 255);
    rect( width/2, 420, width/3, 90, 0, 30, 30, 30);
    fill(194, 162, 255);
    rect( width/2, 540, width/3, 90, 0, 30, 30, 30);
    fill(255);
    textFont(fontE);
    textAlign(CENTER, CENTER);
    textSize(100); 
    text("Your Mood", width/2, 100);
    textSize(35); 
    text("taking care", width/2, 296);
    text("motivational", width/2, 416);
    text("self love", width/2, 536);
    if (mouseX > 233 && mouseX < 466 && mouseY > 255 && mouseY < 345) {
      noStroke();
      fill(235, 139, 255);
      rect( width/2, 300, width/3, 90, 0, 30, 30, 30);
      fill(255);
      textSize(35); 
      text("taking care", width/2, 296);
      if (mousePressed && mouseX > 233 && mouseX < 466 && mouseY > 255 && mouseY < 345) {
        gameScreen = wiro;
      }
    }
    if (mouseX > 233 && mouseX < 466 && mouseY > 375 && mouseY < 465) {
      noStroke();
      fill(235, 139, 255);
      rect( width/2, 420, width/3, 90, 0, 30, 30, 30);
      fill(255);
      textSize(35); 
      text("motivational", width/2, 416);
      if (mousePressed && mouseX > 233 && mouseX < 466 && mouseY > 375 && mouseY < 465) {
        gameScreen = inspiration;
      }
    }
    if (mouseX > 233 && mouseX < 466 && mouseY > 495 && mouseY < 585) {
      noStroke();
      fill(235, 139, 255);
      rect( width/2, 540, width/3, 90, 0, 30, 30, 30);
      fill(255);
      textSize(35); 
      text("self love", width/2, 536);
      if (mousePressed && mouseX > 233 && mouseX < 466 && mouseY > 495 && mouseY < 585) {
        gameScreen = love;
      }
    }

    break;
    ////////////////////////////////////////////위로메뉴/////////////////////////////////////
  case wiro:

    if (isClickWiroButton == false)
    {
      wiroStr = makewiro();
      iimage();
    }


    fill(0);
    textFont(fontE);
    textAlign(CENTER, CENTER);
    text("back", 620, 840);

    textFont(fontH, 50);
    textAlign(CENTER, CENTER);
    text( wiroStr, width/2, height/2);
    delay(100);
    if (mouseX > 500 && mouseX < width && mouseY > 800 && mouseY < height) {
      fill(255);
      textFont(fontB);
      textAlign(CENTER, CENTER);
      text("back", 620, 840);
      if (mousePressed && mouseX > 500 && mouseX < width && mouseY > 800 && mouseY < height) {
        gameScreen = menuScreen;
        isClickWiroButton = false;
      }
    }


    break;
    ////////////////////////////////////////////영감메뉴/////////////////////////////////////
  case inspiration:
    if (isClickInspirationButton == false)
    {
      inspirationStr = makeins();
        iimage();
    }
    fill(0);
    textFont(fontB);
    textAlign(CENTER, CENTER);
    text("back", 620, 840);
    textFont(fontE, 50);
    textAlign(CENTER, CENTER);
    text( inspirationStr, width/2, height/2);
    delay(100);
    if (mouseX > 500 && mouseX < width && mouseY > 800 && mouseY < height) {
      fill(255);
      textFont(fontB);
      textAlign(CENTER, CENTER);
      text("back", 620, 840);
      if (mousePressed && mouseX > 500 && mouseX < width && mouseY > 800 && mouseY < height) {
        gameScreen = menuScreen;
        isClickInspirationButton = false;
      }
    }
    break;
    ////////////////////////////////////////////사랑메뉴/////////////////////////////////////
  case love:
if (isClickLoveButton == false)
    {
      loveStr = makelov();
       iimage();
    }
    fill(0);
    textFont(fontB);
    textAlign(CENTER, CENTER);
    text("back", 620, 840);
    textFont(fontE, 50);
    textAlign(CENTER, CENTER);
    text( loveStr, width/2, height/2);
    delay(100);
    if (mouseX > 500 && mouseX < width && mouseY > 800 && mouseY < height) {
      fill(255);
      textFont(fontB);
      textAlign(CENTER, CENTER);
      text("back", 620, 840);
      if (mousePressed && mouseX > 500 && mouseX < width && mouseY > 800 && mouseY < height) {
        gameScreen = menuScreen;
        isClickLoveButton = false;
      }
    }
    break;
  }
}
////////////////////////////////////////////QUOTEBOX/////////////////////////////////////
////////////////////////////////////////////위로구절/////////////////////////////////////
String makewiro() {

  String word = "";  
  int ran = int(random(1, 5));


  if (ran == 1) {
    word = "You \ndon't \nneed to \nhave it \nall \nfigured out";
  }

  if (ran == 2) {
    word = "roses\nlose their petals\nbut\nthey bloom again ";
  }

  if (ran == 3) {
    word= "That was \nher magic \nshe could still \nsee the sunset \neven on those \ndarkest days.";
  }

  if (ran == 4) {
    word = "The body\nachieves\nwhat the\nmind believes";
  }
  if (ran == 5) {
    word = "There's\n no excuse\n for you to \nbe anything \nless than great ";
  }
  isClickWiroButton = true;

  //println("title: " + word);
  return word;
}

////////////////////////////////////////////영감구절/////////////////////////////////////

String makeins() {

  String word = "";  
  int ran = int(random(1, 5));


  if (ran == 1) {
    word = "Beat\n Your\n Fears  ";
  }

  if (ran == 2) {
    word = "Life is 10% what happens \nto you and 90%\n how you react to it ";
  }

  if (ran == 3) {
    word= "Do Something \nToday\nThat Your\nFuture Self\nWill\nThank You For";
  }

  if (ran == 4) {
    word = "People romanticize their \nplans but dread\nthe execution.\n The magic you're n\nloocking for \nis in the work \nyou're avoiding";
  }
  if (ran == 5) {
    word = "Old Ways\nWon't Open\nNew\nDoors. ";
  }
  isClickInspirationButton = true;
  //  println("title: " + word);
  return word;
}

////////////////////////////////////////////사랑구절/////////////////////////////////////
String makelov() {

  String word = "";  
  int ran = int(random(1, 5));


  if (ran == 1) {
    word = "the deeper I am rooted,\nthe higher I can grow";
  }

  if (ran == 2) {
    word = "You don't\nhave to go fast...\nYou just\nhave to GO";
  }

  if (ran == 3) {
    word= "You are allowed to be\n both a masterpiece \nand a work in progress,\n simultaneously ";
  }

  if (ran == 4) {
    word = "Work Out\nbecause you\nyove your body,\nnot because\nyou hate it";
  }
  if (ran == 5) {
    word = "There is no excuse for you\n to be anything less than great ";
  }
  isClickLoveButton = true;

  //  println("title: " + word);
  return word;
}

void iimage() {
 // isClickWiroButton = true;
  //isClickInspirationButton = true;
 // isClickLoveButton = true;
  for (int i=0; i<myImageArray.length; i++){
  image(myImageArray[(int)random(num)], 0, 0, width, height);}

}
