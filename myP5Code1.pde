setup = function() {
    size(1000, 800);
};

//Background Images
var forestImage = loadImage("https://th.bing.com/th/id/R.9887ab8aa06c7e6607e6078fe759c8de?rik=6iFPo5Ll8AwL9w&riu=http%3a%2f%2fgetwallpapers.com%2fwallpaper%2ffull%2f2%2fc%2fd%2f73476.jpg&ehk=DC7Nc4nboQmaiyaLup5H2nyiO2HTb8d5mA%2f5UiJJ9%2fk%3d&risl=&pid=ImgRaw&r=0");
var meadowImage = loadImage("https://static.vecteezy.com/system/resources/previews/028/366/108/large_2x/colorized-drawing-of-a-countryside-flower-meadow-generative-ai-photo.jpeg");
var dragonLair = loadImage("https://th.bing.com/th/id/OIP.loG8WZBOn9C59EiQETFJaQHaEo?w=1920&h=1200&rs=1&pid=ImgDetMain");
var dragonAppear = 0;
var dragonX = 100;
var dragonMove = 2;
var fight = 0;
var swordY = 750;
var cowardEnding = loadImage("https://wallpapers.com/images/hd/pure-black-background-py9pa0f1mlsscm9s.jpg");

//Variable Declarations
var sceneImage = forestImage;
var sceneText = "Do you enter the forest?  [Press y for yes and n for no]";

//Floating Lights
var lightY = 700;
var lightDirection=0.5;
var lightMoving = 0;
var lightX = random(26,975);
var lightSize = random(15,35);

var lightMoving2 = 0;
var lightX2 = random(26,975);
var lightSize2 = random(15,35);

var lightMoving3 = 0;
var lightX3 = random(26,975);
var lightSize3 = random(15,35);

var lightMoving4 = 0;
var lightX4 = random(26,975);
var lightSize4 = random(15,35);

var lightMoving5 = 0;
var lightX5 = random(26,975);
var lightSize5 = random(15,35);

var lightMoving6 = 0;
var lightX6 = random(26,975);
var lightSize6 = random(15,35);

var lightMoving7 = 0;
var lightX7 = random(26,975);
var lightSize7 = random(15,35);

var lightMoving8 = 0;
var lightX8 = random(26,975);
var lightSize8 = random(15,35);

var lightMoving9 = 0;
var lightX9 = random(26,975);
var lightSize9 = random(15,35);

var lightMoving10 = 0;
var lightX10 = random(26,975);
var lightSize10 = random(15,35);

draw = function(){
    
   drawScene();
   dragon();
   sword();


   if(keyPressed){
     if(key == 'y'){
       sceneImage = meadowImage;
       sceneText = "Welcome to the meadow! Do you stay for a bit and rest, or do you carry on in your journey?  [Press r to rest, or c to continue]";
      lightMoving = 1;
      dragonAppear = 0;
      fight = 0;
     } 
     if(key == 'n'){
      sceneImage = cowardEnding;
      sceneText = "The Universe notes your cowardice. You live a life without consequence, and die alone of old age. [press z to restart] ";
      lightMoving = 0;
      dragonAppear = 0;
      fight = 0;
    } 
    if(key == 'z'){
      sceneImage = forestImage;
      sceneText="Do you enter the forest?  [Press y for yes and n for no]";
      lightMoving = 0;
      dragonAppear = 0;
      fight = 0;
    }
    
    if(key == 'c'){
    sceneImage = dragonLair;
    sceneText="You find a dragon's lair, teeming with magic. The dragon seems to be guarding a secret... [click g to spy, or a to approach]";
    dragonAppear = 300;
    lightMoving = 0;
    fight = 0;
    }
    
    if(key =='g'){
      sceneImage = dragonLair;
      sceneText = "Though you tried to sneak around, the dragon is provoked and attacks! Do you fight, or run? [click j to fight, n to run]"
      dragonAppear = 300;
      lightMoving = 0;
      fight = 0;
    }
    
    if(key == 'j'){
      sceneImage = cowardEnding;
      sceneText = "You try to attack, but the dragon easily overpowers you. You die, and your memory quickly fades to oblivion. [click z to restart]"
      dragonAppear = 0;
      lightMoving = 0;
      fight = 0;
    }
    

    
   //Meadow Track  
      

     
     if(key == 'r'){
      sceneImage = meadowImage;
      sceneText = " After resting, you feel stronger, as if the meadow has gifted you strength and health... [click d to continue]";
      lightMoving=1;
      dragonAppear = 0;
      fight = 0;
    }
      if(key == 'd'){
        sceneImage = dragonLair;
        sceneText="You find a dragon's lair, teeming with magic. The dragon seems to be guarding a secret... [click s to spy, or a to approach]";
        dragonAppear = 300;
        lightMoving = 0;
        fight = 0;
      }
    if(key == 's'){
      sceneImage = dragonLair;
      sceneText = "Though you tried to sneak around, the dragon is provoked and attacks! Do you fight, or run? [click f to fight, n to run]"
      dragonAppear = 300;
      lightMoving = 0;
      fight = 0;
    }
    if(key == 'f'){
      sceneImage = dragonLair;
      sceneText = "Click f to attack!"
      dragonAppear = 300;
      lightMoving = 0;
      fight = 300;
      swordY-=2;
        if(swordY < 550){
        sceneText = "You slayed the dragon! Do you search for the secret? [click i to investigate, or n to leave]"
        dragonAppear = 0;
        fight = 0;
    }
    }
    if(key == 'i'){
        sceneImage = dragonLair;
        sceneText = "The secret was the dragon's young child. Humanity will remember your heroism, but the Universe will remember your cruelty. "
        dragonAppear = 300;
        lightMoving = 0;
      }
      
    if(key =='a'){
      sceneImage = dragonLair
      sceneText = "The dragon admires your bravery, and bestows upon you the gift of magic; the gift of the Universe. [click z to restart]"
      dragonAppear = 300;
      lightMoving = 1;
    }
  }
};

var drawScene = function(){
    image(sceneImage, 0, 0, 1000, 800);
    
    fill(142,215,225);
    rect(0, 700, 1000, 100);
      
    fill(0,0,0);
    textSize(18);
   
   if(lightMoving == 1){
    
       //floating lights
       fill(255,255,192,150);
       noStroke();
       ellipse(lightX,lightY,lightSize, lightSize);
       ellipse(lightX2,lightY-15,lightSize2, lightSize2);
       ellipse(lightX3,lightY+5,lightSize3, lightSize3);
       ellipse(lightX4,lightY-20,lightSize4, lightSize4);
       ellipse(lightX5,lightY-22,lightSize5, lightSize5);
       ellipse(lightX6,lightY+13,lightSize6, lightSize6);
       ellipse(lightX7,lightY-40,lightSize7, lightSize7);
       ellipse(lightX8,lightY+35,lightSize8, lightSize8);
       ellipse(lightX9,lightY-25,lightSize9, lightSize9);
       ellipse(lightX10,lightY+11,lightSize10, lightSize10);
       lightY-=lightDirection;
   }
   
     if(lightMoving ==1 && lightY<400){
       lightDirection=-0.5;
     }
     if(lightMoving ==1 && lightY>700){
       lightDirection=0.5;
     }
     fill(0,0,0);
   text(sceneText, 10, 750);
};

var dragon = function(){
  textSize(250);
  fill(0,0,0,dragonAppear);
  text("🐉", dragonX, 600);
}

var sword = function(){
  textSize(50);
  fill(0,0,0,fight);
  text("🗡", 150, swordY);
}

