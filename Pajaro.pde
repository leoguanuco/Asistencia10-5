class Pajaro extends GameObject implements IVisuable {
  private float velocidad; //estableci la velocidad para darle la movilidad autonoma al personaje
  private boolean stop; //este booleano sirve para llamar a los metodos de 'detener' y 'reanudar'
  /**private float a;
  private float b;
  private float c;*/

  /**Constructo por defecto*/
  public Pajaro() {
    this.posicion = new PVector(50, 500);//herede la posicion de la clase abstracta del GameObject, el cual es un atributo protegido
    this.velocidad = 1; //valor decimal de la velocidad
    this.stop = false; // booleano stop el cual establecí en falso
    /**this.a = 0.0041;
    this.b = 0.15;
    this.c = 50;*/
  }

  // ------ METODO DISPLAY ------ //
  public void display() {
    fill(#1FA1CE);
    ellipse(posicion.x, posicion.y, 50, 50);
  }

  // ------- METODO MOVER -------- //
  public void mover() {
    if (!stop) {
      //posicion.y = (a * pow(posicion.x , 2) + b * posicion.x + c);
      posicion.x += velocidad;
      if (posicion.x > 715) {
        posicion.x = 50; // Reinicia a la izquierda si sale de la pantalla
      }
    }
    //println(posicion);
  }
}
