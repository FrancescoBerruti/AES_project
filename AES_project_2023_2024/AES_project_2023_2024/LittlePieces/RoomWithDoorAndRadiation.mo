within AES_project_2023_2024.LittlePieces;

model RoomWithDoorAndRadiation
  
  parameter Real Gd = 300;
  parameter Real Gw1;
  parameter Real Gw2;
  parameter Real Cw;
  Modelica.Electrical.Analog.Basic.Conductor conductor(G = Gw1) annotation(
    Placement(transformation(origin = {-28, 4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = Cw, v(fixed = true, start = 293.15)) annotation(
    Placement(transformation(origin = {18, -34}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground2 annotation(
    Placement(transformation(origin = {-4, -76}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Ideal.IdealTwoWaySwitch switch annotation(
    Placement(transformation(origin = {-60, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Conductor conductor4(G = Gw1 + Gd/2) annotation(
    Placement(transformation(origin = {-28, 22}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Conductor conductor1(G = Gw2) annotation(
    Placement(transformation(origin = {38, 6}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Ideal.IdealTwoWaySwitch switch1 annotation(
    Placement(transformation(origin = {6, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Conductor conductor41(G = Gw2 + Gd/2) annotation(
    Placement(transformation(origin = {36, 24}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Interfaces.Pin pinOut annotation(
    Placement(transformation(origin = {-92, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-60, -6}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Interfaces.Pin pinIn annotation(
    Placement(transformation(origin = {80, 2}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {60, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.BooleanInput doorin annotation(
    Placement(transformation(origin = {-30, 60}, extent = {{-20, -20}, {20, 20}}, rotation = 90), iconTransformation(origin = {-72, 42}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Electrical.Analog.Sources.SignalCurrent signalCurrent annotation(
    Placement(transformation(origin = {-24, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Blocks.Interfaces.RealInput Prad annotation(
    Placement(transformation(origin = {-62, -38}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-62, -38}, extent = {{-20, -20}, {20, 20}})));
equation
  connect(capacitor1.p, conductor.n) annotation(
    Line(points = {{18, -24}, {-18, -24}, {-18, 4}}, color = {0, 0, 255}));
  connect(conductor4.n, conductor.n) annotation(
    Line(points = {{-18, 22}, {-18, 4}}, color = {0, 0, 255}));
  connect(switch1.p, conductor.n) annotation(
    Line(points = {{-4, 2}, {-11, 2}, {-11, 4}, {-18, 4}}, color = {0, 0, 255}));
  connect(conductor41.n, conductor1.n) annotation(
    Line(points = {{46, 24}, {46, 14}, {48, 14}, {48, 6}}, color = {0, 0, 255}));
  connect(pinOut, switch.p) annotation(
    Line(points = {{-92, 0}, {-70, 0}}, color = {0, 0, 255}));
  connect(pinIn, conductor1.n) annotation(
    Line(points = {{80, 2}, {80, 4}, {48, 4}, {48, 6}}, color = {0, 0, 255}));
  connect(doorin, switch.control) annotation(
    Line(points = {{-30, 60}, {-60, 60}, {-60, 12}}, color = {255, 0, 255}));
  connect(doorin, switch1.control) annotation(
    Line(points = {{-30, 60}, {6, 60}, {6, 14}}, color = {255, 0, 255}));
  connect(conductor.p, switch.n1) annotation(
    Line(points = {{-38, 4}, {-50, 4}}, color = {0, 0, 255}));
  connect(conductor4.p, switch.n2) annotation(
    Line(points = {{-38, 22}, {-44, 22}, {-44, 0}, {-50, 0}}, color = {0, 0, 255}));
  connect(conductor41.p, switch1.n2) annotation(
    Line(points = {{26, 24}, {22, 24}, {22, 2}, {16, 2}}, color = {0, 0, 255}));
  connect(conductor1.p, switch1.n1) annotation(
    Line(points = {{28, 6}, {16, 6}}, color = {0, 0, 255}));
  connect(capacitor1.n, signalCurrent.p) annotation(
    Line(points = {{18, -44}, {-24, -44}}, color = {0, 0, 255}));
  connect(signalCurrent.n, conductor.n) annotation(
    Line(points = {{-24, -24}, {-18, -24}, {-18, 4}}, color = {0, 0, 255}));
  connect(ground2.p, capacitor1.n) annotation(
    Line(points = {{-4, -66}, {-4, -44}, {18, -44}}, color = {0, 0, 255}));
  connect(signalCurrent.i, Prad) annotation(
    Line(points = {{-36, -34}, {-62, -34}, {-62, -38}}, color = {0, 0, 127}));
  annotation(Icon(coordinateSystem(extent = {{-50, -200}, {50, 200}}), graphics = {Rectangle(origin = {30, -4}, rotation = -90, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-200, 24}, {199, -75}}), Text(origin = {-1, -4}, rotation = -90, extent = {{-52, 19}, {52, -19}}, textString = "WallWithRadiation")}));

end RoomWithDoorAndRadiation;