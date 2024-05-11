float a;
float b;
float c;

void setup() {
  size(400, 400);
  // Definir los coeficientes de la función cuadrática
  a = 1; // coeficiente cuadrático
  b = 0; // coeficiente lineal
  c = 0; // término independiente
  
}

void draw() {
  background(0);
  // Dibujar la función cuadrática
  line(0,height/2,400,height/2);
  line(width/2,0,width/2,400);
  stroke(255);
  /** CODIGO CON PUNTOS
  strokeWeight(5);
  for (float x = -width/2; x < width/2; x += 1) {
    float y = (a*pow(x,2)+b*x+c);
    point(width/2 + x, y); // Ajustar la posición para centrar el gráfico
  }*/
  /**CODIGO CON FORMA DENTRO DE VERTICES*/
  beginShape();
  for (float x = -width/2; x < width/2; x += 1) {
    float y = (a*pow(x,2)+b*x+c);
    vertex(width/2 + x, height/2 + y); // Ajustar la posición para centrar el gráfico
  }
  endShape();
}
