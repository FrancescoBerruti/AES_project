within AES_project_2023_2024.ProcessComponents;

model TePrad
  parameter Real        hod_peak  = 11 "hour o max radiation and temoperature peak";
  parameter Temperature Temax     = 273.15+20 "maximum temperature";
  parameter Temperature Temin     = 273.15-5 "maximum temperature";
  parameter HeatFlux    Phimax    = 250 "maximum radiation flux";
  parameter Area        S         = 30 "radiated area (orthogonal)";
  Modelica.Blocks.Interfaces.RealOutput Te annotation(
    Placement(transformation(origin = {124, 48}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {120, 60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealOutput Prad annotation(
    Placement(transformation(origin = {144, 68}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {120, -60}, extent = {{-20, -20}, {20, 20}})));

equation
  Te   = 0.5*(Temax+Temin)+0.5*(Temax-Temin)*cos(6.28/86400*(Functions.sod(time)-3600*hod_peak));
  Prad = Phimax*S*(0.2+max(-0.2,cos(6.28/86400*(Functions.sod(time)-3600*hod_peak))));

annotation(
    Icon(graphics = {Rectangle(origin = {0, 1}, fillColor = {170, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-1, 1}, extent = {{-81, 79}, {81, -79}}, textString = "Te,Pr")}));
end TePrad;
