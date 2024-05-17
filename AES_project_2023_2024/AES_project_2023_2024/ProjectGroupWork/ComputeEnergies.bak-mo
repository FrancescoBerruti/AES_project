within AES_project_2023_2024.ProjectGroupWork;

model ComputeEnergies
  Modelica.Blocks.Interfaces.RealInput h1 annotation(
    Placement(transformation(origin = {-94, 66}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-222, 142}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput h2 annotation(
    Placement(transformation(origin = {-96, 26}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-222, 52}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput h3 annotation(
    Placement(transformation(origin = {-92, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-222, -26}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealOutput Etot annotation(
    Placement(transformation(origin = {58, 24}, extent = {{-32, -32}, {32, 32}}), iconTransformation(origin = {236, -16}, extent = {{-34, -34}, {34, 34}})));
equation
  der(Etot)=abs(h1)+abs(h2)+abs(h3);

annotation(Icon(coordinateSystem(extent = {{-200, -300}, {200, 300}}), graphics = {Rectangle(origin = {-1, -1}, fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-200, 300}, {200, -300}}),Text(origin = {-4, 1}, extent = {{-116, 163}, {116, -163}}, textString = "Energies")}));

end ComputeEnergies;
