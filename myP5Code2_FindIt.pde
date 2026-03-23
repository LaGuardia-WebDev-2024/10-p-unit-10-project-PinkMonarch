var balloonXPos = [];
var balloonYPos = [];
var balloon = "🎈";
var balloonTotal = 10;

var moneyXPos = [];
var moneyYPos = [];
var money = "💵";
var moneyTotal = 3;
var moneyFound = 0;




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

var display = function(){
background(0,0,0,0)
  
  textSize(20);

  for(var i = 0; i < moneyXPos.length; i ++){
    text(money, moneyXPos[i], moneyYPos[i]);
  }

  for(var i = 0; i < balloonXPos.length; i ++){
    text(balloon, balloonXPos[i], balloonYPos[i]);
  }

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


  for(var i = 0; i < balloonTotal; i++){
    balloonXPos.push(random(0,600));
    balloonYPos.push(random(0,400));
  }

  for(var i = 0; i < moneyTotal; i++){
    moneyXPos.push(random(0,600));
    moneyYPos.push(random(0,400));
  }
}