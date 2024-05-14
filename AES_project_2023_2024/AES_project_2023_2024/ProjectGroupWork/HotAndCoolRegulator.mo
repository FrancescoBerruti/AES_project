within AES_project_2023_2024.ProjectGroupWork;

model HotAndCoolRegulator
  Modelica.Blocks.Interfaces.RealInput u1 annotation(
    Placement(transformation(origin = {-76, 60}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-66, 56}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput u2 annotation(
    Placement(transformation(origin = {-78, 16}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-66, 12}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput u3 annotation(
    Placement(transformation(origin = {-78, -24}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-66, -42}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealOutput h1 annotation(
    Placement(transformation(origin = {6, 62}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {64, 176}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput h2 annotation(
    Placement(transformation(origin = {4, 24}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {64, 84}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput h3 annotation(
    Placement(transformation(origin = {18, -6}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {64, -50}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput c1 annotation(
    Placement(transformation(origin = {-2, -38}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {64, 144}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput c2 annotation(
    Placement(transformation(origin = {-12, -82}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {64, 60}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput c3 annotation(
    Placement(transformation(origin = {24, -84}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {64, -80}, extent = {{-10, -10}, {10, 10}})));
equation
  if u1>=0 then
    h1=u1;
    c1=0;
  else
    h1=0;
    c1=-u1;
  end if;
  
    if u2>=0 then
    h2=u2;
    c2=0;
  else
    h2=0;
    c2=-u2;
  end if;
  
    if u3>=0 then 
    h3=u3;
    c3=0;
  else
    h3=0;
    c3=-u3;
  end if;
annotation(
    Icon(coordinateSystem(extent = {{-50, -200}, {50, 200}}), graphics = {Rectangle(origin = {30, -4}, rotation = -90, fillColor = {255, 165, 0}, fillPattern = FillPattern.Solid, extent = {{-200, 24}, {199, -75}}), Text(origin = {-1, -4}, rotation = -90, extent = {{-52, 19}, {52, -19}}, textString = "HeatOrCool")}),
    Diagram);

end HotAndCoolRegulator;
