$fn=32;
height=10;

translate([-524.37/2,136.22/2,0])
	rotate([180,0,0])
		logo();








module logo()
{
	color("red") {
		circles(height);
	}

	color("black") {
		lines(height);
	}
}







module circle(height,x,y)
{
	radius = 34.46/2;

	radius2 = 8.845;

	translate([x, y, -height/2])
		difference()
		{
			cylinder(h=height, r1=radius, r2=radius, center=true);
			cylinder(h=height, r1=radius2, r2=radius2, center=true);
		}
}

module line(height, width, x0, y0, x1, y1)
{

	hull() {
		translate([x0,y0,-height/2])
			cylinder(h=height, r1=width/2, r2=width/2, center=true);
		translate([x1,y1,-height/2]) 
			cylinder(h=height, r1=width/2, r2=width/2, center=true);
	}

}


module circles(height)
{
	
	//b
	circle(height, 22.5-9.65, 13);

	//a
	circle(height, 113.5-9.65, 74);

	//s
	circle(height, 264-9.65, 74);
	circle(height, 203-9.65, 134.2);

	//e
	circle(height, 353-9.65, 134);

	//4
	circle(height, 443-9.65, 134);
	circle(height, 383-9.65, 13);
	circle(height, 443-9.65, 13);
}

module lines(height)
{

//b OK
	line(height, 10, 13, 13, 13, 133.97);
	line(height, 10, 13, 133.97, 73.1,134.22);
	line(height, 10, 73.1,134.22, 73.1, 73.86);
	line(height, 10, 73.1, 73.86, 13, 73.61);

//a OK
	line(height, 10, 104, 74, 163.6, 74);
	line(height, 10, 163.6, 74, 163.35, 133.85);
	line(height, 10, 163.35, 133.85, 103.25,133.85);
	line(height, 10, 103.25,133.85, 103, 104.05 );
	line(height, 10, 103, 104.05, 163.61 ,104.05);


//s OK
	line(height, 10, 254, 74, 193.39, 74);
	line(height, 10, 193.39, 74,193.39, 104.3 );
	line(height, 10, 193.39, 104.3,253.24 , 104.3 );
	line(height, 10, 253.24 , 104.3,253.24, 134.35  );
	line(height, 10, 253.24, 134.35, 193.39,  134.35 );

//s OK
	line(height, 10, 343, 134, 282.9, 134);
	line(height, 10, 282.9, 134, 282.9 ,73.64 );
	line(height, 10, 282.9 ,73.64,343, 73.64 );
	line(height, 10, 343, 73.64, 343, 103.69 );
	line(height, 10, 343, 103.69, 283.4, 103.69 );


//4 OK
	line(height, 10, 373.5, 13, 373.5, 73.36);
	line(height, 10, 373.5, 73.36, 433.35, 73.36 );
	line(height, 10,, 433.35, 73.36, 433.35, 133.97  );
	line(height, 10, 433.35, 133.97, 433.35, 13.26  );

// 8 OK
	line(height, 10, 463, 13, 524.37, 13);
	line(height, 10, 524.37, 13, 524.37, 74);
	line(height, 10, 524.37, 74, 464.37, 74 );
	line(height, 10, 464.37, 74, 524.37, 74);
	line(height, 10, 524.37, 74, 524.37, 134.22);
	line(height, 10, 524.37, 134.22, 463.26, 136.22);
	line(height, 10, 463.26, 136.22, 463, 13);


}


















