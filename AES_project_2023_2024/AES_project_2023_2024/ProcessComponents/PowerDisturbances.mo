within AES_project_2023_2024.ProcessComponents;

model PowerDisturbances
  parameter Real hod_start = 8;
  parameter Real hod_end   = 20;
  parameter Real Pdmax     = 200;
  parameter Real period    = 600;
  discrete Modelica.Blocks.Interfaces.RealOutput Pdr1 annotation(
    Placement(transformation(origin = {124, 48}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {120, 60}, extent = {{-20, -20}, {20, 20}})));
  discrete Modelica.Blocks.Interfaces.RealOutput Pdr2 annotation(
    Placement(transformation(origin = {134, 58}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {120, 0}, extent = {{-20, -20}, {20, 20}})));
  discrete Modelica.Blocks.Interfaces.RealOutput Pdr3 annotation(
    Placement(transformation(origin = {144, 68}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {120, -60}, extent = {{-20, -20}, {20, 20}})));
  discrete Real hod;
algorithm
  when sample(0,period) then
       hod := Functions.hod(time);
       if hod>=hod_start and hod<hod_end then
          Pdr1 := Functions.crand(0,Pdmax);
          Pdr2 := Functions.crand(0,Pdmax);
          Pdr3 := Functions.crand(0,Pdmax);  
       else
          Pdr1 := 0;
          Pdr2 := 0;
          Pdr3 := 0;                        
       end if;
  end when;
initial algorithm
  Pdr1 := 0;
  Pdr2 := 0;
  Pdr3 := 0;

annotation(
    Icon(graphics = {Rectangle(origin = {0, 1}, fillColor = {170, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-1, 1}, extent = {{-81, 79}, {81, -79}}, textString = "Pdist")}));
end PowerDisturbances;