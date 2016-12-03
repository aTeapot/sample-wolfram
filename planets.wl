radiusScale = 30000;
planets = PlanetData[PlanetData[], {"Radius", "AverageOrbitDistance", "Color"}];
planetSphere[{radius_, orbite_, color_}] :=
  {
    FromEntity[color],
    Sphere[{orbite[[1]], 0, 0}, radius[[1]] / radiusScale]
  }
spheres = Flatten[planetSphere /@ planets, 1];
CloudDeploy[Graphics3D[spheres]]
