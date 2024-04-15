within AES_project_2023_2024.ProjectGroupWork;

model Secondo_tentativo

parameter Temperature               Tstart  = 293.15 "initial T, all elements";
parameter Density                   roa     = 1.1 "density of air";
parameter SpecificHeatCapacity      ca      = 1020 "specific heat of air";
parameter Density                   row     = 2000 "density of walls";
parameter SpecificHeatCapacity      cw      = 800 "specific heat of walls";
parameter ThermalConductivity       lambdaw = 1.5 "thermal conductivity of walls";
parameter CoefficientOfHeatTransfer gammawi = 12 "internal ccht, all walls";
parameter CoefficientOfHeatTransfer gammawe = 15 "external ccht, all walls";
parameter ThermalConductance        Gdo     = 300 "conductance of open doors";
parameter Length                    Lr12    = 4 "length of rooms 1 and 2";
parameter Length                    Lr3     = 4 "length of room 3";
parameter Length                    Wr1     = 6 "width of room 1";
parameter Length                    Wr2     = 4 "width of room 2";
parameter Length                    Wr3     = 10 "width of room 3";
parameter Length                    H       = 3 "height, all rooms";
parameter Length                    tw      = 0.1 "thickness of all walls";

Modelica.Electrical.Analog.Basic.Capacitor Room_3(C = ca*roa*Lr3*Wr3*H)  annotation(
    Placement(transformation(origin = {-18, -32}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {-34, -74}, extent = {{-10, -10}, {10, 10}})));
