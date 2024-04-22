within AES_project_2023_2024.LittlePieces;

model RoomWithDoorAndRadiation
  
  parameter Real Gd = 300;
  parameter Real Gw1;
  parameter Real Gw2;
  parameter Real Cw;
  Modelica.Electrical.Analog.Basic.Conductor conductor(G = Gw1) annotation(
    Placement(transformation(origin = {-28, 4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = Cw, v(fixed = true, start = 293.15)) annotation(
    Placement(transformation(origin = {14, -34}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground2 annotation(
    Placement(transformation(origin = {-4, -76}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Conductor conductor1(G = Gw2) annotation(
    Placement(transformation(origin = {38, 4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Interfaces.Pin pinOut annotation(
    Placement(transformation(origin = {-92, 4}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-60, -6}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Interfaces.Pin pinIn annotation(
    Placement(transformation(origin = {80, 2}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {60, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.BooleanInput doorin annotation(
    Placement(transformation(origin = {-30, 60}, extent = {{-20, -20}, {20, 20}}, rotation = 90), iconTransformation(origin = {-72, 42}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Electrical.Analog.Sources.SignalCurrent signalCurrent annotation(
    Placement(transformation(origin = {-28, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Blocks.Interfaces.RealInput Prad annotation(
    Placement(transformation(origin = {-62, -38}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-62, -38}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Electrical.Analog.Basic.Conductor conductor42(G = Gd) annotation(
    Placement(transformation(origin = {-2, 38}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Ideal.IdealTwoWaySwitch switch1 annotation(
    Placement(transformation(origin = {-32, 38}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(pinIn, conductor1.n) annotation(
    Line(points = {{80, 2}, {80, 4}, {48, 4}}, color = {0, 0, 255}));
  connect(capacitor1.n, signalCurrent.p) annotation(
    Line(points = {{14, -44}, {-28, -44}}, color = {0, 0, 255}));
  connect(ground2.p, capacitor1.n) annotation(
    Line(points = {{-4, -66}, {-4, -44}, {14, -44}}, color = {0, 0, 255}));
  connect(signalCurrent.i, Prad) annotation(
    Line(points = {{-40, -34}, {-64, -34}, {-64, -38}, {-62, -38}}, color = {0, 0, 127}));
  connect(conductor42.n, conductor1.n) annotation(
    Line(points = {{8, 38}, {48, 38}, {48, 4}}, color = {0, 0, 255}));
  connect(switch1.n2, conductor42.p) annotation(
    Line(points = {{-22, 38}, {-12, 38}}, color = {0, 0, 255}));
  connect(switch1.p, conductor.p) annotation(
    Line(points = {{-42, 38}, {-52, 38}, {-52, 4}, {-38, 4}}, color = {0, 0, 255}));
  connect(conductor.p, pinOut) annotation(
    Line(points = {{-38, 4}, {-92, 4}}, color = {0, 0, 255}));
  connect(conductor.n, capacitor1.p) annotation(
    Line(points = {{-18, 4}, {-8, 4}, {-8, -24}, {14, -24}}, color = {0, 0, 255}));
  connect(conductor.n, signalCurrent.n) annotation(
    Line(points = {{-18, 4}, {-8, 4}, {-8, -24}, {-28, -24}}, color = {0, 0, 255}));
  connect(conductor.n, conductor1.p) annotation(
    Line(points = {{-18, 4}, {28, 4}}, color = {0, 0, 255}));
  connect(doorin, switch1.control) annotation(
    Line(points = {{-30, 60}, {-32, 60}, {-32, 50}}, color = {255, 0, 255}));
  annotation(Icon(coordinateSystem(extent = {{-50, -200}, {50, 200}}), graphics = {Rectangle(origin = {30, -4}, rotation = -90, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-200, 24}, {199, -75}}), Text(origin = {-1, -4}, rotation = -90, extent = {{-52, 19}, {52, -19}}, textString = "WallWithRadiation")}),
  Diagram(graphics = {Text(origin = {-47, -4}, extent = {{-1, 2}, {1, -2}}, textString = "text")}));

end RoomWithDoorAndRadiation;
