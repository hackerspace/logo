function dump_logo(target, w) {
  var ratio = 3;
  var scale_w = w/530;

  var logo = new Object();

  r = new Raphael(target, w, w/ratio);
  r.setStart();
  logo.cb  = r.path('m 22.5,13 a 9.65,9.65 0 1 1 -19.3,0 9.66,9.66 0 1 1 19.32,0 z');
  logo.ca  = r.path('m 113.5,74 a 9.66,9.66 0 1 1 -19.32,0 9.66,9.66 0 1 1 19.32,0 z');
  logo.cst = r.path('m 264,74 a 9.66,9.66 0 1 1 -19.32,0 9.66,9.66 0 1 1 19.32,0 z');
  logo.csb = r.path('m 203,134.2 a 9.66,9.66 0 1 1 -19.32,0 9.66,9.66 0 1 1 19.32,0 z');
  logo.ce  = r.path('m 353,134 a 9.66,9.66 0 1 1 -19.32,0 9.66,9.66 0 1 1 19.32,0 z');
  logo.c4b = r.path('m 443,134 a 9.66,9.66 0 1 1 -19.32,0 9.66,9.66 0 1 1 19.32,0 z');
  logo.c4l = r.path('m 383,13 a 9.66,9.66 0 1 1 -19.32,0 9.66,9.66 0 1 1 19.32,0 z');
  logo.c4r = r.path('m 443,13 a 9.66,9.66 0 1 1 -19.32,0 9.66,9.66 0 1 1 19.32,0 z');
  logo.circle_set = r.setFinish();

  r.setStart();
  logo.b   = r.path('m 13,13 0,120.97 60.1,0.25 0,-60.36 -60.1,-0.25');
  logo.a   = r.path('m 104,74 59.6,0 -0.25,59.85 -60.1,0 -0.25,-29.8 60.61,0');
  logo.s   = r.path('m 254,74 -60.61,0 0,30.3 59.85,0 0,30.05 -59.85,0');
  logo.e   = r.path('m 343,134 -60.1,0 0,-60.36 60.1,0 0,30.05 -59.6,0');
  logo.n4  = r.path('m 373.5,13 0,60.36 59.85,0 0,60.61 0,-120.71');
  logo.n8o = r.path('m 463,13 61.37,0 0,121.22 -61.11,0 z');
  logo.n8i = r.path('m 464,74 60.1,0');
  logo.text_set = r.setFinish();

  // rescale
  logo.text_set.scale(scale_w, scale_w, 0, 0);
  logo.circle_set.scale(scale_w, scale_w, 0, 0);

  logo.raphael = r;

  window['logo_'+target] = logo;
}

