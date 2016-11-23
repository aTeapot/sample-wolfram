planets = PlanetData[PlanetData[], {"Radius", "Color", "AverageOrbitDistance"}];
spheres = Table[{FromEntity[b[[2]]], Sphere[{b[[3]][[1]]*20, 0, 0}, b[[1]][[1]]/1000]}, {b, planets}];
spheres = Flatten[spheres, 1];
Graphics3D[spheres]
