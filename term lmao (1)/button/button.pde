void setup(){
  size(500,500);


}
void draw(){
button("I am a button","kekeke",100,-100,50,50);
button("Dose buttons dough","deeznuts",200,10,50,50);
button("Deez Nuts","Gottem",300,90,50,50);
}
void button(String bText, String dText, int x, int y, int w, int h) {
  fill(128);
  rect(x,y,w,h,5);
  //rect(x,y,btext,length()*8,h,5);
  fill(255);
  text(bText,x+w/9,y+h/1.5);
  if (mouseX>=x && mouseX<=x+w && mouseY>=y && mouseY<=y+h){
    fill(55);
    text(bText,x+9,y+20);
  }
}

