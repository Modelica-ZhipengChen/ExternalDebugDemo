model SysblockDemo
  extends ModelWorkspace;
  import SysplorerEmbeddedCoder.Types.*;
  import BaseWorkspace.*;
  annotation(__MWORKS(version="2025b",modelType=Control,PortArrangement(Right(outport)),BlockSystem(blockKind=BlockKind.userModel,SampleTime(auto=true,group="")=0.02,ExternalCResource(SavedInRelationPath=true,IncludeFile={"my_div.h", "my_fcn.h" },SourceFile={"my_fcn.c" },Library={"myDiv" },IncludeDirectory={"classDirectory()/Resources/Include", "classDirectory()/Resources/Library/win64", "classDirectory()/Resources/C-Source" },LibraryDirectory={"classDirectory()/Resources/Include", "classDirectory()/Resources/Library/win64", "classDirectory()/Resources/C-Source" }),OutputInterval=0.02),SysblockVersion="1.0",CodeGeneration(Config = {"code_comments":{"blocks":false,"descriptions":false,"eliminated_objects":false,"enable":false,"nested_objects":false},"code_placement":{"mode":"Compact"},"code_replacement":{"fixed_point_library":"Fixed-TY","standard_c_library":"C99"},"custom_code":{"code":{"function_declare":{"head":"","item_head":"","item_tail":"","tail":""},"function_define":{"head":"","item_head":"","item_tail":"","tail":""},"global_variable_declare":{"head":"","item_head":"","item_tail":"","tail":""},"global_variable_define":{"head":"","item_head":"","item_tail":"","tail":""},"include":{"head":"","item_head":"","item_tail":"","tail":""},"macro":{"head":"","item_head":"","item_tail":"","tail":""},"type":{"head":"","item_head":"","item_tail":"","tail":""}},"code_protection":{"integer_division_by_zero":false,"overflow":false}},"data_type":{"real_as_float":false},"experiment":{"task_and_sample":{"muti_task_mode":false}},"hardware_platform":{"byte_ordering":"大端序","largest_atomic_size":{"floating_point":"32","integer":"32"},"number_of_bits":{"char":8,"double":64,"float":32,"int":32,"long":64,"long_long":0,"pointer":32,"ptrdiff_t":32,"size_t":32},"support_dynamic_memory_allocation":false,"support_float_point":true,"target":"get","type_platform":"ARM Cortex-M0","vendor":"中颖科技"},"identifier":{"format":{"function":"{{model_name}}{{name}}","global_variable":"{{model_name}}{{data_type}}{{prefix}}{{name}}"
,"local_variable":"{{data_type}}{{prefix}}{{name}}","macro":"{{model_name}}{{name}}","mem_var":"{{model_name}}{{name}}","type":"{{model_name}}{{name}}"},"format_string":{"boolean":"b","input":"in","integer":"i","output":"out","parameter":"p","real":"r"},"max_length":32,"style":{"function":"camelCase","global_variable":"camelCase","local_variable":"camelCase","macro":"camelCase","mem_var":"camelCase","type":"camelCase"}},"interface":{"array_layout":"row_major","function_name":{"initialize":"Init","step":"Step","terminate":""},"generate_capi_for_param":false,"generate_capi_for_root_IO":false,"generate_capi_for_signal":false,"generate_capi_for_state":false,"have_terminate":false},"optimization":{"Code":"size","array_loop_threshold":5,"logical_operator":"logical"}}, Sim_seting = {"sim_seting":{"output":""}})),Icon(coordinateSystem(preserveAspectRatio=false)),experiment(DoublePrecision=false,Interval=-1,Algorithm=Euler,IntegratorStep=-1),Diagram(coordinateSystem(extent={{-100,-100},{100,100}},
grid={2,2}),graphics = {Text(origin={-44,-28},
lineColor={0,0,0},
extent={{-22,-5},{22,5}},
textString="源码形式外部函数",
fontSize=14,
textStyle={TextStyle.None},
textColor={0,0,0},
horizontalAlignment=TextAlignment.Left), Text(origin={-46,76},
lineColor={0,0,0},
extent={{-28,-5},{28,5}},
textString="(静态）库形式外部函数",
fontSize=14,
textStyle={TextStyle.None},
textColor={0,0,0},
horizontalAlignment=TextAlignment.Left), Text(origin={30.1942,54},
lineColor={0,0,0},
extent={{-31.8058,-5},{31.8058,5}},
textString="（动态）库形式外部函数",
fontSize=14,
textStyle={TextStyle.None},
textColor={0,0,0},
horizontalAlignment=TextAlignment.Left)}));
  SysplorerEmbeddedCoder.Sources.Constant constant1 
    annotation (Placement(transformation(origin={-144,20},
extent={{-10,-10},{10,10}})),__MWORKS(BlockSystem(Instance(y(Type(ref="double"),Dimension=1),
k(Type(ref="double"),Dimension=1)),SampleTime(group="D0")=0)));
  SysplorerEmbeddedCoder.Sources.Clock clock 
    annotation (Placement(transformation(origin={-144,64},
extent={{-10,-10},{10,10}})),__MWORKS(BlockSystem(SampleTime(group="D0")=0)));
  CFunction my_add 
    annotation (Placement(transformation(origin={-52,59},
extent={{-10,-10},{10,10}})),__MWORKS(BlockSystem(SampleTime(group="D0")=0)));
  CCaller my_fcn 
    annotation (Placement(transformation(origin={-42,-2},
extent={{-20,-10},{20,10}})),__MWORKS(BlockSystem(SampleTime(group="D0")=0)));
  SysplorerEmbeddedCoder.MathOperation.Sum sum1(inputs="-+",isSaturate=false) 
    annotation (Placement(transformation(origin={-100,-7},
extent={{-10,-10},{10,10}})),__MWORKS(BlockSystem(Instance(u(u1(Type(ref="double"),Dimension=1),
u2(Type(ref="double"),Dimension=1)),
y(Type(ref="double"),Dimension=1)),Type(overflowKind=SysplorerEmbeddedCoder.Types.OverflowKind.wrap),SampleTime(group="D0")=0),PortLabels(labelType="CustomType",labels(label(text="-",instance="u1"),label(text="+",instance="u2")))));
  CCaller1 my_div 
    annotation (Placement(transformation(origin={25,35.0000048},
extent={{-20,-10},{20,10}})),__MWORKS(BlockSystem(SampleTime(group="D0")=0)));
  SysplorerEmbeddedCoder.Port.Outport outport 
    annotation (Placement(transformation(origin={78,35},
extent={{-10,-10},{10,10}}),
iconTransformation(origin={101.8,0},
extent={{-1.8,-1.8},{1.8,1.8}})),__MWORKS(BlockSystem(SampleTime(group="D0")=0,Type(ref="double"),Dimension=1)));
  model ModelWorkspace
    annotation(__MWORKS(hide = true,BlockSystem(blockKind=BlockKind.modelWorkspace)));
  end ModelWorkspace;
  block CFunction

      annotation(
       __MWORKS(PortArrangement(Left(u1,u2), Right(y)),PortLabels(labelType="CustomType",labels(label(text="u1",instance="u1"),label(text="u2",instance="u2"),label(text="y",instance="y"))), BlockSystem(blockKind = BlockKind.atomic, bltBlockKind = BltBlockKind.cfunction), independentInstance = true, sourceModel = SysplorerEmbeddedCoder.Utilities.CCaller, ExternalFunctionBlock, hide = true),
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
    output SysplorerEmbeddedCoder.Types.Auto y annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref="double"), Dimension(dimensionType = DimensionType.none) = 1)));
  external "C" ExternalDebugDemo20251218_Demo1_CFunction_CFunction(u1,u2,y) 
  annotation (Include = "
#ifndef _my_add_h_ 
#define _my_add_h_ 
#include \"my_add.h\" 
#endif
void ExternalDebugDemo20251218_Demo1_CFunction_CFunction(double u1, double u2, double* __temp_out_y)
{
double y;
/***Cfunction Code Divsion***/y = my_add(u1, u2);/***Cfunction Code Divsion***/
*__temp_out_y = y;
}"  ,
    IncludeDirectory = "modelica://ExternalDebugDemo/Resources/Include",
    Library = "myAdd",
    LibraryDirectory = "modelica://ExternalDebugDemo/Resources/Library");
  end func_CFunction;
      SysplorerEmbeddedCoder.Port.Inport u1 
      annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref = "double"),Dimension(dimensionType = DimensionType.none) = 1)), Placement(transformation(origin = {0,0}, extent = { {-10,-10}, {10,10} })));
      SysplorerEmbeddedCoder.Port.Inport u2 
      annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref = "double"),Dimension(dimensionType = DimensionType.none) = 1)), Placement(transformation(origin = {0,0}, extent = { {-10,-10}, {10,10} })));
      SysplorerEmbeddedCoder.Port.Outport y 
      annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref = "double"),Dimension(dimensionType = DimensionType.none) = 1)), Placement(transformation(origin = {0,0}, extent = { {-10,-10}, {10,10} })));
    equation

    y = func_CFunction(u1, u2);
  end CFunction;
  block CCaller
    annotation(
       __MWORKS(PortArrangement(Left(x,y), Right(out)),PortLabels(labelType="CustomType",labels(label(text="x",instance="x"),label(text="y",instance="y"),label(text="out",instance="out"))), BlockSystem(CCaller(currentFile = "my_fcn.h"), blockKind = BlockKind.atomic, bltBlockKind = BltBlockKind.ccaller), independentInstance = true, sourceModel = SysplorerEmbeddedCoder.Utilities.CCaller, ExternalFunctionBlock, hide = true),
            Icon(coordinateSystem(extent = { {-200.0, -100.0}, {200.0, 100.0} },
            preserveAspectRatio = false,
            initialScale = 0.1,
            grid = { 2.0, 2.0 }), graphics = { Rectangle(sizePolicy=SizePolicy.Expanding,
            rotationPolicy = RotationPolicy.Follow, origin = { 0.0, 0.0 },
            fillColor = {255, 255, 255},
            fillPattern = FillPattern.Solid,
            extent = {{-200.0, 100.0}, {200.0, -100.0}}), Text(origin = {0.0, 0.0},
            extent = {{-100.0, 20.0}, {100, -20}},
            textString = "my_fcn",
            fontSize=15, textStyle = { TextStyle.None },
           verticalAlignment = TextAlignment.VCenter), Text(origin = {0.0, -120.0},
            lineColor = {0, 0, 0},
            extent = {{-150, 20}, {150, -20}},
            textString = "%name",
            fontSize = 14,
           textStyle = {TextStyle.None},
            textColor = {0, 0, 0},
            verticalAlignment = TextAlignment.Top) },sizePolicy=SizePolicy.Fixed,rotationPolicy=RotationPolicy.Ignore),
        Diagram(coordinateSystem(extent = { {-100.0, -100.0}, {100.0, 100.0} },
            preserveAspectRatio = false,
            initialScale = 0.1,
            grid = { 2.0, 2.0 })));
  function CCallerFunction
    output SysplorerEmbeddedCoder.Types.Auto out annotation(__MWORKS(BlockSystem(CParamName = out, Type(inherit = InheritType.none, ref="double"), Dimension(dimensionType = DimensionType.none) = 1)));
    input SysplorerEmbeddedCoder.Types.Auto x annotation(__MWORKS(BlockSystem(CParamName = x, Type(inherit = InheritType.none, ref="double"), Dimension(dimensionType = DimensionType.none) = 1)));

    input SysplorerEmbeddedCoder.Types.Auto y annotation(__MWORKS(BlockSystem(CParamName = y, Type(inherit = InheritType.none, ref="double"), Dimension(dimensionType = DimensionType.none) = 1)));

  external "C" out = my_fcn(x, y) annotation(__MWORKS(BlockSystem(functionProto = "double  my_fcn(double x,double y)")));
  end CCallerFunction;
    SysplorerEmbeddedCoder.Port.Inport x 
      annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref = "double"),Dimension(dimensionType = DimensionType.none) = 1)), Placement(transformation(origin = {0,0}, extent = { {-10,-10}, {10,10} })));
    SysplorerEmbeddedCoder.Port.Inport y 
      annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref = "double"),Dimension(dimensionType = DimensionType.none) = 1)), Placement(transformation(origin = {0,0}, extent = { {-10,-10}, {10,10} })));
    SysplorerEmbeddedCoder.Port.Outport out 
      annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref = "double"),Dimension(dimensionType = DimensionType.none) = 1)), Placement(transformation(origin = {0,0}, extent = { {-10,-10}, {10,10} })));

  equation

    out = CCallerFunction(x, y);
  end CCaller;
  block CCaller1
    annotation(
       __MWORKS(PortArrangement(Left(x,y), Right(out)),PortLabels(labelType="CustomType",labels(label(text="x",instance="x"),label(text="y",instance="y"),label(text="out",instance="out"))), BlockSystem(CCaller(currentFile = "my_div.h"), blockKind = BlockKind.atomic, bltBlockKind = BltBlockKind.ccaller), independentInstance = true, sourceModel = SysplorerEmbeddedCoder.Utilities.CCaller, ExternalFunctionBlock, hide = true),
            Icon(coordinateSystem(extent = { {-200.0, -100.0}, {200.0, 100.0} },
            preserveAspectRatio = false,
            initialScale = 0.1,
            grid = { 2.0, 2.0 }), graphics = { Rectangle(sizePolicy=SizePolicy.Expanding,
            rotationPolicy = RotationPolicy.Follow, origin = { 0.0, 0.0 },
            fillColor = {255, 255, 255},
            fillPattern = FillPattern.Solid,
            extent = {{-200.0, 100.0}, {200.0, -100.0}}), Text(origin = {0.0, 0.0},
            extent = {{-100.0, 20.0}, {100, -20}},
            textString = "my_div",
            fontSize=15, textStyle = { TextStyle.None },
           verticalAlignment = TextAlignment.VCenter), Text(origin = {0.0, -120.0},
            lineColor = {0, 0, 0},
            extent = {{-150, 20}, {150, -20}},
            textString = "%name",
            fontSize = 14,
           textStyle = {TextStyle.None},
            textColor = {0, 0, 0},
            verticalAlignment = TextAlignment.Top) },sizePolicy=SizePolicy.Fixed,rotationPolicy=RotationPolicy.Ignore),
        Diagram(coordinateSystem(extent = { {-100.0, -100.0}, {100.0, 100.0} },
            preserveAspectRatio = false,
            initialScale = 0.1,
            grid = { 2.0, 2.0 })));
  function CCallerFunction
    output SysplorerEmbeddedCoder.Types.Auto out annotation(__MWORKS(BlockSystem(CParamName = out, Type(inherit = InheritType.none, ref="double"), Dimension(dimensionType = DimensionType.none) = 1)));
    input SysplorerEmbeddedCoder.Types.Auto x annotation(__MWORKS(BlockSystem(CParamName = x, Type(inherit = InheritType.none, ref="double"), Dimension(dimensionType = DimensionType.none) = 1)));

    input SysplorerEmbeddedCoder.Types.Auto y annotation(__MWORKS(BlockSystem(CParamName = y, Type(inherit = InheritType.none, ref="double"), Dimension(dimensionType = DimensionType.none) = 1)));

  external "C" out = my_div(x, y) annotation(__MWORKS(BlockSystem(functionProto = "double  my_div(double x,double y)")));
  end CCallerFunction;
    SysplorerEmbeddedCoder.Port.Inport x 
      annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref = "double"),Dimension(dimensionType = DimensionType.none) = 1)), Placement(transformation(origin = {0,0}, extent = { {-10,-10}, {10,10} })));
    SysplorerEmbeddedCoder.Port.Inport y 
      annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref = "double"),Dimension(dimensionType = DimensionType.none) = 1)), Placement(transformation(origin = {0,0}, extent = { {-10,-10}, {10,10} })));
    SysplorerEmbeddedCoder.Port.Outport out 
      annotation(__MWORKS(BlockSystem(Type(inherit = InheritType.none, ref = "double"),Dimension(dimensionType = DimensionType.none) = 1)), Placement(transformation(origin = {0,0}, extent = { {-10,-10}, {10,10} })));

  equation

    out = CCallerFunction(x, y);
  end CCaller1;
  equation
  connect(clock.y, my_add.u1) 
  annotation(Line(origin={-109,59},
points={{-23.2,5},{45.2,5}},
color={0,0,0}));
  connect(constant1.y, my_add.u2) 
  annotation(Line(origin={-109,32},
points={{-23.2,-12},{27,-12},{27,22},{45.2,22}},
color={0,0,0}));
  connect(sum1.y, my_fcn.y) 
  annotation(Line(origin={-82,-7},
points={{-6.2,-8.88178e-16},{18.2,-8.88178e-16}},
color={0,0,0}));
  connect(my_fcn.x, constant1.y) 
  annotation(Line(origin={-98,12},
points={{34.2,-9},{16,-9},{16,8},{-34.2,8}},
color={0,0,0}),__MWORKS(BlockSystem(NamedSignal)));
  connect(sum1.u1, clock.y) 
  annotation(Line(origin={-122,31},
points={{10.2,-33},{4,-33},{4,33},{-10.2,33}},
color={0,0,0}),__MWORKS(BlockSystem(NamedSignal)));
  connect(sum1.u2, constant1.y) 
  annotation(Line(origin={-122,4},
  points={{10.2,-16},{-2,-16},{-2,16},{-10.2,16}},
  color={0,0,0}),__MWORKS(BlockSystem(NamedSignal)));
  connect(my_div.x, my_add.y) 
  annotation(Line(origin={-25,50},
points={{28.2,-9.9999952},{11.4,-9.9999952},{11.4,9},{-15.2,9}},
color={0,0,0}),__MWORKS(BlockSystem(NamedSignal)));
  connect(my_div.y, my_fcn.out) 
  annotation(Line(origin={-15,14},
points={{18.2,16.0000048},{1.4,16.0000048},{1.4,-16},{-5.2,-16}},
color={0,0,0}));
  connect(my_div.out, outport) 
  annotation(Line(origin={50,35},
points={{-3.2,4.8e-6},{16,4.8e-6}},
color={0,0,0}));
  end SysblockDemo;