Modelica.Electrical.Analog.Basic.Resistor wall_3e(R = (1/gammawi/(Wr3*H)+ 0.5*tw/lambdaw/(Wr3*H))+(1/gammawe/(Wr3*H)+0.5*tw/lambdaw/(Wr3*H)))  annotation(
    Placement(transformation(origin = {-34, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
Modelica.Electrical.Analog.Basic.Ground ground1 annotation(
    Placement(transformation(origin = {-34, 78}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
Modelica.Electrical.Analog.Basic.Capacitor Room_1(C = ca*roa*Lr12*Wr1*H)  annotation(
    Placement(transformation(origin = {-158, -32}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
Modelica.Electrical.Analog.Basic.Ground ground2 annotation(
    Placement(transformation(origin = {-176, -80}, extent = {{-10, -10}, {10, 10}})));
Modelica.Electrical.Analog.Basic.Resistor wall_1e(R = (1/gammawe/(Wr1*H)+0.5*tw/lambdaw/(Wr1*H))+(1/gammawi/(Wr1*H)+0.5*tw/lambdaw/(Wr1*H))) annotation(
    Placement(transformation(origin = {-182, 22}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
Modelica.Electrical.Analog.Basic.Ground ground11 annotation(
    Placement(transformation(origin = {-182, 82}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
Modelica.Electrical.Analog.Basic.Capacitor Room_2(C = ca*roa*Lr12*Wr2*H) annotation(
    Placement(transformation(origin = {122, -38}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
Modelica.Electrical.Analog.Basic.Ground ground3 annotation(
    Placement(transformation(origin = {98, -76}, extent = {{-10, -10}, {10, 10}})));
Modelica.Electrical.Analog.Basic.Resistor wall_2e(R = (1/gammawi/(Wr2*H) + 0.5*tw/lambdaw/(Wr2*H)) + (1/gammawe/(Wr2*H) + 0.5*tw/lambdaw/(Wr2*H))) annotation(
    Placement(transformation(origin = {100, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
Modelica.Electrical.Analog.Basic.Ground ground12 annotation(
    Placement(transformation(origin = {100, 132}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
Modelica.Electrical.Analog.Basic.Resistor wall_23(R = (1/gammawi/(Wr2*H)+0.5*tw/lambdaw/(Wr2*H))*2) annotation(
    Placement(transformation(origin = {22, 2}, extent = {{-10, -10}, {10, 10}})));
Modelica.Electrical.Analog.Basic.Resistor wall_13(R = (1/gammawi/(Wr1*H)+0.5*tw/lambdaw/(Wr1*H))*2) annotation(
    Placement(transformation(origin = {-82, 2}, extent = {{-10, -10}, {10, 10}})));
Modelica.Electrical.Analog.Basic.Capacitor c_wall_13(C = cw*row*Wr1*tw*H)  annotation(
    Placement(transformation(origin = {-126, 2}, extent = {{-10, -10}, {10, 10}})));
Modelica.Electrical.Analog.Ideal.IdealTwoWaySwitch switch annotation(
    Placement(transformation(origin = {-98, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
Modelica.Electrical.Analog.Basic.Resistor door_13(R = 1/300) annotation(
    Placement(transformation(origin = {-82, 46}, extent = {{-10, -10}, {10, 10}})));
Modelica.Electrical.Analog.Ideal.IdealTwoWaySwitch switch1 annotation(
    Placement(transformation(origin = {8, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
Modelica.Electrical.Analog.Basic.Resistor door_23(R = 1/300) annotation(
    Placement(transformation(origin = {24, 48}, extent = {{-10, -10}, {10, 10}})));
Modelica.Electrical.Analog.Basic.Capacitor c_wall_23(C = cw*row*Wr2*tw*H)  annotation(
    Placement(transformation(origin = {58, 2}, extent = {{-10, -10}, {10, 10}})));
Modelica.Electrical.Analog.Sources.SignalCurrent signalCurrent annotation(
    Placement(transformation(origin = {-184, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Sources.SignalCurrent signalCurrent1 annotation(
    Placement(transformation(origin = {-46, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Sources.SignalCurrent signalCurrent11 annotation(
    Placement(transformation(origin = {84, -36}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage annotation(
    Placement(transformation(origin = {-182, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage1 annotation(
    Placement(transformation(origin = {-34, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage2 annotation(
    Placement(transformation(origin = {100, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Ideal.IdealTwoWaySwitch switch2 annotation(
    Placement(transformation(origin = {126, 58}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Resistor door_3e(R = 1/300) annotation(
    Placement(transformation(origin = {160, 48}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom1 annotation(
    Placement(transformation(origin = {-272, -124}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom2 annotation(
    Placement(transformation(origin = {-266, -156}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hRoom3 annotation(
    Placement(transformation(origin = {-266, -184}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine uh(amplitude = 1.2, f = 1/1800) annotation(
    Placement(transformation(origin = {-386, -150}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine uc(amplitude = 1.5, f = 1/3600, phase = 1.570796326794897) annotation(
    Placement(transformation(origin = {-390, -192}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add(k2 = -1) annotation(
    Placement(transformation(origin = {-230, -124}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add2(k2 = -1)  annotation(
    Placement(transformation(origin = {-224, -156}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add3(k2 = -1)  annotation(
    Placement(transformation(origin = {-222, -182}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.TePrad tePrad annotation(
    Placement(transformation(origin = {-290, 30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sources.SignalCurrent signalCurrent12 annotation(
    Placement(transformation(origin = {100, 80}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  AES_project_2023_2024.ProcessComponents.DoorOpenings doorOpenings annotation(
    Placement(transformation(origin = {-154, 74}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(wall_3e.p, Room_3.p) annotation(
    Line(points = {{-34, 10}, {-34, -3}, {-18, -3}, {-18, -22}}, color = {0, 0, 255}));
  connect(ground3.p, Room_2.n) annotation(
    Line(points = {{98, -66}, {98, -48}, {122, -48}}, color = {0, 0, 255}));
  connect(wall_2e.p, Room_2.p) annotation(
    Line(points = {{100, 40}, {100, -28}, {122, -28}}, color = {0, 0, 255}));
  connect(wall_23.p, wall_3e.p) annotation(
    Line(points = {{12, 2}, {-34, 2}, {-34, 10}}, color = {0, 0, 255}));
  connect(Room_1.n, ground2.p) annotation(
    Line(points = {{-158, -42}, {-158, -56}, {-176, -56}, {-176, -70}}, color = {0, 0, 255}));
  connect(Room_3.n, ground.p) annotation(
    Line(points = {{-18, -42}, {-18, -50}, {-34, -50}, {-34, -64}}, color = {0, 0, 255}));
  connect(Room_1.p, wall_1e.p) annotation(
    Line(points = {{-158, -22}, {-158, 2}, {-182, 2}, {-182, 12}}, color = {0, 0, 255}));
  connect(wall_13.n, wall_3e.p) annotation(
    Line(points = {{-72, 2}, {-34, 2}, {-34, 10}}, color = {0, 0, 255}));
  connect(c_wall_13.n, wall_13.p) annotation(
    Line(points = {{-116, 2}, {-92, 2}}, color = {0, 0, 255}));
  connect(c_wall_13.p, wall_1e.p) annotation(
    Line(points = {{-136, 2}, {-182, 2}, {-182, 12}}, color = {0, 0, 255}));
  connect(switch.p, wall_13.p) annotation(
    Line(points = {{-98, 18}, {-92, 18}, {-92, 2}}, color = {0, 0, 255}));
  connect(switch.n1, door_13.p) annotation(
    Line(points = {{-102, 38}, {-92, 38}, {-92, 46}}, color = {0, 0, 255}));
  connect(door_13.n, wall_13.n) annotation(
    Line(points = {{-72, 46}, {-72, 2}}, color = {0, 0, 255}));
  connect(switch1.n1, door_23.p) annotation(
    Line(points = {{4, 40}, {14, 40}, {14, 48}}, color = {0, 0, 255}));
  connect(switch1.p, wall_23.p) annotation(
    Line(points = {{8, 20}, {12, 20}, {12, 2}}, color = {0, 0, 255}));
  connect(door_23.n, wall_23.n) annotation(
    Line(points = {{34, 48}, {32, 48}, {32, 2}}, color = {0, 0, 255}));
  connect(wall_23.n, c_wall_23.p) annotation(
    Line(points = {{32, 2}, {48, 2}}, color = {0, 0, 255}));
  connect(c_wall_23.n, wall_2e.p) annotation(
    Line(points = {{68, 2}, {83, 2}, {83, 40}, {100, 40}}, color = {0, 0, 255}));
  connect(signalCurrent.p, ground2.p) annotation(
    Line(points = {{-184, -44}, {-174, -44}, {-174, -70}, {-176, -70}}, color = {0, 0, 255}));
  connect(signalCurrent.n, Room_1.p) annotation(
    Line(points = {{-184, -24}, {-170, -24}, {-170, -22}, {-158, -22}}, color = {0, 0, 255}));
  connect(signalCurrent1.n, wall_3e.p) annotation(
    Line(points = {{-46, -20}, {-46, -2}, {-34, -2}, {-34, 10}}, color = {0, 0, 255}));
  connect(signalCurrent1.p, ground.p) annotation(
    Line(points = {{-46, -40}, {-46, -50}, {-34, -50}, {-34, -64}}, color = {0, 0, 255}));
  connect(signalCurrent11.n, wall_2e.p) annotation(
    Line(points = {{84, -26}, {100, -26}, {100, 40}}, color = {0, 0, 255}));
  connect(signalCurrent11.p, ground3.p) annotation(
    Line(points = {{84, -46}, {98, -46}, {98, -66}}, color = {0, 0, 255}));
  connect(signalVoltage.n, ground11.p) annotation(
    Line(points = {{-182, 62}, {-182, 72}}, color = {0, 0, 255}));
  connect(wall_1e.n, signalVoltage.p) annotation(
    Line(points = {{-182, 32}, {-182, 42}}, color = {0, 0, 255}));
  connect(signalVoltage1.n, ground1.p) annotation(
    Line(points = {{-34, 58}, {-34, 68}}, color = {0, 0, 255}));
  connect(signalVoltage1.p, wall_3e.n) annotation(
    Line(points = {{-34, 38}, {-34, 30}}, color = {0, 0, 255}));
  connect(signalVoltage2.n, ground12.p) annotation(
    Line(points = {{100, 120}, {100, 122}}, color = {0, 0, 255}));
  connect(switch2.p, wall_2e.n) annotation(
    Line(points = {{116, 58}, {116, 60}, {100, 60}}, color = {0, 0, 255}));
  connect(door_3e.p, switch2.n1) annotation(
    Line(points = {{160, 58}, {136, 58}, {136, 62}}, color = {0, 0, 255}));
  connect(door_3e.n, wall_2e.p) annotation(
    Line(points = {{160, 38}, {100, 38}, {100, 40}}, color = {0, 0, 255}));
  connect(uh.y, hcRoom1.uh01) annotation(
    Line(points = {{-375, -150}, {-296, -150}, {-296, -118}, {-284, -118}}, color = {0, 0, 127}));
  connect(uh.y, hcRoom2.uh01) annotation(
    Line(points = {{-375, -150}, {-278, -150}}, color = {0, 0, 127}));
  connect(uh.y, hRoom3.uh01) annotation(
    Line(points = {{-375, -150}, {-296, -150}, {-296, -178}, {-278, -178}}, color = {0, 0, 127}));
  connect(uc.y, hcRoom1.uc01) annotation(
    Line(points = {{-379, -192}, {-302, -192}, {-302, -130}, {-284, -130}}, color = {0, 0, 127}));
  connect(uc.y, hcRoom2.uc01) annotation(
    Line(points = {{-379, -192}, {-302, -192}, {-302, -162}, {-278, -162}}, color = {0, 0, 127}));
  connect(uc.y, hRoom3.uc01) annotation(
    Line(points = {{-379, -192}, {-323.5, -192}, {-323.5, -190}, {-278, -190}}, color = {0, 0, 127}));
  connect(hcRoom1.Ph, add.u1) annotation(
    Line(points = {{-260, -118}, {-260, -116}, {-242, -116}, {-242, -118}}, color = {0, 0, 127}));
  connect(hcRoom1.Pc, add.u2) annotation(
    Line(points = {{-260, -130}, {-260, -128}, {-242, -128}, {-242, -130}}, color = {0, 0, 127}));
  connect(hcRoom2.Ph, add2.u1) annotation(
    Line(points = {{-254, -150}, {-236, -150}}, color = {0, 0, 127}));
  connect(hcRoom2.Pc, add2.u2) annotation(
    Line(points = {{-254, -162}, {-236, -162}}, color = {0, 0, 127}));
  connect(hRoom3.Ph, add3.u1) annotation(
    Line(points = {{-254, -178}, {-234, -178}, {-234, -176}}, color = {0, 0, 127}));
  connect(hRoom3.Pc, add3.u2) annotation(
    Line(points = {{-254, -190}, {-234, -190}, {-234, -188}}, color = {0, 0, 127}));
  connect(add.y, signalCurrent.i) annotation(
    Line(points = {{-218, -124}, {-196, -124}, {-196, -34}}, color = {0, 0, 127}));
  connect(add2.y, signalCurrent1.i) annotation(
    Line(points = {{-212, -156}, {-58, -156}, {-58, -30}}, color = {0, 0, 127}));
  connect(add3.y, signalCurrent11.i) annotation(
    Line(points = {{-210, -182}, {72, -182}, {72, -36}}, color = {0, 0, 127}));
  connect(tePrad.Te, signalVoltage.v) annotation(
    Line(points = {{-278, 36}, {-194, 36}, {-194, 52}}, color = {0, 0, 127}));
  connect(signalVoltage1.v, tePrad.Te) annotation(
    Line(points = {{-46, 48}, {-278, 48}, {-278, 36}}, color = {0, 0, 127}));
  connect(signalVoltage2.v, tePrad.Te) annotation(
    Line(points = {{88, 110}, {-278, 110}, {-278, 36}}, color = {0, 0, 127}));
  connect(signalVoltage2.p, signalCurrent12.p) annotation(
    Line(points = {{100, 100}, {100, 90}}, color = {0, 0, 255}));
  connect(signalCurrent12.n, wall_2e.n) annotation(
    Line(points = {{100, 70}, {100, 60}}, color = {0, 0, 255}));
  connect(tePrad.Prad, signalCurrent12.i) annotation(
    Line(points = {{-278, 24}, {112, 24}, {112, 80}}, color = {0, 0, 127}));
  connect(doorOpenings.door13open, switch.control) annotation(
    Line(points = {{-142, 80}, {-110, 80}, {-110, 28}}, color = {255, 0, 255}));
  connect(doorOpenings.door23open, switch1.control) annotation(
    Line(points = {{-142, 74}, {-4, 74}, {-4, 30}}, color = {255, 0, 255}));
  connect(doorOpenings.door3eopen, switch2.control) annotation(
    Line(points = {{-142, 68}, {126, 68}, {126, 70}}, color = {255, 0, 255}));
  annotation(
    Diagram);end Secondo_tentativo;
