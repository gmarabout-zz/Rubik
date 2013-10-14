  class Rubik {
  color[][][] data = new color[6][3][3];
  int size;
  int boxSize;
  
  color black = #000000;
  color blue = #3655E8;   
  color green = #3EDE33;
  color white = #FFFFFF;
  color red = #D3291A;
  color orange = #EA7200;
  color yellow = #EAD000;
  
  Rubik(int size){
    this.size = size;
    this.boxSize = size / 3; 
  
    // Initialize new Rubik: 
    setFaceColor(0, white);
    setFaceColor(1, green);
    setFaceColor(2, yellow);
    setFaceColor(3, blue);
    setFaceColor(4, orange);
    setFaceColor(5, red); 
  }
  
  void setFaceColor(int numFace, color c){
    color[][] face = data[numFace];
    for (int i=0; i<face.length; i++){
      for (int k=0; k<face.length; k++){
        face[i][k] = c;
      }
    }
  }
  
  /**
   * rotate a face in the given direction:
   *  - positive direction: clockwork 
   *  - negative direction: anti-clockwork
   */
  void rotate(int face, int direction){
    // TODO
  }  
  
  // Draw the Rubiks Cube 
  void draw(){
    
    int cubeSize = boxSize*3;
    
    // Face 1 (white)
    pushMatrix();
    drawFace(data[0]);
    popMatrix();
    
    // Face 2 (green)
    pushMatrix();
    translate(cubeSize, 0, 0);  
    rotateY(-PI/2);
    drawFace(data[1]);
    popMatrix();    
    
    // Face 3 (yellow)
    pushMatrix();
    rotateY(PI); 
    translate(-cubeSize, 0, -cubeSize);
    drawFace(data[2]);
    popMatrix(); 
    
    // Face 4 (blue)
    pushMatrix();
    rotateY(PI/2);
    translate(-cubeSize, 0, 0); 
    drawFace(data[3]);
    popMatrix();    
    
      
    // Face 5 (orange)
    pushMatrix();
    rotateX(-PI/2);
    
    drawFace(data[4]);   
    popMatrix(); 
     
    /*
    // Face 6 (red)
    translate(0, 0, -boxSize*3);      
    drawFace(data[5]);  
     */    
  }
  
  /**
   * Draw a single face.
   */
  void drawFace(color[][] face){
    pushMatrix();
    for (int i=0; i<face.length; i++){
      pushMatrix();
      color[] line = face[i];
      for (int k=0; k<line.length; k++){
        drawSquare(line[k]);
        translate(boxSize, 0, 0);
      }
      popMatrix();
      translate(0, boxSize, 0);
    }
    popMatrix();
  }
  
  void drawSquare(color c){
    fill(c);
    rect(0, 0, boxSize, boxSize, 4);
  }
}
 
