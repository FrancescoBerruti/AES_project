within AES_project_2023_2024.ProjectGroupWork;

model StrictController
  AES_project_2023_2024.ProjectGroupWork.Split_Equalizer split_Equalizer(K = 80784) annotation(
    Placement(transformation(origin = {-17, 69}, extent = {{-22, -22}, {22, 22}})));
  AES_project_2023_2024.ProjectGroupWork.Split_Equalizer split_Equalizer1(K = 53856)  annotation(
    Placement(transformation(origin = {-23, -9}, extent = {{-18, -18}, {18, 18}})));
  AES_project_2023_2024.ProjectGroupWork.Split_Equalizer split_Equalizer2(K = 134640)  annotation(
    Placement(transformation(origin = {-22, -84}, extent = {{-17, -17}, {17, 17}})));
  Modelica.Blocks.Interfaces.RealInput y_meas1 annotation(
    Placement(transformation(origin = {-166, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, 102}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput setpoint1 annotation(
    Placement(transformation(origin = {-84, 58}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, 66}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput y_meas2 annotation(
    Placement(transformation(origin = {-82, 12}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, 26}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput setpoint2 annotation(
    Placement(transformation(origin = {-84, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput y_meas3 annotation(
    Placement(transformation(origin = {-84, -62}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, -64}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput setpoint3 annotation(
    Placement(transformation(origin = {-86, -92}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, -102}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealOutput u1 annotation(
    Placement(transformation(origin = {42, 74}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {84, 36}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput u2 annotation(
    Placement(transformation(origin = {46, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {84, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput u3 annotation(
    Placement(transformation(origin = {42, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {84, -42}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealInput Gained_T1 annotation(
    Placement(transformation(origin = {-162, 114}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-56, 140}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
  Modelica.Blocks.Interfaces.RealInput Gained_T2 annotation(
    Placement(transformation(origin = {-160, 28}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-12, 140}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
  Modelica.Blocks.Interfaces.RealInput Gained_T3 annotation(
    Placement(transformation(origin = {-150, -52}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {44, 140}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
equation
  connect(split_Equalizer.y_meas, y_meas1) annotation(
    Line(points = {{-48, 87}, {-65, 87}, {-65, 80}, {-166, 80}}, color = {0, 0, 127}));
  connect(setpoint1, split_Equalizer.y_ref) annotation(
    Line(points = {{-84, 58}, {-48, 58}, {-48, 60}}, color = {0, 0, 127}));
  connect(split_Equalizer1.y_meas, y_meas2) annotation(
    Line(points = {{-48, 6}, {-82, 6}, {-82, 12}}, color = {0, 0, 127}));
  connect(split_Equalizer1.y_ref, setpoint2) annotation(
    Line(points = {{-48, -16}, {-84, -16}, {-84, -18}}, color = {0, 0, 127}));
  connect(split_Equalizer2.y_meas, y_meas3) annotation(
    Line(points = {{-46, -70}, {-84, -70}, {-84, -62}}, color = {0, 0, 127}));
  connect(setpoint3, split_Equalizer2.y_ref) annotation(
    Line(points = {{-86, -92}, {-46, -92}, {-46, -90}}, color = {0, 0, 127}));
  connect(split_Equalizer1.actuation_signal, u2) annotation(
    Line(points = {{-2, -4}, {46, -4}}, color = {0, 0, 127}));
  connect(u1, split_Equalizer.actuation_signal) annotation(
    Line(points = {{42, 74}, {42, 76}, {8, 76}, {8, 74}}, color = {0, 0, 127}));
  connect(split_Equalizer2.actuation_signal, u3) annotation(
    Line(points = {{-2, -80}, {42, -80}}, color = {0, 0, 127}));
  connect(Gained_T1, split_Equalizer.gained_T) annotation(
    Line(points = {{-162, 114}, {-26, 114}}, color = {0, 0, 127}));
  connect(Gained_T2, split_Equalizer1.gained_T) annotation(
    Line(points = {{-160, 28}, {-30, 28}}, color = {0, 0, 127}));
  connect(Gained_T3, split_Equalizer2.gained_T) annotation(
    Line(points = {{-150, -52}, {-30, -52}, {-30, -48}}, color = {0, 0, 127}));
  annotation(
    Diagram(graphics = {Text(origin = {-79, -4}, extent = {{-1, 2}, {1, -2}}, textString = "text")}, coordinateSystem(extent = {{-200, 180}, {60, -120}})),
    Icon(coordinateSystem(extent = {{-50, 50}, {50, -50}}), graphics = {Rectangle(origin = {-3, -1}, rotation = -90, fillColor = {0, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-121, 77}, {121, -77}}), Text(origin = {-1, 6}, extent = {{-52, 19}, {52, -19}}, textString = "StrictController")}));
end StrictController;
