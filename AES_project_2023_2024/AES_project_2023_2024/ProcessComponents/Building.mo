within AES_project_2023_2024.ProcessComponents;

  model Building

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

  Modelica.Blocks.Interfaces.RealInput Phr1 annotation(
      Placement(transformation(origin = {-258, 256}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-220, 240}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealInput Pcr1 annotation(
      Placement(transformation(origin = {-260, 188}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-220, 200}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealInput Phr2 annotation(
      Placement(transformation(origin = {-268, 128}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-220, 140}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealInput Pcr2 annotation(
      Placement(transformation(origin = {-260, 62}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-220, 100}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealInput Phr3 annotation(
      Placement(transformation(origin = {-260, -10}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-220, 40}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealInput Pcr3 annotation(
      Placement(transformation(origin = {-294, -80}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-220, 0}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.BooleanInput door13open annotation(
      Placement(transformation(origin = {-328, -178}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-220, -80}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.BooleanInput door23open annotation(
      Placement(transformation(origin = {-314, -234}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-220, -140}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.BooleanInput door3eopen annotation(
      Placement(transformation(origin = {-376, -316}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-220, -200}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealInput Pdr1 annotation(
      Placement(transformation(origin = {-120, 218}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-40, 320}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealInput Pdr2 annotation(
      Placement(transformation(origin = {-82, 190}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-100, 320}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealInput Pdr3 annotation(
      Placement(transformation(origin = {-244, 354}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-160, 320}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealInput Te annotation(
      Placement(transformation(origin = {106, 286}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {140, 320}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealInput Prad annotation(
      Placement(transformation(origin = {-32, 216}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {80, 320}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealOutput mTr1 annotation(
    Placement(transformation(origin = {326, 192}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {220, 240}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealOutput mTr2 annotation(
    Placement(transformation(origin = {336, 202}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {220, 140}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealOutput mTr3 annotation(
    Placement(transformation(origin = {346, 212}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {220, 40}, extent = {{-20, -20}, {20, 20}})));

    Temperature Tr1(start=Tstart,fixed=true);
    Temperature Tr2(start=Tstart,fixed=true);
    Temperature Tr3(start=Tstart,fixed=true);
    Temperature Tw13(start=Tstart,fixed=true);
    Temperature Tw23(start=Tstart,fixed=true);
    Temperature Tw1e(start=Tstart,fixed=true);
    Temperature Tw2e(start=Tstart,fixed=true);
    Temperature Tw3e(start=Tstart,fixed=true);

protected
    parameter HeatCapacity Cr1  = ca*roa*Lr12*Wr1*H;
    parameter HeatCapacity Cr2  = ca*roa*Lr12*Wr2*H;
    parameter HeatCapacity Cr3  = ca*roa*Lr3*Wr3*H;
    parameter HeatCapacity Cw13 = cw*row*Wr1*tw*H;
    parameter HeatCapacity Cw23 = cw*row*Wr2*tw*H;
    parameter HeatCapacity Cw1e = cw*row*Wr1*tw*H;
    parameter HeatCapacity Cw2e = cw*row*Wr2*tw*H;
    parameter HeatCapacity Cw3e = cw*row*Wr3*tw*H;

    parameter ThermalConductance Gr1w13 = 1/(1/gammawi/(Wr1*H)+0.5*tw/lambdaw/(Wr1*H));
    parameter ThermalConductance Gr1w1e = 1/(1/gammawi/(Wr1*H)+0.5*tw/lambdaw/(Wr1*H));
    parameter ThermalConductance Gr2w23 = 1/(1/gammawi/(Wr2*H)+0.5*tw/lambdaw/(Wr2*H));
    parameter ThermalConductance Gr2w2e = 1/(1/gammawi/(Wr2*H)+0.5*tw/lambdaw/(Wr2*H));
    parameter ThermalConductance Gr3w13 = 1/(1/gammawi/(Wr1*H)+0.5*tw/lambdaw/(Wr1*H));
    parameter ThermalConductance Gr3w23 = 1/(1/gammawi/(Wr2*H)+0.5*tw/lambdaw/(Wr2*H));
    parameter ThermalConductance Gr3w3e = 1/(1/gammawi/(Wr3*H)+0.5*tw/lambdaw/(Wr3*H));
    parameter ThermalConductance Gw1e   = 1/(1/gammawe/(Wr1*H)+0.5*tw/lambdaw/(Wr1*H));
    parameter ThermalConductance Gw2e   = 1/(1/gammawe/(Wr2*H)+0.5*tw/lambdaw/(Wr2*H));
    parameter ThermalConductance Gw3e   = 1/(1/gammawe/(Wr3*H)+0.5*tw/lambdaw/(Wr3*H));

    Power Pr1w13,Pr1w1e,Pdoor13,Pr2w23,Pr2w2e,Pdoor23,Pr3w13,Pr3w23,Pr3w3e,Pdoor3e;
    Power Pconvw1e,Pconvw2e,Pconvw3e;

  equation
  
    mTr1 = Tr1;
    mTr2 = Tr2;
    mTr3 = Tr3;    

    Cr1*der(Tr1)   = Phr1-Pcr1+Pdr1-Pr1w13-Pr1w1e-Pdoor13;
    Cr2*der(Tr2)   = Phr2-Pcr2+Pdr2-Pr2w23-Pr2w2e-Pdoor23;
    Cr3*der(Tr3)   = Phr3-Pcr3+Pdr3-Pr3w13-Pr3w23-Pr3w3e+Pdoor13+Pdoor23-Pdoor3e;

    Cw13*der(Tw13) = Pr1w13+Pr3w13;
    Cw23*der(Tw23) = Pr2w23+Pr3w23;
    Cw1e*der(Tw1e) = Pr1w1e-Pconvw1e;
    Cw2e*der(Tw2e) = Pr2w2e-Pconvw2e;
    Cw3e*der(Tw3e) = Pr3w3e-Pconvw3e+Prad;

    Pr1w13   = Gr1w13*(Tr1-Tw13);
    Pr1w1e   = Gr1w1e*(Tr1-Tw1e);
    Pdoor13  = if door13open then Gdo*(Tr1-Tr3) else 0;
    Pr2w23   = Gr2w23*(Tr2-Tw23);
    Pr2w2e   = Gr2w2e*(Tr2-Tw2e);
    Pdoor23  = if door23open then Gdo*(Tr2-Tr3) else 0;
    Pr3w13   = Gr3w13*(Tr3-Tw13);
    Pr3w23   = Gr3w23*(Tr3-Tw23);
    Pr3w3e   = Gr3w3e*(Tr3-Tw3e);
    Pdoor3e  = if door3eopen then Gdo*(Tr3-Te) else 0;
    Pconvw1e = Gw1e*(Tw1e-Te);
    Pconvw2e = Gw2e*(Tw2e-Te);
    Pconvw3e = Gw3e*(Tw3e-Te);
  annotation(
      Icon(coordinateSystem(extent = {{-200, -300}, {200, 300}}), graphics = {Rectangle(origin = {-1, -1}, fillColor = {255, 255, 127}, fillPattern = FillPattern.Solid, extent = {{-200, 300}, {200, -300}}), Text(origin = {-2, 1}, extent = {{-116, 163}, {116, -163}}, textString = "Building")}),
  experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-6, Interval = 0.002),
  __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
  __OpenModelica_simulationFlags(lv = "LOG_STDOUT,LOG_ASSERT,LOG_STATS", s = "dassl", variableFilter = ".*"));
end Building;