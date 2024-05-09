within AES_project_2023_2024.ProjectGroupWork;

model Scheduler
  Modelica.Blocks.Interfaces.RealInput h1_strict annotation(
    Placement(transformation(origin = {-190, 70}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-222, 266}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput h2_strict annotation(
    Placement(transformation(origin = {-192, 36}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-222, 218}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput h3_strict annotation(
    Placement(transformation(origin = {-192, 4}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-222, 170}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput h1_loose annotation(
    Placement(transformation(origin = {-120, 66}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-222, -160}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput h2_loose annotation(
    Placement(transformation(origin = {-124, 30}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-222, -208}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput h3_loose annotation(
    Placement(transformation(origin = {-126, -4}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-222, -256}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealOutput h1out annotation(
    Placement(transformation(origin = {108, 62}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {238, 180}, extent = {{-38, -38}, {38, 38}})));
  Modelica.Blocks.Interfaces.RealOutput h2out annotation(
    Placement(transformation(origin = {-58, 26}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {240, 80}, extent = {{-38, -38}, {38, 38}})));
  Modelica.Blocks.Interfaces.RealOutput h3out annotation(
    Placement(transformation(origin = {-58, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {240, -54}, extent = {{-40, -40}, {40, 40}})));
  parameter Real hod_start = 10;
  parameter Real hod_end   = 16;
 
  
algorithm
            
       if Functions.hod(time)>=hod_start and Functions.hod(time)<hod_end then
          h1out := h1_strict;
          h2out := h2_strict;
          h3out := h3_strict;  
       else
          h1out := h1_loose;
          h2out := h2_loose;
          h3out := h3_loose;                        
       end if;
initial algorithm
  h1out := 0;
  h2out := 0;
  h3out := 0;

annotation(Icon(coordinateSystem(extent = {{-200, -300}, {200, 300}}), graphics = {Rectangle(origin = {-1, -1}, fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-200, 300}, {200, -300}}),Text(origin = {-4, 1}, extent = {{-116, 163}, {116, -163}}, textString = "Scheduler")}));

end Scheduler;
