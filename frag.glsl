// Define la precisión de bits de los números de punto flotante
precision mediump float; 

uniform float uTime;

varying vec2 vUv;


// void main() {

//   vec2 uv = vUv;

//   uv.xy -= 0.5;

// float t = uTime;
 
//   float innerWave = cos(vUv.x * t)  * sin(vUv.x * 10.1 / t) * 5.;
  
//   float innerWave2 = cos(vUv.x * 5.0 + t) * sin(vUv.y / 1.0 ) * 1. + innerWave ;

//   vec3 colorZ = vec3(0.6, 0.4, 0.4);
//   vec3 c1 = vec3(0.3, 0.1, 0.5);
//   vec3 c2 = vec3(0.2, 0.5, 0.3);
  
//   float wave = cos(uTime) * 5. + 5.;
//   float wave2 = cos(uTime) * 5. + 5.;

//   float circulo = length (uv.xy) / innerWave * uTime; 
  
//   float circ = 0.5 + wave / innerWave2;
  
//   float x = smoothstep (0.9, wave, wave);

//   vec3 color = mix(1.0 + colorZ, c1, x); 
  
//   circulo = step(sin(vUv.y / 0.5 * innerWave) 
//   * wave2, cos(vUv.y * 4.0 ));

//   // if (0.25 < circulo) {
//   //   circulo = 0.0;
//   // } else {
//   //   circulo = 1.0;
//   // }

//   innerWave += wave / circulo * innerWave;

//   // gl_FragColor.rgb = color;
//   // gl_FragColor.a = 1.0;

//   //   color.rb += wave + 0.6;
//   // color.g += wave + 0.1;

//   gl_FragColor = vec4(x / innerWave2 *t , 0.1 / innerWave2, colorZ * color / innerWave * innerWave); 
// }



// OLAS DE COLOR CON TEXTURA CRISTALIZADA //

// void main() {

//   vec2 coords = vUv;

// float t = uTime*.5+atan(vUv.y);
 
//   float innerWave = tan((vUv.y+vUv.x/t)+t) / sin(vUv.x+vUv.y+t) +cos(100./vUv.x/vUv.y) / cos(24.-vUv.y) - tan(vUv.y*-1.);
  

//   coords.y = 1.0 - coords.y;
//   coords.x = 1.0 - coords.x;

//   vec4 color = vec4 (coords.x + sin(9.0)*innerWave, coords.x, 0.5 * innerWave , 0.5 + innerWave); 
//   vec4 color2 = vec4 (coords.y * innerWave, coords.y + innerWave, 5. / t , 0.5 * innerWave); 

//   float x = smoothstep (-.05, t + innerWave, coords.x);
//   float y = smoothstep (.5, innerWave, coords.y);

//   // vec3 color = vec3 (0.8, 0.2, 0.8);
//   // // RGBA

//   gl_FragColor = vec4(abs(x/y*t+innerWave
//   *acos(y)/tan(x)),color2-color); 
// }



//Ilithya
// void main() {

//   vec2 uv = vUv;
  
//   vec3 c1 =vec3 (0.2, 1.0, 0.2);
//   vec3 c2 =vec3 (0.93, 0.78, 0.98);

//   // vec3 color = vec3 (0.8,0.6,0.8);

//   // float gradienteLineal = 1.0 - uv.x;
  
//   // color += gradienteLineal; 

//   vec3 color = mix(c2, c1, uv.x);


//   gl_FragColor = vec4(color, 1.0); 
// }



// Mario Shader movil

// void main() {

//   vec2 uv = vUv;

//   float fr = 250.0;
//   float speed = 10.0;

//   float wave = sin((uv.x * uv.y) * fr + uTime * speed) * 0.5 + 0.5;

//   uv.x = 1.0 * uv.x;
//   uv.y = 1.0 * uv.y;

//   float wave2 = cos((uv.x * uv.y) * fr + uTime * speed) * 0.7 + 0.7;
  
//   vec4 color = vec4 (1.0);
//   color.g = wave;
//   color.b = wave2;

//   color += wave + wave2;

//   gl_FragColor = color; 
// }




// CIRCULO ROSA PALPITANTE // 
// void main() {

//   vec2 uv = vUv;
//   float t = cos(uTime);

