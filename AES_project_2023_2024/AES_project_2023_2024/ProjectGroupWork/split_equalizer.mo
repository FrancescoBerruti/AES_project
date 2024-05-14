within AES_project_2023_2024.ProjectGroupWork;

class split_equalizer
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom1 annotation(
    Placement(transformation(origin = {92, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum(k1 = -1) annotation(
    Placement(transformation(origin = {-92, -2}, extent = {{-10, -10}, {10, 10}})));
  AES.ControlBlocks.ActuationSchemes.SplitRange01 splitRange01 annotation(
    Placement(transformation(origin = {12, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction equalizer_heating(b = {0.0075, 0.00025}, a = {30, 1})  annotation(
    Placement(transformation(origin = {54, 24}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction equalizer_cooling(b = {0.12, 0.001}, a = {30, 1})  annotation(
    Placement(transformation(origin = {54, -24}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealInput y_ref annotation(
    Placement(transformation(origin = {-160, -30}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-156, -26}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealOutput actuation_signal annotation(
    Placement(transformation(origin = {156, -2}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {136, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add annotation(
    Placement(transformation(origin = {128, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealInput y_meas annotation(
    Placement(transformation(origin = {-160, 30}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-154, 32}, extent = {{-20, -20}, {20, 20}})));
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
  connect(loop_error_sum.y, splitRange01.CSi01) annotation(
    Line(points = {{-80, -2}, {0, -2}}, color = {0, 0, 127}));
  connect(y_meas, loop_error_sum.u1) annotation(
    Line(points = {{-160, 30}, {-120, 30}, {-120, 4}, {-104, 4}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-120, 40}, {120, -40}}), graphics = {Text(origin = {-39, 19}, extent = {{-43, 9}, {43, -9}}, textString = "control is done outside of this loop
 since the controller scheme is pole
 placement MIMO state space")}));
end split_equalizer;
