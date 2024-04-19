within AES_project_2023_2024.ProcessComponents;

model DoorOpenings
  parameter Real hod_start = 8;
  parameter Real hod_end   = 20;
  parameter Real period    = 600;
  Modelica.Blocks.Interfaces.BooleanOutput door13open annotation(
    Placement(transformation(origin = {124, 48}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {120, 60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.BooleanOutput door23open annotation(
    Placement(transformation(origin = {134, 58}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {120, 0}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.BooleanOutput door3eopen annotation(
    Placement(transformation(origin = {144, 68}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {120, -60}, extent = {{-20, -20}, {20, 20}})));
  discrete Real hod;
algorithm
  when sample(0,period) then
       hod := Functions.hod(time);
       if hod>=hod_start and hod<hod_end then
          if Functions.crand01()>0.5 then
             door13open := not door13open;
          end if;
          if Functions.crand01()>0.5 then
             door23open := not door23open;
          end if;
          if Functions.crand01()>0.5 then
             door3eopen := not door3eopen;
          end if;                    
       end if;
  end when;
initial algorithm
  door13open := false;
  door23open := false;
  door3eopen := false;

annotation(
    Icon(graphics = {Rectangle(origin = {0, 1}, fillColor = {170, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-1, 1}, extent = {{-81, 79}, {81, -79}}, textString = "Doors")}));
end DoorOpenings;
