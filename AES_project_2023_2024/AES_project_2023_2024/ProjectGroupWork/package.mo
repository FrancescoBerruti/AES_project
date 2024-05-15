within AES_project_2023_2024;

package ProjectGroupWork
  extends Modelica.Icons.Package;
  extends Icons.StudentModel;

  model RoomWithHeater
    parameter Real Croom;
    parameter Real Tstart;
    Modelica.Electrical.Analog.Basic.Ground ground annotation(
      Placement(transformation(origin = {0, -54}, extent = {{-10, -10}, {10, 10}})));
    Modelica.Electrical.Analog.Basic.Capacitor capacitor(v(start = Tstart, fixed = true), C = Croom) annotation(
      Placement(transformation(origin = {18, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Electrical.Analog.Sources.SignalCurrent signalCurrent annotation(
      Placement(transformation(origin = {-18, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
    Modelica.Electrical.Analog.Interfaces.Pin pin1 annotation(
      Placement(transformation(origin = {0, 66}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {2, 72}, extent = {{-10, -10}, {10, 10}})));
    Modelica.Blocks.Interfaces.RealInput PowerIn annotation(
      Placement(transformation(origin = {-58, -8}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-130, -28}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
    Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
      Placement(transformation(origin = {60, -8}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Blocks.Interfaces.RealOutput t annotation(
      Placement(transformation(origin = {44, -8}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {144, -26}, extent = {{-10, -10}, {10, 10}})));
  equation
    connect(capacitor.n, signalCurrent.p) annotation(
      Line(points = {{18, -20}, {-18, -20}}, color = {0, 0, 255}));
    connect(ground.p, signalCurrent.p) annotation(
      Line(points = {{0, -44}, {0, -20}, {-18, -20}}, color = {0, 0, 255}));
    connect(signalCurrent.i, PowerIn) annotation(
      Line(points = {{-30, -10}, {-44, -10}, {-44, -8}, {-58, -8}}, color = {0, 0, 127}));
    connect(voltageSensor.v, t) annotation(
      Line(points = {{50, -8}, {44, -8}}, color = {0, 0, 127}));
    connect(capacitor.p, voltageSensor.p) annotation(
      Line(points = {{18, 0}, {60, 0}, {60, 2}}, color = {0, 0, 255}));
    connect(capacitor.n, voltageSensor.n) annotation(
      Line(points = {{18, -20}, {60, -20}, {60, -18}}, color = {0, 0, 255}));
  connect(capacitor.p, signalCurrent.n) annotation(
      Line(points = {{18, 0}, {-18, 0}}, color = {0, 0, 255}));
  connect(capacitor.p, pin1) annotation(
      Line(points = {{0, 66}, {0, 0}, {18, 0}}, color = {0, 0, 255}));
  connect(pin1, signalCurrent.n) annotation(
      Line(points = {{0, 66}, {0, 0}, {-18, 0}}, color = {0, 0, 255}));
  connect(pin1, capacitor.p) annotation(
      Line(points = {{-2, 66}, {-2, 0}, {18, 0}}, color = {0, 0, 255}));
    annotation(
      Icon(coordinateSystem(extent = {{-100, -200}, {100, 200}}), graphics = {Rectangle(origin = {11, 5}, fillColor = {135, 206, 250}, fillPattern = FillPattern.Solid, extent = {{-120, 54}, {120, -161}}), Text(origin = {15, -41}, extent = {{-49, 71}, {49, -71}}, textString = "RoomWithHeater")}),
      Diagram);
  end RoomWithHeater;

  model WallWithDoor
    parameter Real Gd = 300;
    parameter Real Gw1;
    parameter Real Gw2;
    parameter Real Cw;
    parameter Real Tstart;
    Modelica.Electrical.Analog.Basic.Conductor conductor(G = Gw1) annotation(
      Placement(transformation(origin = {-14, 0}, extent = {{-10, -10}, {10, 10}})));
    Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = Cw, v(start = Tstart, fixed = true)) annotation(
      Placement(transformation(origin = {2, -26}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Electrical.Analog.Basic.Ground ground2 annotation(
      Placement(transformation(origin = {2, -58}, extent = {{-10, -10}, {10, 10}})));
    Modelica.Electrical.Analog.Ideal.IdealTwoWaySwitch switch annotation(
      Placement(transformation(origin = {-32, 38}, extent = {{-10, -10}, {10, 10}})));
    Modelica.Electrical.Analog.Basic.Conductor conductor1(G = Gw2) annotation(
      Placement(transformation(origin = {52, 0}, extent = {{-10, -10}, {10, 10}})));
    Modelica.Electrical.Analog.Interfaces.Pin pin1 annotation(
      Placement(transformation(origin = {-76, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-60, -6}, extent = {{-10, -10}, {10, 10}})));
    Modelica.Electrical.Analog.Interfaces.Pin pin2 annotation(
      Placement(transformation(origin = {94, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {60, -2}, extent = {{-10, -10}, {10, 10}})));
    Modelica.Blocks.Interfaces.BooleanInput doorin annotation(
      Placement(transformation(origin = {-32, 62}, extent = {{-20, -20}, {20, 20}}, rotation = 90), iconTransformation(origin = {-72, 42}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Electrical.Analog.Basic.Conductor conductor2(G = Gd) annotation(
      Placement(transformation(origin = {10, 40}, extent = {{-10, -10}, {10, 10}})));
  equation
    connect(capacitor1.p, conductor.n) annotation(
      Line(points = {{2, -16}, {2, 0}, {-4, 0}}, color = {0, 0, 255}));
    connect(ground2.p, capacitor1.n) annotation(
      Line(points = {{2, -48}, {2, -36}}, color = {0, 0, 255}));
    connect(pin1, switch.p) annotation(
      Line(points = {{-76, 0}, {-67, 0}, {-67, 38}, {-42, 38}}, color = {0, 0, 255}));
    connect(pin2, conductor1.n) annotation(
      Line(points = {{94, 0}, {62, 0}}, color = {0, 0, 255}));
    connect(doorin, switch.control) annotation(
      Line(points = {{-32, 62}, {-32, 50}}, color = {255, 0, 255}));
    connect(conductor.p, pin1) annotation(
      Line(points = {{-24, 0}, {-76, 0}}, color = {0, 0, 255}));
    connect(conductor2.n, conductor1.n) annotation(
      Line(points = {{20, 40}, {62, 40}, {62, 0}}, color = {0, 0, 255}));
  connect(conductor1.p, conductor.n) annotation(
      Line(points = {{42, 0}, {-4, 0}}, color = {0, 0, 255}));
  connect(conductor2.p, switch.n2) annotation(
      Line(points = {{0, 40}, {0, 38}, {-22, 38}}, color = {0, 0, 255}));
    annotation(
      Icon(coordinateSystem(extent = {{-50, -200}, {50, 200}}), graphics = {Rectangle(origin = {30, -4}, rotation = -90, fillColor = {255, 165, 0}, fillPattern = FillPattern.Solid, extent = {{-200, 24}, {199, -75}}), Text(origin = {-1, -4}, rotation = -90, extent = {{-52, 19}, {52, -19}}, textString = "WallWithDoor")}),
      Diagram);
  end WallWithDoor;

  model WallWithoutDoors
    Modelica.Electrical.Analog.Basic.Conductor WallResistance(G = Gin) annotation(
      Placement(transformation(origin = {-2, 4}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Electrical.Analog.Basic.Conductor WallResistance1(G = Gext) annotation(
      Placement(transformation(origin = {-2, -36}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Electrical.Analog.Basic.Capacitor T1(C = C, v(start = Tstart, fixed = true)) annotation(
      Placement(transformation(origin = {-28, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    Modelica.Electrical.Analog.Basic.Ground ground2 annotation(
      Placement(transformation(origin = {-72, -16}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Electrical.Analog.Interfaces.Pin pin1 annotation(
      Placement(transformation(origin = {-2, 26}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-60, -2}, extent = {{-10, -10}, {10, 10}})));
    Modelica.Electrical.Analog.Interfaces.Pin pin2 annotation(
      Placement(transformation(origin = {-2, -66}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {60, -4}, extent = {{-10, -10}, {10, 10}})));
    parameter Real Gin;
    parameter Real Gext;
    parameter Real C;
    parameter Real Tstart;
  equation
    connect(WallResistance.n, WallResistance1.p) annotation(
      Line(points = {{-2, -6}, {-2, -26}}, color = {0, 0, 255}));
    connect(ground2.p, T1.n) annotation(
      Line(points = {{-62, -16}, {-38, -16}}, color = {0, 0, 255}));
    connect(WallResistance.p, pin1) annotation(
      Line(points = {{-2, 14}, {-2, 26}}, color = {0, 0, 255}));
    connect(pin2, WallResistance1.n) annotation(
      Line(points = {{-2, -66}, {-2, -46}}, color = {0, 0, 255}));
  connect(T1.p, WallResistance1.p) annotation(
      Line(points = {{-18, -16}, {-2, -16}, {-2, -26}}, color = {0, 0, 255}));
  connect(T1.p, WallResistance.n) annotation(
      Line(points = {{-18, -16}, {-2, -16}, {-2, -6}}, color = {0, 0, 255}));
    annotation(
      Icon(coordinateSystem(extent = {{-50, -200}, {50, 200}}), graphics = {Rectangle(origin = {28, -4}, rotation = -90, fillColor = {165, 42, 42}, fillPattern = FillPattern.Solid, extent = {{-200, 24}, {199, -75}}), Text(origin = {-1, -4}, rotation = -90, extent = {{-52, 19}, {52, -19}}, textString = "WallWithoutDoor")}));
  end WallWithoutDoors;

  model Outside
    Modelica.Electrical.Analog.Basic.Ground ground annotation(
      Placement(transformation(origin = {0, -66}, extent = {{-10, -10}, {10, 10}})));
    Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage annotation(
      Placement(transformation(origin = {0, -28}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Electrical.Analog.Interfaces.Pin pin annotation(
      Placement(transformation(origin = {2, 20}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-58, -10}, extent = {{-10, -10}, {10, 10}})));
    Modelica.Blocks.Interfaces.RealInput Te annotation(
      Placement(transformation(origin = {28, -28}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {42, -36}, extent = {{-20, -20}, {20, 20}})));
  equation
    connect(signalVoltage.p, pin) annotation(
      Line(points = {{0, -18}, {0, 0}, {2, 0}, {2, 20}}, color = {0, 0, 255}));
    connect(ground.p, signalVoltage.n) annotation(
      Line(points = {{0, -56}, {0, -38}}, color = {0, 0, 255}));
    connect(signalVoltage.v, Te) annotation(
      Line(points = {{12, -28}, {28, -28}}, color = {0, 0, 127}));
    annotation(
      Icon(coordinateSystem(extent = {{-50, -100}, {50, 100}}), graphics = {Rectangle(origin = {25, 0}, rotation = -90, fillColor = {0, 128, 0}, fillPattern = FillPattern.Solid, extent = {{-100, 23}, {99, -72}}), Text(origin = {-1, 8}, rotation = -90, extent = {{-52, 19}, {52, -19}}, textString = "Outside")}));
  end Outside;


model WallWithDoorAndRadiation
  
  parameter Real Gd = 300;
  parameter Real Gw1;
  parameter Real Gw2;
  parameter Real Cw;
  parameter Real Tstart;
  Modelica.Electrical.Analog.Basic.Conductor conductor(G = Gw1) annotation(
    Placement(transformation(origin = {-28, 4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = Cw, v(fixed = true, start = Tstart)) annotation(
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

end WallWithDoorAndRadiation;
end ProjectGroupWork;
