within PraxisSimulationstechnik.Examples;
model Raeuberbeute2B
  SystemDynamics.Flows.Mult2Flow mult2flow1 annotation(Placement(transformation(origin = {-43.0906,73.997}, extent = {{-12,-12},{12,12}})));
  SystemDynamics.Flows.Mult2AddFlow mult2addflow1 annotation(Placement(transformation(origin = {33.581,73.6999}, extent = {{-12,-12},{12,12}})));
  SystemDynamics.Flows.Mult2SubDiv2Flow mult2subdiv2flow1 annotation(Placement(transformation(origin = {36.8816,-41.3793}, extent = {{-12,-12},{12,12}})));
  SystemDynamics.Reservoirs.Stock stock2(m0 = 20) annotation(Placement(transformation(origin = {-3.29835,-41.6792}, extent = {{-12,-12},{12,12}})));
  SystemDynamics.Flows.Mult2Flow mult2flow2 annotation(Placement(transformation(origin = {-42.5787,-41.979}, extent = {{-12,-12},{12,12}})));
  SystemDynamics.Converters.ConstantConverter constantconverter1(constValue = 0.2) annotation(Placement(transformation(origin = {-48.8756,44.3778}, extent = {{-12,-12},{12,12}})));
  SystemDynamics.Converters.ConstantConverter constantconverter5(constValue = 0.2) annotation(Placement(transformation(origin = {33.2834,-76.4618}, extent = {{-12,-12},{12,12}})));
  SystemDynamics.Converters.ConstantConverter constantconverter4(constValue = 0.1) annotation(Placement(transformation(origin = {-48.8756,-78.2609}, extent = {{-12,-12},{12,12}})));
  SystemDynamics.Converters.ConstantConverter constantconverter6(constValue = 2) annotation(Placement(transformation(origin = {48.2759,-76.4618}, extent = {{-12,-12},{12,12}})));
  SystemDynamics.Converters.ConstantConverter constantconverter2(constValue = 0.1) annotation(Placement(transformation(origin = {33.5832,41.6792}, extent = {{-12,-12},{12,12}})));
  SystemDynamics.Reservoirs.Stock stock1(m0 = 500) annotation(Placement(transformation(origin = {-3.26895,74.2942}, extent = {{-12,-12},{12,12}})));
  SystemDynamics.Converters.ConstantConverter constantconverter3(constValue = 0.01) annotation(Placement(transformation(origin = {-45.8771,9.89505}, extent = {{-12,-12},{12,12}}, rotation = -90)));
  SystemDynamics.Converters.Mult2GraphConverter faengeProRaeuber(table = "fpr", file = "faengeProRaeuber.txt") annotation(Placement(transformation(origin = {-11.6914,17.0915}, extent = {{-12,-12},{12,12}}, rotation = -90)));
  SystemDynamics.Converters.Mult2Converter mult2converter2 annotation(Placement(transformation(origin = {19.7901,9.5952}, extent = {{-12,-12},{12,12}}, rotation = -90)));
  SystemDynamics.Reservoirs.CloudSource cloudsource1 annotation(Placement(transformation(origin = {-75.7925,-42.0749}, extent = {{-10,-10},{10,10}})));
  SystemDynamics.Reservoirs.CloudSource cloudsource3 annotation(Placement(transformation(origin = {-78.098,73.7752}, extent = {{-10,-10},{10,10}})));
  SystemDynamics.Reservoirs.CloudSink cloudsink2 annotation(Placement(transformation(origin = {74.0634,-41.4986}, extent = {{-10,-10},{10,10}})));
  SystemDynamics.Reservoirs.CloudSink cloudsink1 annotation(Placement(transformation(origin = {67.7233,73.7752}, extent = {{-10,-10},{10,10}})));
