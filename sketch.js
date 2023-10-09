let r, g, b, x, y;
let a = 4;
let detailY;
let capture;
let d;
let c;

function setup() {
  frameRate(15);
  createCanvas(windowWidth, windowHeight, WEBGL);
  d = width / 2;
  c = height / 2;

  detailY = createSlider(3, 24, 3);
  detailY.position(10, height + 5);
  detailY.style('width', '80px');

  capture = createCapture(VIDEO);
  capture.size(320, 240); 
}

function draw() {

  if (a < width) {
    let v = p5.Vector.random3D();
    // background(100, 250, 190);

    // rotateY(millis() / 1000);

    // rotateX(millis() / 1000);
    // translate(p5.Vector.fromAngle(millis() / 1000, 40));
    push();
    noStroke();
    // stroke(random(230), random(230), random(230));
    texture(capture);
    // rotateX(millis() / 1000);
    // translate(width / 4, height / 4, height / 8);
    // rotateY(millis() / 1000);
    capture.loadPixels();
    const stepSize = round(constrain(mouseX / 8, 6, 32));
    for (let y = 0; y < height; y += stepSize) {
      for (let x = 0; x < width; x += stepSize) {
        const i = y * width + x;
        const darkness = (255 - capture.pixels[i * 4]) / 255;
        const radius = stepSize * darkness;
        sphere(x, y, radius);

        // sphere(d, c, detailY.value());

        d = d - 0.5;
        if (d < 0) {
          d = height;
        }

        c = c - 0.5;
        if (c < 0) {
          c = height;
        }
      }
    }
    
    // if (capture.loadedmetadata) {
    //   let c = capture.get(0, 0, 512, 512);
    //   image(c, 0, 0);
    // }

    pop();


  } else {
    console.log('negative');

  }

}

// function mousePressed() {
//   background(random(255));
  
//   if (a > 3) {
//     console.log('positive');
//     fill(220, 60, 70, mouseY);
//     // stroke(random(200), random(200));
//     rotateY(millis() / 150);
//     sphere(height, 16, detailY.value());
//   } else {
//     console.log('negative');
//   }
//}