//   uv.xy -= 0.5;

//   vec3 colorZ = vec3(0.9,0.9,0.9);

//   vec3 c1 = vec3(0.9, 0.6, 0.5);
//   vec3 c2 = vec3(0.2, 0.1, 0.3);
//   float wave = cos(uTime) * 1.9 + 4.05 * tan(uTime) * 4.05;
//   float circulo = length(uv.xy) * wave;

//   float circ = length(uv)+ 4.05 * tan(uTime);
//   float x = smoothstep (5. * t, wave, circ);

//   vec3 color = mix(c2, c1, x); 
  
//   // vec3 color = vec3 (0.8, 0.2, 0.8); 

//   // USAR OTRO METODO PARA DELIMITAR EL GRADIENTE
//   // (if-else) crear steps 
  
//   circulo = step(circulo, 0.4);

//   // if (0.25 < circulo) {
//   //   circulo = 0.0;
//   // } else {
//   //   circulo = 1.0;
//   // }

//   colorZ += colorZ * circulo / 2.;

//   // gl_FragColor.rgb = color;
//   // gl_FragColor.a = 1.0;

//   gl_FragColor = vec4(x, 0.55 / wave, color + circulo * colorZ + circulo); 
// }

void main() {

  vec2 uv = vUv;

  uv.xy += .2;

    float wave = cos(uTime);

  vec3 c1 =vec3 (0.2, 1.0, 0.2);
  vec3 c2 =vec3 (0.9, 0.7, 0.9);
  vec3 color = vec3(c1*c2);

float cuadrado = max(
    uv.y + cos(uv.x) / wave/5.,
    uv.x + cos(uv.y) / wave/5.   
    );

 float triangulo = max(sin(uv.x), tan(uv.y));

  // USAR OTRO METODO PARA DELIMITAR EL GRADIENTE (if-else) crear steps //
  
  triangulo = step(triangulo-wave / cuadrado-wave, wave/ cuadrado + triangulo);
  // cuadrado = step(wave, wave);

  color += triangulo - cuadrado + wave;

  gl_FragColor = vec4(cuadrado +  wave + triangulo, color + wave); 
}




//MARIO
// void main() {

//   vec2 uv = vUv;

//   vec3 c1 = vec3(0.9, 0.6, 0.8);
//   vec3 c2 = vec3(0.2, 0.1, 0.3);
//   float wave = cos(uTime) * 0.5 + 0.5;

//   float circ = length(uv - 0.5);
//   float x = smoothstep (0.2, wave, circ);

//   vec3 color = mix(c1, c2, x); 
   
//   // vec3 color = vec3 (0.8, 0.2, 0.8);
//   // // RGBA

//   gl_FragColor.rgb = color;
//   gl_FragColor.a = 1.0;
// }


// void main() {

//   vec2 uv = vUv;

// //colores
//   vec3 c1 = vec3(0.9, 0.6, 0.8);
//   vec3 c2 = vec3(0.2, 0.1, 0.3);
  
//   //circulo1
//   vec2 cuv1 = uv - vec2(0.0, 0.0);
//   float circ1 = length(cuv1);
//   circ1 smoothstep (0.0, 0.5, circ1);

// //circulo 2
//   vec2 cuv2 = uv -vec2(1.0, 0.0);
//   float circ2 = length(cuv2);
//   circ2 smoothstep (0.35, 0.6, circ2);

//   float circs = min(circ1, circ2);
//   circs = circ1 * circ2;

//   vec3 color = mix(c1, c2, circs); 
  
//   gl_FragColor.rgb = color;
//   gl_FragColor.a = 1.0;
// }



// void main() {

//   vec2 uv = vUv;
//   float t = uTime;
 
//   float innerWave = cos (vUv.x * 3.0 - t) * sin (vUv.y * 5.0 - t);

//   float wave = cos (vUv.y * 140.0 - t + innerWave * 8.0) * 0.5 + 0.5;
//   wave = smoothstep (0.5, 0.6, wave);

//   vec3 color = vec3(0f); 
//   color.rb += wave + 0.6;
//   color.g += wave + 0.1;

//   gl_FragColor.rgb = color;
//   gl_FragColor.a = 1.0;
// }
