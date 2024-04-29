uniform vec3 uColorA;
uniform vec3 uColorB;

varying vec2 vUv;
varying float vWobble;

void main()
 {
//     stripey pattern
//    csm_Metalness = step(0.0, sin(vUv.x * 100.0));
//     mirror
//    csm_Roughness = 1.0 - csm_Metalness;


//   csm_FragColor.rgb = vec3(vWobble);

    // clamp the wobble to -1 to 1
   float colorMix = smoothstep(- 1.0, 1.0, vWobble);
   csm_DiffuseColor.rgb = mix(uColorA, uColorB, colorMix);

    // Mirror step
    // csm_Metalness = step(0.25, vWobble);
    // csm_Roughness = 1.0 - csm_Metalness;

    // shinny tip
    csm_Roughness = 1.0 - colorMix;
}