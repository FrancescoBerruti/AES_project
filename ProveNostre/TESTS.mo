model TESTS
  Modelica.Electrical.Analog.Basic.Capacitor capacitor3(C = 107712) annotation(
    Placement(transformation(origin = {-56, -22}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground2 annotation(
    Placement(transformation(origin = {-36, -78}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sources.ConstantCurrent constantCurrent1(I = 6000) annotation(
    Placement(transformation(origin = {-26, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 1/500) annotation(
    Placement(transformation(origin = {-36, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Ground ground11 annotation(
    Placement(transformation(origin = {-36, 74}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage1(V = 274) annotation(
    Placement(transformation(origin = {-36, 46}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor21(C = 107712) annotation(
    Placement(transformation(origin = {34, -22}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground31 annotation(
    Placement(transformation(origin = {46, -78}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sources.ConstantCurrent constantCurrent21(I = 6000) annotation(
    Placement(transformation(origin = {62, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor21(R = 1/500) annotation(
    Placement(transformation(origin = {46, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Ground ground121 annotation(
    Placement(transformation(origin = {46, 74}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage21(V = 100) annotation(
    Placement(transformation(origin = {46, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor111(R = 1/500) annotation(
    Placement(transformation(origin = {-8, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor11(C = 100000)  annotation(
    Placement(transformation(origin = {22, -2}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(constantCurrent1.p, ground2.p) annotation(
    Line(points = {{-26, -32}, {-26, -56}, {-36, -56}, {-36, -68}}, color = {0, 0, 255}));
  connect(constantCurrent1.n, capacitor3.p) annotation(
    Line(points = {{-26, -12}, {-56, -12}}, color = {0, 0, 255}));
  connect(resistor1.p, capacitor3.p) annotation(
    Line(points = {{-36, 4}, {-36, -12}, {-56, -12}}, color = {0, 0, 255}));
  connect(constantVoltage1.p, resistor1.n) annotation(
    Line(points = {{-36, 36}, {-36, 24}}, color = {0, 0, 255}));
  connect(constantVoltage1.n, ground11.p) annotation(
    Line(points = {{-36, 56}, {-36, 64}}, color = {0, 0, 255}));
  connect(ground31.p, capacitor21.n) annotation(
    Line(points = {{46, -68}, {46, -32}, {34, -32}}, color = {0, 0, 255}));
  connect(constantCurrent21.p, ground31.p) annotation(
    Line(points = {{62, -32}, {46, -32}, {46, -68}}, color = {0, 0, 255}));
  connect(constantCurrent21.n, capacitor21.p) annotation(
    Line(points = {{62, -12}, {34, -12}}, color = {0, 0, 255}));
  connect(resistor21.p, capacitor21.p) annotation(
    Line(points = {{46, 0}, {46, -12}, {34, -12}}, color = {0, 0, 255}));
  connect(constantVoltage21.p, resistor21.n) annotation(
    Line(points = {{46, 30}, {46, 20}}, color = {0, 0, 255}));
  connect(constantVoltage21.n, ground121.p) annotation(
    Line(points = {{46, 50}, {46, 64}}, color = {0, 0, 255}));
  connect(resistor111.p, resistor1.p) annotation(
    Line(points = {{-18, -2}, {-38, -2}, {-38, 4}, {-36, 4}}, color = {0, 0, 255}));
  connect(capacitor3.n, ground2.p) annotation(
    Line(points = {{-56, -32}, {-56, -56}, {-36, -56}, {-36, -68}}, color = {0, 0, 255}));
  connect(capacitor11.p, resistor111.n) annotation(
    Line(points = {{12, -2}, {2, -2}}, color = {0, 0, 255}));
  connect(capacitor11.n, resistor21.p) annotation(
    Line(points = {{32, -2}, {46, -2}, {46, 0}}, color = {0, 0, 255}));
  annotation(
    Diagram,
    uses(Modelica(version = "4.0.0")));
end TESTS;
