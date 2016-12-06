drawPlanets := Manipulate[
  Graphics3D[Flatten[(
    Function[{radius, orbite, color},
      {
        FromEntity[color],
        Sphere[{orbite[[1]], 0, 0}, radius[[1]] / radiusScale]
      }] @@@ PlanetData[PlanetData[], {"Radius", "AverageOrbitDistance", "Color"}]
  ), 1]],
  {{radiusScale, 30000}, 20000, 60000}
]

CloudDeploy[drawPlanets, Permissions -> "Public"]