equation
  connect(mult2addflow1.outflow,cloudsink1.inflow) annotation(Line(points = {{45.581,73.6999},{58.5014,73.6999},{57.7233,73.1988},{57.7233,73.7752}}));
  connect(mult2subdiv2flow1.outflow,cloudsink2.inflow) annotation(Line(points = {{48.8816,-41.3793},{64.2651,-41.3793},{64.0634,-42.0749},{64.0634,-41.4986}}));
  connect(cloudsource3.outflow,mult2flow1.inflow) annotation(Line(points = {{-68.098,73.7752},{-55.0432,73.7752},{-55.0432,73.997},{-55.0906,73.997}}));
  connect(cloudsource1.outflow,mult2flow2.inflow) annotation(Line(points = {{-65.7925,-42.0749},{-54.755,-42.0749},{-54.755,-41.979},{-54.5787,-41.979}}));
  connect(mult2converter2.out1,mult2addflow1.in3) annotation(Line(points = {{31.7901,9.5952},{31.7901,9.29535},{54.5727,9.29535},{54.5727,52.4738},{42.2789,52.4738},{42.2789,61.6999},{41.981,61.6999}}));
  connect(mult2subdiv2flow1.in3,mult2converter2.out1) annotation(Line(points = {{40.4816,-53.3793},{40.4816,-60.8696},{54.5728,-60.8696},{54.5728,9.29535},{31.7841,9.29535},{31.7841,9.5952},{31.7901,9.5952}}));
  connect(faengeProRaeuber.out1,mult2converter2.in1) annotation(Line(points = {{0.3086,17.0915},{0.3086,16.944},{7.7901,16.7952},{7.7901,16.7952}}));
  connect(stock2.out1,mult2converter2.in2) annotation(Line(points = {{-3.29835,-32.6792},{-3.29835,2.42057},{7.7901,2.42057},{7.7901,2.3952}}));
  connect(constantconverter3.out,faengeProRaeuber.in2) annotation(Line(points = {{-33.8771,9.89505},{-33.8771,9.98487},{-23.6914,9.8915},{-23.6914,9.8915}}));
  connect(faengeProRaeuber.in1,stock1.out2) annotation(Line(points = {{-23.6914,24.2915},{-23.6914,24.2057},{-36.9138,24.2057},{-36.9138,55.6732},{-3.32829,55.6732},{-3.32829,65.2942},{-3.26895,65.2942}}));
  connect(mult2flow1.outflow,stock1.inflow) annotation(Line(points = {{-31.0906,73.997},{-14.6927,73.997},{-14.6927,74.2942},{-15.2689,74.2942}}));
  connect(mult2addflow1.inflow,stock1.outflow) annotation(Line(points = {{21.581,73.6999},{9.29535,73.6999},{9.29535,74.2942},{8.73105,74.2942}}));
  connect(stock1.out2,mult2flow1.in2) annotation(Line(points = {{-3.26895,65.2942},{-3.26895,55.7721},{-36.8816,55.7721},{-36.8816,61.997},{-37.0906,61.997}}));
  connect(mult2addflow1.in1,stock1.out2) annotation(Line(points = {{25.181,61.6999},{25.181,55.7721},{-3.29052,55.7721},{-3.29052,65.2942},{-3.26895,65.2942}}));
  connect(constantconverter2.out,mult2addflow1.in2) annotation(Line(points = {{33.5832,53.6792},{33.5832,61.7691},{33.581,61.7691},{33.581,61.6999}}));
  connect(constantconverter6.out,mult2subdiv2flow1.in4) annotation(Line(points = {{48.2759,-64.4618},{48.2759,-53.973},{47.6816,-53.973},{47.6816,-53.3793}}));
  connect(stock2.out2,mult2flow2.in2) annotation(Line(points = {{-3.29835,-50.6792},{-3.29835,-62.9685},{-36.5817,-62.9685},{-36.5817,-53.979},{-36.5787,-53.979}}));
  connect(mult2subdiv2flow1.in1,stock2.out2) annotation(Line(points = {{26.0816,-53.3793},{26.0816,-62.6687},{-3.29835,-62.6687},{-3.29835,-50.6792},{-3.29835,-50.6792}}));
  connect(constantconverter5.out,mult2subdiv2flow1.in2) annotation(Line(points = {{33.2834,-64.4618},{33.2834,-53.3733},{33.2816,-53.3733},{33.2816,-53.3793}}));
  connect(constantconverter4.out,mult2flow2.in1) annotation(Line(points = {{-48.8756,-66.2609},{-48.8756,-54.2729},{-48.5787,-54.2729},{-48.5787,-53.979}}));
  connect(constantconverter1.out,mult2flow1.in1) annotation(Line(points = {{-48.8756,56.3778},{-48.8756,62.069},{-49.0906,62.069},{-49.0906,61.997}}));
  connect(stock2.inflow,mult2flow2.outflow) annotation(Line(points = {{-15.2984,-41.6792},{-29.985,-41.6792},{-29.985,-41.979},{-30.5787,-41.979}}));
  connect(mult2subdiv2flow1.inflow,stock2.outflow) annotation(Line(points = {{24.8816,-41.3793},{8.9955,-41.3793},{8.9955,-41.6792},{8.70165,-41.6792}}));
  annotation(experiment(StartTime = 0, StopTime = 1000, Tolerance = 0.0000000001));
end Raeuberbeute2B;

