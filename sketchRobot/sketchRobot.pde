float cx = 400;
float cy = -600;
float cz = 1000;

float wPhi = 0;
float wTheta = 0;
float wScale = 1.0;

void setup() {
  size(800, 600, P3D);
}

void draw() {
  background(0);

  // カメラ
  camera(cx, cy, cz, 0, 0, 0, 0, 1, 0);  

  // 光源
  pointLight(255, 255, 255, 0, -1000, 500);
  ambientLight(128, 128, 128);
  //ambientLight(255, 255, 255);

  // オブジェクトの回転とスケール
  rotateY(wPhi);
  rotateX(-wTheta);
  scale(wScale);

  // ロボット
  fill(255, 255, 0, 128);
  noStroke();
  // 胴体(基準)
  box(200, 300, 100);
  // 頭
  pushMatrix();
  translate(0, -250, 0);
  sphere(100);
  popMatrix();
  // 右足(上肢)
  pushMatrix();
  translate(-60, 250, 0);
  box(80, 200, 100);
  popMatrix();
  // 右足(下肢)
  pushMatrix();
  translate(-60, 450, 0);
  box(80, 200, 100);
  popMatrix();
  // 左足(上肢)
  pushMatrix();
  translate(60, 250, 0);
  box(80, 200, 100);
  popMatrix();
  // 左足(下肢)
  pushMatrix();
  translate(60, 450, 0);
  box(80, 200, 100);
  popMatrix();
  // 右腕(上腕)
  pushMatrix();
  translate(-175, -110, 0);
  box(150, 80, 100);
  popMatrix();  
  // 右腕(下腕)
  pushMatrix();
  translate(-325, -110, 0);
  box(150, 80, 100);
  popMatrix();  
  // 左腕(上腕)
  pushMatrix();
  translate(175, -110, 0);
  box(150, 80, 100);
  popMatrix();  
  // 左腕(下腕)
  pushMatrix();
  translate(325, -110, 0);
  box(150, 80, 100);
  popMatrix();
}

