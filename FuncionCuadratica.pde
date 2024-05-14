float a;
float b;
float c;
Pajaro pajaro;


void setup() {
  size(800, 600);
  // Definir los coeficientes de la función cuadrática
  a = 0.0041; // coeficiente cuadrático
  b = 0.15; // coeficiente lineal
  c = 50; // término independiente
  pajaro = new Pajaro();
  // Dibujar la función cuadrática
  /**stroke(150);
  beginShape();
  noFill();
  for (float i = -width / 2; i <= width / 2; i += 0.1) {
    float y = a * i * i + b * i + c;
    vertex(i, y);
  }
  endShape();*/
}

void draw() {
  background(0);
  // Dibujar la función cuadrática
  line(0,500,800,500);
  line(50,0,50,600);
  stroke(255);
  /**CODIGO CON PUNTOS*/
  strokeWeight(5);
  for (float x = -width/2; x < width/2; x += 1) {
    float y = (a*pow(x,2)+b*x+c);
    point(width/2 + x, y); // Ajustar la posición para centrar el gráfico
  }
  pajaro.display();
  pajaro.mover();
  println(mouseX,mouseY);
  /**CODIGO CON FORMA DENTRO DE VERTICES*/
  /**beginShape();
  for (float x = -width/2; x < width/2; x += 1) {
    float y = (a*pow(x,2)+b*x+c);
    vertex(width/2 + x, height/2 + y); // Ajustar la posición para centrar el gráfico
  }
  endShape();*/
}
