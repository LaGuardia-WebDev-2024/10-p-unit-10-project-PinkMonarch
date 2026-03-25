var balloonXPos = [];
var balloonYPos = [];
var balloon = "🎈";
var balloonTotal = 100;

var moneyXPos = [];
var moneyYPos = [];
var money = "💵";
var moneyTotal = 3;
var moneyFound = 0;

var unicornXPos = [];
var unicornYPos = [];
var unicorn = "🦄";
var unicornTotal = 1;
var unicornFound = 0;


setup = function() {
   size(600, 450); 

   reset();
}

draw = function(){   

   if(keyPressed){
    if(key == 'r'){
      reset();
    }
   }

  display();
}


mouseClicked = function(){
  check(mouseX, mouseY);
}

var check = function(xClick, yClick){
  for(var i = 0; i < moneyXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, moneyXPos[i], moneyYPos[i])<15){
      moneyXPos.splice(i, 1);
      moneyYPos.splice(i, 1);
      moneyFound++;
    }
  }
}

mouseClicked = function(){
  check(mouseX, mouseY);
}


var check = function(xClick, yClick){
  for(var i = 0; i <unicornXPos.length; i++){
  if(dist(xClick - 5, yClick - 5, unicornXPos[i], unicornYPos[i])<15){
  unicornXPos.splice(i, 1);
  unicornYPos.splice(i, 1);
  unicornFound++;
}
  }
}





var display = function(){
background(0,0,0,0)
  
  textSize(20);

  for(var i = 0; i < moneyXPos.length; i ++){
    text(money, moneyXPos[i], moneyYPos[i]);
  }

  for(var i = 0; i < balloonXPos.length; i ++){
    text(balloon, balloonXPos[i], balloonYPos[i]);
  }


for(var i = 0; i < unicornXPos.length; i ++){
  text(unicorn, unicornXPos[i], unicornYPos[i]);
}





fill(0,0,0);
rect(0,400,600,50);
fill(200,200,200);
text("find the special " + unicorn + "s  |  " + unicorn + " " +unicornFound + "/" + unicornTotal, 0, 425);

if(unicornFound == unicornTotal){
  fill(200,100,50);
  textSize(25);
  text("You now earned $1,000! Press W", 50, 200);
}

textSize(20);
  fill(0,0,0);
  rect(0,400,600,50);
  fill(255,255,255);
  text("Find The " + money + "s   |   " + money + " " + moneyFound + "/" + moneyTotal, 0, 425);

  if(moneyFound == moneyTotal){
    fill(0, 200, 200);
    textSize(50);
    text("Press 'r' to restart \nthe game", 50, 200);
  }




}

var reset = function(){
  balloonXPos = [];
  balloonYPos = [];
  moneyXPos = [];
  moneyYPos = [];
  moneyFound = 0;
  unicornXPos = [];
  unicornYPos = [];
  unicornFound = 0;

  for(var i = 0; i < balloonTotal; i++){
    balloonXPos.push(random(0,600));
    balloonYPos.push(random(0,400));
  }

  for(var i = 0; i < moneyTotal; i++){
    moneyXPos.push(random(0,600));
    moneyYPos.push(random(0,400));
  }

  for(var i = 0; i < unicornTotal; i++){
    unicornXPos.push(random(0,600));
    unicornYPos.push(random(0,400));
  }

}

//background images
var secretSceneImage = loadImage("https://media.istockphoto.com/id/1202650215/vector/fortune-teller-room-with-magic-ball-tarot-cards.jpg?s=612x612&w=0&k=20&c=ReyQf6yny4t5hutlVrixb-fYvTa8vLZlswlEiF_eFU0=");
if(keyPressed){
  if(key == 'w')
  sceneImage = secretSceneImage;

}