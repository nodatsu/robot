float phi = 0.0;
float zoom = 1.0;

void setup() {
  size(800, 600, P3D);
}

void draw() {
  background(0);
  
  // カメラ
  camera(200, -300, 500, 0, 0, 0, 0, 1, 0);  
  
  // 光源
  pointLight(255, 255, 255, 0, -500, 0);
  ambientLight(128, 128, 128);

  // オブジェクトの回転とズーム
  rotateY(phi);
  scale(zoom);
  
  // オブジェクト
  fill(0, 255, 255, 128);
  box(500, 0, 500);

  // ロボット
  noStroke();
  fill(255, 0, 0, 128);
  
  pushMatrix();
  translate(0, -200, 0);
  sphere(30);
  popMatrix();

  pushMatrix();
  translate(0, -120, 0);
  box(60, 90, 20);
  popMatrix();

}

