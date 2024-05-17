within AES_project_2023_2024.ProjectGroupWork;

model Split_Equalizer
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom1 annotation(
    Placement(transformation(origin = {92, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum(k1 = -1) annotation(
    Placement(transformation(origin = {-92, -2}, extent = {{-10, -10}, {10, 10}})));
  AES.ControlBlocks.ActuationSchemes.SplitRange01 splitRange01 annotation(
    Placement(transformation(origin = {12, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction equalizer_heating(a = {30, 1}, b = {0.0075, 0.00025}) annotation(
    Placement(transformation(origin = {54, 24}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction equalizer_cooling(a = {30, 1}, b = {0.12, 0.001}) annotation(
    Placement(transformation(origin = {54, -24}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealInput y_ref annotation(
    Placement(transformation(origin = {-160, -30}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-70, -20}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealOutput actuation_signal annotation(
    Placement(transformation(origin = {156, -2}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {58, 12}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add annotation(
    Placement(transformation(origin = {128, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealInput y_meas annotation(
    Placement(transformation(origin = {-160, 30}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-70, 42}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Math.Gain gain(k = 1)  annotation(
    Placement(transformation(origin = {-40, -2}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(splitRange01.CSo01_pos, equalizer_heating.u) annotation(
    Line(points = {{24, 4}, {32, 4}, {32, 24}, {42, 24}}, color = {0, 0, 127}));
  connect(equalizer_heating.y, hcRoom1.uh01) annotation(
    Line(points = {{65, 24}, {71, 24}, {71, 4}, {79, 4}}, color = {0, 0, 127}));
  connect(splitRange01.CSo01_neg, equalizer_cooling.u) annotation(
    Line(points = {{24, -8}, {32, -8}, {32, -24}, {42, -24}}, color = {0, 0, 127}));
  connect(equalizer_cooling.y, hcRoom1.uc01) annotation(
    Line(points = {{65, -24}, {71, -24}, {71, -8}, {79, -8}}, color = {0, 0, 127}));
  connect(y_ref, loop_error_sum.u2) annotation(
    Line(points = {{-160, -30}, {-120, -30}, {-120, -8}, {-104, -8}}, color = {0, 0, 127}));
  connect(hcRoom1.Ph, add.u1) annotation(
    Line(points = {{104, 4}, {116, 4}}, color = {0, 0, 127}));
  connect(hcRoom1.Pc, add.u2) annotation(
    Line(points = {{104, -8}, {116, -8}}, color = {0, 0, 127}));
  connect(add.y, actuation_signal) annotation(
    Line(points = {{140, -2}, {156, -2}}, color = {0, 0, 127}));
  connect(y_meas, loop_error_sum.u1) annotation(
    Line(points = {{-160, 30}, {-120, 30}, {-120, 4}, {-104, 4}}, color = {0, 0, 127}));
  connect(loop_error_sum.y, gain.u) annotation(
    Line(points = {{-80, -2}, {-52, -2}}, color = {0, 0, 127}));
  connect(gain.y, splitRange01.CSi01) annotation(
    Line(points = {{-28, -2}, {0, -2}}, color = {0, 0, 127}));
  annotation(
    Diagram(graphics = {Text(origin = {-47, -4}, extent = {{-1, 2}, {1, -2}}, textString = "text")}),
    Icon(coordinateSystem(extent = {{-50, 50}, {50, -50}}), graphics = {Rectangle(origin = {-1, 13}, rotation = -90, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-71, 49}, {71, -49}}), Text(origin = {-1, 8}, rotation = -90, extent = {{-52, 19}, {52, -19}}, textString = "Split Equalizer")}));
end Split_Equalizer;
