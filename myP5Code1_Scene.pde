var bakeryLabels = ["Crossiants","Baguettes"];

setup = function() {

  size(400, 400); 
  background(0,0,0,0);

  var crossiantX = 60;
  
  textSize(30);
var baguetteX = 50;
  while(crossiantX < 300){
    text("🥐", crossiantX, 85);
    crossiantX += 40;
  }

 
  textSize(15);
  text(bakeryLabels[0], 70, 105);
  text(bakeryLabels[1], 70, 185);
  while(baguetteX < 300){
    text("🥖", baguetteX, 160);
    baguetteX += 30; 
     
     textSize(40);
     
     }

  var tropicalFruits = ["🍓", "🍇", "🍍", "🍌"]
  

}

draw = function(){   

}


mouseClicked = function(){

}
