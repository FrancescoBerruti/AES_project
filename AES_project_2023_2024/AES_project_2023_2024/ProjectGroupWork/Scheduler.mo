within AES_project_2023_2024.ProjectGroupWork;

model Scheduler
  Modelica.Blocks.Interfaces.RealInput h1_strict annotation(
    Placement(transformation(origin = {-190, 70}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-222, 266}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput h2_strict annotation(
    Placement(transformation(origin = {-192, 36}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-222, 218}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput h3_strict annotation(
    Placement(transformation(origin = {-192, 4}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-222, 170}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput h3_loose annotation(
    Placement(transformation(origin = {-126, -4}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-222, -256}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealOutput h1out annotation(
    Placement(transformation(origin = {-60, 48}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {238, 180}, extent = {{-38, -38}, {38, 38}})));
  Modelica.Blocks.Interfaces.RealOutput h2out annotation(
    Placement(transformation(origin = {-58, 26}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {240, 80}, extent = {{-38, -38}, {38, 38}})));
  Modelica.Blocks.Interfaces.RealOutput h3out annotation(
    Placement(transformation(origin = {-58, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {240, -54}, extent = {{-40, -40}, {40, 40}})));
  parameter Real hod_start_strict = 10;
  parameter Real hod_end_strict   = 16;
  parameter Real hod_start_loose= 16;
  parameter Real hod_end_loose=21;
 
equation
       h1out = h1_strict;
       h2out = h2_strict;
       if Functions.hod(time)>hod_start_strict - 1 and Functions.hod(time)<hod_end_strict-1 then
          h3out = h3_strict;

       else if Functions.hod(time)>hod_start_loose - 1 and Functions.hod(time)<hod_end_loose-1 then
          h3out = h3_loose;
       else
          h3out=0.0;
          end if;      

       end if;

annotation(Icon(coordinateSystem(extent = {{-200, -300}, {200, 300}}), graphics = {Rectangle(origin = {-1, -1}, fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-200, 300}, {200, -300}}),Text(origin = {-4, 1}, extent = {{-116, 163}, {116, -163}}, textString = "Scheduler")}));

end Scheduler;
