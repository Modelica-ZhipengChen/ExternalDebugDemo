model SysblockDemoMultiOutput
  extends ModelWorkspace;
  import SysplorerEmbeddedCoder.Types.*;
  import BaseWorkspace.*;
  annotation(__MWORKS(version="2025b",modelType=Control,PortArrangement(Right(outport, outport1, outport2, outport3)),BlockSystem(blockKind=BlockKind.userModel,SampleTime(auto=true,group="")=0.02,ExternalCResource(SavedInRelationPath=true,IncludeFile={"my_div.h", "my_fcn.h" },SourceFile={"my_fcn.c" },Library={"myDiv" },IncludeDirectory={"classDirectory()/Resources/Include", "classDirectory()/Resources/Library/win64", "classDirectory()/Resources/C-Source" },LibraryDirectory={"classDirectory()/Resources/Include", "classDirectory()/Resources/Library/win64", "classDirectory()/Resources/C-Source" }),OutputInterval=0.02),SysblockVersion="1.0",CodeGeneration(Config = {"code_comments":{"blocks":false,"descriptions":false,"eliminated_objects":false,"enable":false,"nested_objects":false},"code_placement":{"mode":"Compact"},"code_replacement":{"fixed_point_library":"Fixed-TY","standard_c_library":"C99"},"custom_code":{"code":{"function_declare":{"head":"","item_head":"","item_tail":"","tail":""},"function_define":{"head":"","item_head":"","item_tail":"","tail":""},"global_variable_declare":{"head":"","item_head":"","item_tail":"","tail":""},"global_variable_define":{"head":"","item_head":"","item_tail":"","tail":""},"include":{"head":"","item_head":"","item_tail":"","tail":""},"macro":{"head":"","item_head":"","item_tail":"","tail":""},"type":{"head":"","item_head":"","item_tail":"","tail":""}},"code_protection":{"integer_division_by_zero":false,"overflow":false}},"data_type":{"real_as_float":false},"experiment":{"task_and_sample":{"muti_task_mode":false}},"hardware_platform":{"byte_ordering":"大端序","largest_atomic_size":{"floating_point":"32","integer":"32"},"number_of_bits":{"char":8,"double":64,"float":32,"int":32,"long":64,"long_long":0,"pointer":32,"ptrdiff_t":32,"size_t":32},"support_dynamic_memory_allocation":false,"support_float_point":true,"target":"get","type_platform":"ARM Cortex-M0","vendor":"中颖科技"},"identifier":{"format":{"function":"{{model_name}}{{name}}","global_variable"
:"{{model_name}}{{data_type}}{{prefix}}{{name}}"
,"local_variable":"{{data_type}}{{prefix}}{{name}}","macro":"{{model_name}}{{name}}","mem_var":"{{model_name}}{{name}}","type":"{{model_name}}{{name}}"},"format_string":{"boolean":"b","input":"in","integer":"i","output":"out","parameter":"p","real":"r"},"max_length":32,"style":{"function":"camelCase","global_variable":"camelCase","local_variable":"camelCase","macro":"camelCase","mem_var":"camelCase","type":"camelCase"}},"interface":{"array_layout":"row_major","function_name":{"initialize":"Init","step":"Step","terminate":""},"generate_capi_for_param":false,"generate_capi_for_root_IO":false,"generate_capi_for_signal":false,"generate_capi_for_state":false,"have_terminate":false},"optimization":{"Code":"size","array_loop_threshold":5,"logical_operator":"logical"}}, Sim_seting = {"sim_seting":{"output":""}})),Icon(coordinateSystem(preserveAspectRatio=false)),experiment(DoublePrecision=false,Interval=-1,Algorithm=Euler,IntegratorStep=-1),Diagram(coordinateSystem(extent={{-100,-100},{100,100}},
grid={2,2}),graphics = {Text(origin={-31.5872,90},
lineColor={0,0,0},
extent={{-26.4128,-10},{26.4128,10}},
textString="多输入多输出示例",
fontSize=18,
textStyle={TextStyle.None},
textColor={0,0,0},
horizontalAlignment=TextAlignment.Left)}));
  SysplorerEmbeddedCoder.Sources.Constant constant1 
    annotation (Placement(transformation(origin={-144,20},
extent={{-10,-10},{10,10}})),__MWORKS(BlockSystem(Instance(y(Type(ref="double"),Dimension=1),
k(Type(ref="double"),Dimension=1)),SampleTime(group="D0")=0)));
  SysplorerEmbeddedCoder.Sources.Clock clock 
    annotation (Placement(transformation(origin={-144,59.0000048},
extent={{-10,-10},{10,10}})),__MWORKS(BlockSystem(SampleTime(group="D0")=0)));
  CFunction my_add_sub 
    annotation (Placement(transformation(origin={-56,54.0000048},
extent={{-10,-10},{10,10}})),__MWORKS(BlockSystem(SampleTime(group="D0")=0)));
  SysplorerEmbeddedCoder.Port.Outport outport 
    annotation (Placement(transformation(origin={80,59},
extent={{-10,-10},{10,10}}),
iconTransformation(origin={101.8,75},
extent={{-1.8,-1.8},{1.8,1.8}})),__MWORKS(BlockSystem(SampleTime(group="D0")=0,Type(ref="double"),Dimension=1)));
  SysplorerEmbeddedCoder.Port.Outport outport1 
    annotation (Placement(transformation(origin={80,28},
extent={{-10,-10},{10,10}}),
iconTransformation(origin={101.8,25},
extent={{-1.8,-1.8},{1.8,1.8}})),__MWORKS(BlockSystem(SampleTime(group="D0")=0,Type(ref="double"),Dimension=1)));
  CFunction1 my_add_sub2 
    annotation (Placement(transformation(origin={-56,2},
extent={{-10,-10},{10,10}})),__MWORKS(BlockSystem(SampleTime(group="D0")=0)));
  SysplorerEmbeddedCoder.Port.Outport outport2 
    annotation (Placement(transformation(origin={32,6.9999952},
extent={{-10,-10},{10,10}}),
iconTransformation(origin={101.8,-25},
extent={{-1.8,-1.8},{1.8,1.8}})),__MWORKS(BlockSystem(SampleTime(group="D0")=0,Type(ref="double"),Dimension=1)));
  SysplorerEmbeddedCoder.Port.Outport outport3 
    annotation (Placement(transformation(origin={60,-16},
extent={{-10,-10},{10,10}}),
iconTransformation(origin={101.8,-75},
extent={{-1.8,-1.8},{1.8,1.8}})),__MWORKS(BlockSystem(SampleTime(group="D0")=0,Type(ref="double"),Dimension=1)));
  model ModelWorkspace
    annotation(__MWORKS(hide = true,BlockSystem(blockKind=BlockKind.modelWorkspace)));
  end ModelWorkspace;
  block CFunction

      annotation(
       __MWORKS(PortArrangement(Left(u1,u2), Right(y1,y2)),PortLabels(labelType="CustomType",labels(label(text="u1",instance="u1"),label(text="u2",instance="u2"),label(text="y1",instance="y1"),label(text="y2",instance="y2"))), BlockSystem(blockKind = BlockKind.atomic, bltBlockKind = BltBlockKind.cfunction), independentInstance = true, sourceModel = SysplorerEmbeddedCoder.Utilities.CCaller, ExternalFunctionBlock, hide = true),
            Icon(sizePolicy=SizePolicy.Fixed, rotationPolicy=RotationPolicy.Ignore,
            coordinateSystem(extent = { {-200.0, -100.0}, {200.0, 100.0} },
            preserveAspectRatio = false,
            initialScale = 0.1,
            grid = { 2.0, 2.0 }), graphics = { Rectangle(sizePolicy=SizePolicy.Expanding, rotationPolicy = RotationPolicy.Follow,
           origin = {0.0, 0.0}, lineThickness=3,
            fillColor = {255, 255, 255},
            fillPattern = FillPattern.Solid,
            extent = {{-200.0, 100.0}, {200.0, -100.0}}), Text(origin = {0.0, 0.0},
            extent = {{-150.0, 20.0}, {150, -20}},
            fontSize=14,
            textString = "C",
            verticalAlignment = TextAlignment.VCenter)}),
        Diagram(coordinateSystem(extent = { {-100.0, -100.0}, {100.0, 100.0} },
            preserveAspectRatio = false,
            initialScale = 0.1,
            grid = { 2.0, 2.0 })));
    function func_CFunction
    input SysplorerEmbeddedCoder.Types.Auto u1 annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref="double"), Dimension(dimensionType = DimensionType.none) = 1)));
    input SysplorerEmbeddedCoder.Types.Auto u2 annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref="double"), Dimension(dimensionType = DimensionType.none) = 1)));
    output SysplorerEmbeddedCoder.Types.Auto y1 annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref="double"), Dimension(dimensionType = DimensionType.none) = 1)));
    output SysplorerEmbeddedCoder.Types.Auto y2 annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref="double"), Dimension(dimensionType = DimensionType.none) = 1)));
  external "C" ExternalDebugDemo_SysblockDemoMultiOutput2_CFunction_CFunction(u1,u2,y1,y2) 
  annotation (Include = "
#ifndef _my_add_h_ 
#define _my_add_h_ 
#include \"my_add.h\" 
#endif
void ExternalDebugDemo_SysblockDemoMultiOutput2_CFunction_CFunction(double u1, double u2, double* __temp_out_y1, double* __temp_out_y2)
{
double y1;
double y2;
/***Cfunction Code Divsion***/my_add_sub(u1, u2, &y1, &y2);/***Cfunction Code Divsion***/
*__temp_out_y1 = y1;
*__temp_out_y2 = y2;
}"  ,
    IncludeDirectory = "modelica://ExternalDebugDemo/Resources/Include",
    Library = "myAdd",
    LibraryDirectory = "modelica://ExternalDebugDemo/Resources/Library");
  end func_CFunction;
      SysplorerEmbeddedCoder.Port.Inport u1 
      annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref = "double"),Dimension(dimensionType = DimensionType.none) = 1)), Placement(transformation(origin = {0,0}, extent = { {-10,-10}, {10,10} })));
      SysplorerEmbeddedCoder.Port.Inport u2 
      annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref = "double"),Dimension(dimensionType = DimensionType.none) = 1)), Placement(transformation(origin = {0,0}, extent = { {-10,-10}, {10,10} })));
      SysplorerEmbeddedCoder.Port.Outport y1 
      annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref = "double"),Dimension(dimensionType = DimensionType.none) = 1)), Placement(transformation(origin = {0,0}, extent = { {-10,-10}, {10,10} })));
      SysplorerEmbeddedCoder.Port.Outport y2 
      annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref = "double"),Dimension(dimensionType = DimensionType.none) = 1)), Placement(transformation(origin = {0,0}, extent = { {-10,-10}, {10,10} })));
    equation

    (y1, y2) = func_CFunction(u1, u2);
  end CFunction;
  block CFunction1

      annotation(
       __MWORKS(PortArrangement(Left(u1,u2), Right(y1,y2)),PortLabels(labelType="CustomType",labels(label(text="u1",instance="u1"),label(text="u2",instance="u2"),label(text="y1",instance="y1"),label(text="y2",instance="y2"))), BlockSystem(blockKind = BlockKind.atomic, bltBlockKind = BltBlockKind.cfunction), independentInstance = true, sourceModel = SysplorerEmbeddedCoder.Utilities.CCaller, ExternalFunctionBlock, hide = true),
            Icon(sizePolicy=SizePolicy.Fixed, rotationPolicy=RotationPolicy.Ignore,
            coordinateSystem(extent = { {-200.0, -100.0}, {200.0, 100.0} },
            preserveAspectRatio = false,
            initialScale = 0.1,
            grid = { 2.0, 2.0 }), graphics = { Rectangle(sizePolicy=SizePolicy.Expanding, rotationPolicy = RotationPolicy.Follow,
           origin = {0.0, 0.0}, lineThickness=3,
            fillColor = {255, 255, 255},
            fillPattern = FillPattern.Solid,
            extent = {{-200.0, 100.0}, {200.0, -100.0}}), Text(origin = {0.0, 0.0},
            extent = {{-150.0, 20.0}, {150, -20}},
            fontSize=14,
            textString = "C",
            verticalAlignment = TextAlignment.VCenter)}),
        Diagram(coordinateSystem(extent = { {-100.0, -100.0}, {100.0, 100.0} },
            preserveAspectRatio = false,
            initialScale = 0.1,
            grid = { 2.0, 2.0 })));
    function func_CFunction1
    input SysplorerEmbeddedCoder.Types.Auto u1 annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref="double"), Dimension(dimensionType = DimensionType.none) = 1)));
    input SysplorerEmbeddedCoder.Types.Auto u2 annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref="double"), Dimension(dimensionType = DimensionType.none) = 1)));
    output SysplorerEmbeddedCoder.Types.Auto y1 annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref="double"), Dimension(dimensionType = DimensionType.none) = 1)));
    output SysplorerEmbeddedCoder.Types.Auto y2 annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref="double"), Dimension(dimensionType = DimensionType.none) = 1)));
  external "C" ExternalDebugDemo_SysblockDemoMultiOutput2_CFunction1_CFunction(u1,u2,y1,y2) 
  annotation (Include = "
#ifndef _my_add_h_ 
#define _my_add_h_ 
#include \"my_add.h\" 
#endif
void ExternalDebugDemo_SysblockDemoMultiOutput2_CFunction1_CFunction(double u1, double u2, double* __temp_out_y1, double* __temp_out_y2)
{
double y1;
double y2;
/***Cfunction Code Divsion***/y1 = my_add_sub2(u1, u2, &y2);/***Cfunction Code Divsion***/
*__temp_out_y1 = y1;
*__temp_out_y2 = y2;
}"  ,
    IncludeDirectory = "modelica://ExternalDebugDemo/Resources/Include",
    Library = "myAdd",
    LibraryDirectory = "modelica://ExternalDebugDemo/Resources/Library");
  end func_CFunction1;
      SysplorerEmbeddedCoder.Port.Inport u1 
      annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref = "double"),Dimension(dimensionType = DimensionType.none) = 1)), Placement(transformation(origin = {0,0}, extent = { {-10,-10}, {10,10} })));
      SysplorerEmbeddedCoder.Port.Inport u2 
      annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref = "double"),Dimension(dimensionType = DimensionType.none) = 1)), Placement(transformation(origin = {0,0}, extent = { {-10,-10}, {10,10} })));
      SysplorerEmbeddedCoder.Port.Outport y1 
      annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref = "double"),Dimension(dimensionType = DimensionType.none) = 1)), Placement(transformation(origin = {0,0}, extent = { {-10,-10}, {10,10} })));
      SysplorerEmbeddedCoder.Port.Outport y2 
      annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref = "double"),Dimension(dimensionType = DimensionType.none) = 1)), Placement(transformation(origin = {0,0}, extent = { {-10,-10}, {10,10} })));
    equation

    (y1, y2) = func_CFunction1(u1, u2);
  end CFunction1;
  equation
  connect(clock.y, my_add_sub.u1) 
  annotation(Line(origin={-109,59},
points={{-23.2,4.8e-6},{41.2,4.8e-6}},
color={0,0,0}),__MWORKS(BlockSystem(NamedSignal)));
  connect(constant1.y, my_add_sub.u2) 
  annotation(Line(origin={-109,32},
points={{-23.2,-12},{15,-12},{15,17.0000048},{41.2,17.0000048}},
color={0,0,0}));
  connect(outport1, my_add_sub.y2) 
  annotation(Line(origin={12,39},
points={{56,-11},{-18,-11},{-18,10.0000048},{-56.2,10.0000048}},
color={0,0,0}));
  connect(my_add_sub.y1, outport) 
  annotation(Line(origin={12,59},
  points={{-56.2,4.8e-6},{56,4.8e-6}},
  color={0,0,0}));
  connect(my_add_sub2.u1, clock.y) 
  annotation(Line(origin={-100,33},
points={{32.2,-26},{16,-26},{16,26.0000048},{-32.2,26.0000048}},
color={0,0,0}),__MWORKS(BlockSystem(NamedSignal)));
  connect(my_add_sub2.u2, constant1.y) 
  annotation(Line(origin={-100,9},
  points={{32.2,-12},{0,-12},{0,11},{-32.2,11}},
  color={0,0,0}),__MWORKS(BlockSystem(NamedSignal)));
  connect(my_add_sub2.y1, outport2) 
  annotation(Line(origin={-12,7},
  points={{-32.2,0},{32,0}},
  color={0,0,0}));
  connect(outport3, my_add_sub2.y2) 
  annotation(Line(origin={2,-9},
  points={{46,-7},{-42.4,-7},{-42.4,6},{-46.2,6}},
  color={0,0,0}));
  end SysblockDemoMultiOutput;