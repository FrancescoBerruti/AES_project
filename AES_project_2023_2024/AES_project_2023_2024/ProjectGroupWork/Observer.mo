within AES_project_2023_2024.ProjectGroupWork;

model Observer 
  parameter Real A_sys[6,6],B_sys[6,3],C_sys[3,6],D_sys[3,3];
  parameter Real L[6,3];
  constant Real  I_6[6,6]=[1,0,0,0,0,0;
                           0,1,0,0,0,0;
                           0,0,1,0,0,0;
                           0,0,0,1,0,0;
                           0,0,0,0,1,0;
                           0,0,0,0,0,1];
  Modelica.Blocks.Interfaces.RealVectorInput y annotation(
    Placement(transformation(origin = {-94, 44}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-94, 44}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealVectorInput u annotation(
    Placement(transformation(origin = {-96, -20}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-98, -20}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Routing.Multiplex2 multiplex2 annotation(
    Placement(transformation(origin = {-58, 10}, extent = {{-10, -10}, {10, 10}})));
 Modelica.Blocks.Continuous.StateSpace
 stateSpace(A =(A_sys-L*C_sys), B=[B_sys-L*D_sys, L],C =I_6, D=zeros(6,6)) 
 annotation( 
    Placement(transformation(origin = {3, 9}, extent = {{-17, -17}, {17, 17}})));
  Modelica.Blocks.Interfaces.RealOutput y1 annotation(
    Placement(transformation(origin = {68, 10}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {68, 0}, extent = {{-10, -10}, {10, 10}})));
 
equation  
  connect(multiplex2.u1[1], y) annotation(
    Line(points = {{-70, 16}, {-94, 16}, {-94, 44}}, color = {0, 0, 127}));
  connect(multiplex2.u2[1], u) annotation(
    Line(points = {{-70, 4}, {-96, 4}, {-96, -20}}, color = {0, 0, 127}));
  connect(multiplex2.y, stateSpace.u) annotation(
    Line(points = {{-46, 10}, {-18, 10}}, color = {0, 0, 127}, thickness = 0.5));
  connect(stateSpace.y, y1) annotation(
    Line(points = {{22, 10}, {68, 10}}, color = {0, 0, 127}));
end Observer;
