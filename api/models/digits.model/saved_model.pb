İ
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
module_wrapper_1/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*.
shared_namemodule_wrapper_1/dense/kernel
?
1module_wrapper_1/dense/kernel/Read/ReadVariableOpReadVariableOpmodule_wrapper_1/dense/kernel* 
_output_shapes
:
??*
dtype0
?
module_wrapper_1/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namemodule_wrapper_1/dense/bias
?
/module_wrapper_1/dense/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_1/dense/bias*
_output_shapes	
:?*
dtype0
?
module_wrapper_2/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*0
shared_name!module_wrapper_2/dense_1/kernel
?
3module_wrapper_2/dense_1/kernel/Read/ReadVariableOpReadVariableOpmodule_wrapper_2/dense_1/kernel* 
_output_shapes
:
??*
dtype0
?
module_wrapper_2/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namemodule_wrapper_2/dense_1/bias
?
1module_wrapper_2/dense_1/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_2/dense_1/bias*
_output_shapes	
:?*
dtype0
?
module_wrapper_3/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*0
shared_name!module_wrapper_3/dense_2/kernel
?
3module_wrapper_3/dense_2/kernel/Read/ReadVariableOpReadVariableOpmodule_wrapper_3/dense_2/kernel*
_output_shapes
:	?
*
dtype0
?
module_wrapper_3/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*.
shared_namemodule_wrapper_3/dense_2/bias
?
1module_wrapper_3/dense_2/bias/Read/ReadVariableOpReadVariableOpmodule_wrapper_3/dense_2/bias*
_output_shapes
:
*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
$Adam/module_wrapper_1/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*5
shared_name&$Adam/module_wrapper_1/dense/kernel/m
?
8Adam/module_wrapper_1/dense/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/module_wrapper_1/dense/kernel/m* 
_output_shapes
:
??*
dtype0
?
"Adam/module_wrapper_1/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/module_wrapper_1/dense/bias/m
?
6Adam/module_wrapper_1/dense/bias/m/Read/ReadVariableOpReadVariableOp"Adam/module_wrapper_1/dense/bias/m*
_output_shapes	
:?*
dtype0
?
&Adam/module_wrapper_2/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*7
shared_name(&Adam/module_wrapper_2/dense_1/kernel/m
?
:Adam/module_wrapper_2/dense_1/kernel/m/Read/ReadVariableOpReadVariableOp&Adam/module_wrapper_2/dense_1/kernel/m* 
_output_shapes
:
??*
dtype0
?
$Adam/module_wrapper_2/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/module_wrapper_2/dense_1/bias/m
?
8Adam/module_wrapper_2/dense_1/bias/m/Read/ReadVariableOpReadVariableOp$Adam/module_wrapper_2/dense_1/bias/m*
_output_shapes	
:?*
dtype0
?
&Adam/module_wrapper_3/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*7
shared_name(&Adam/module_wrapper_3/dense_2/kernel/m
?
:Adam/module_wrapper_3/dense_2/kernel/m/Read/ReadVariableOpReadVariableOp&Adam/module_wrapper_3/dense_2/kernel/m*
_output_shapes
:	?
*
dtype0
?
$Adam/module_wrapper_3/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*5
shared_name&$Adam/module_wrapper_3/dense_2/bias/m
?
8Adam/module_wrapper_3/dense_2/bias/m/Read/ReadVariableOpReadVariableOp$Adam/module_wrapper_3/dense_2/bias/m*
_output_shapes
:
*
dtype0
?
$Adam/module_wrapper_1/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*5
shared_name&$Adam/module_wrapper_1/dense/kernel/v
?
8Adam/module_wrapper_1/dense/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/module_wrapper_1/dense/kernel/v* 
_output_shapes
:
??*
dtype0
?
"Adam/module_wrapper_1/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/module_wrapper_1/dense/bias/v
?
6Adam/module_wrapper_1/dense/bias/v/Read/ReadVariableOpReadVariableOp"Adam/module_wrapper_1/dense/bias/v*
_output_shapes	
:?*
dtype0
?
&Adam/module_wrapper_2/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*7
shared_name(&Adam/module_wrapper_2/dense_1/kernel/v
?
:Adam/module_wrapper_2/dense_1/kernel/v/Read/ReadVariableOpReadVariableOp&Adam/module_wrapper_2/dense_1/kernel/v* 
_output_shapes
:
??*
dtype0
?
$Adam/module_wrapper_2/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/module_wrapper_2/dense_1/bias/v
?
8Adam/module_wrapper_2/dense_1/bias/v/Read/ReadVariableOpReadVariableOp$Adam/module_wrapper_2/dense_1/bias/v*
_output_shapes	
:?*
dtype0
?
&Adam/module_wrapper_3/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*7
shared_name(&Adam/module_wrapper_3/dense_2/kernel/v
?
:Adam/module_wrapper_3/dense_2/kernel/v/Read/ReadVariableOpReadVariableOp&Adam/module_wrapper_3/dense_2/kernel/v*
_output_shapes
:	?
*
dtype0
?
$Adam/module_wrapper_3/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*5
shared_name&$Adam/module_wrapper_3/dense_2/bias/v
?
8Adam/module_wrapper_3/dense_2/bias/v/Read/ReadVariableOpReadVariableOp$Adam/module_wrapper_3/dense_2/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
?2
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?2
value?2B?2 B?2
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
trainable_variables
	variables
regularization_losses
		keras_api


signatures
_
_module
trainable_variables
	variables
regularization_losses
	keras_api
_
_module
trainable_variables
	variables
regularization_losses
	keras_api
_
_module
trainable_variables
	variables
regularization_losses
	keras_api
_
_module
trainable_variables
	variables
regularization_losses
	keras_api
?
iter

 beta_1

!beta_2
	"decay
#learning_rate$mr%ms&mt'mu(mv)mw$vx%vy&vz'v{(v|)v}
*
$0
%1
&2
'3
(4
)5
*
$0
%1
&2
'3
(4
)5
 
?
*layer_metrics
trainable_variables
	variables
regularization_losses
+metrics
,layer_regularization_losses
-non_trainable_variables

.layers
 
R
/trainable_variables
0	variables
1regularization_losses
2	keras_api
 
 
 
?
3layer_metrics
trainable_variables
	variables
regularization_losses
4metrics
5layer_regularization_losses
6non_trainable_variables

7layers
h

$kernel
%bias
8trainable_variables
9	variables
:regularization_losses
;	keras_api

$0
%1

$0
%1
 
?
<layer_metrics
trainable_variables
	variables
regularization_losses
=metrics
>layer_regularization_losses
?non_trainable_variables

@layers
h

&kernel
'bias
Atrainable_variables
B	variables
Cregularization_losses
D	keras_api

&0
'1

&0
'1
 
?
Elayer_metrics
trainable_variables
	variables
regularization_losses
Fmetrics
Glayer_regularization_losses
Hnon_trainable_variables

Ilayers
h

(kernel
)bias
Jtrainable_variables
K	variables
Lregularization_losses
M	keras_api

(0
)1

(0
)1
 
?
Nlayer_metrics
trainable_variables
	variables
regularization_losses
Ometrics
Player_regularization_losses
Qnon_trainable_variables

Rlayers
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEmodule_wrapper_1/dense/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEmodule_wrapper_1/dense/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEmodule_wrapper_2/dense_1/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEmodule_wrapper_2/dense_1/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEmodule_wrapper_3/dense_2/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEmodule_wrapper_3/dense_2/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
 

S0
T1
 
 

0
1
2
3
 
 
 
?
Ulayer_metrics
/trainable_variables
0	variables
1regularization_losses
Vmetrics
Wlayer_regularization_losses
Xnon_trainable_variables

Ylayers
 
 
 
 
 

$0
%1

$0
%1
 
?
Zlayer_metrics
8trainable_variables
9	variables
:regularization_losses
[metrics
\layer_regularization_losses
]non_trainable_variables

^layers
 
 
 
 
 

&0
'1

&0
'1
 
?
_layer_metrics
Atrainable_variables
B	variables
Cregularization_losses
`metrics
alayer_regularization_losses
bnon_trainable_variables

clayers
 
 
 
 
 

(0
)1

(0
)1
 
?
dlayer_metrics
Jtrainable_variables
K	variables
Lregularization_losses
emetrics
flayer_regularization_losses
gnon_trainable_variables

hlayers
 
 
 
 
 
4
	itotal
	jcount
k	variables
l	keras_api
D
	mtotal
	ncount
o
_fn_kwargs
p	variables
q	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

i0
j1

k	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

m0
n1

p	variables
??
VARIABLE_VALUE$Adam/module_wrapper_1/dense/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/module_wrapper_1/dense/bias/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/module_wrapper_2/dense_1/kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/module_wrapper_2/dense_1/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/module_wrapper_3/dense_2/kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/module_wrapper_3/dense_2/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/module_wrapper_1/dense/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/module_wrapper_1/dense/bias/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/module_wrapper_2/dense_1/kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/module_wrapper_2/dense_1/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/module_wrapper_3/dense_2/kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/module_wrapper_3/dense_2/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
$serving_default_module_wrapper_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCall$serving_default_module_wrapper_inputmodule_wrapper_1/dense/kernelmodule_wrapper_1/dense/biasmodule_wrapper_2/dense_1/kernelmodule_wrapper_2/dense_1/biasmodule_wrapper_3/dense_2/kernelmodule_wrapper_3/dense_2/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_20559
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1module_wrapper_1/dense/kernel/Read/ReadVariableOp/module_wrapper_1/dense/bias/Read/ReadVariableOp3module_wrapper_2/dense_1/kernel/Read/ReadVariableOp1module_wrapper_2/dense_1/bias/Read/ReadVariableOp3module_wrapper_3/dense_2/kernel/Read/ReadVariableOp1module_wrapper_3/dense_2/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp8Adam/module_wrapper_1/dense/kernel/m/Read/ReadVariableOp6Adam/module_wrapper_1/dense/bias/m/Read/ReadVariableOp:Adam/module_wrapper_2/dense_1/kernel/m/Read/ReadVariableOp8Adam/module_wrapper_2/dense_1/bias/m/Read/ReadVariableOp:Adam/module_wrapper_3/dense_2/kernel/m/Read/ReadVariableOp8Adam/module_wrapper_3/dense_2/bias/m/Read/ReadVariableOp8Adam/module_wrapper_1/dense/kernel/v/Read/ReadVariableOp6Adam/module_wrapper_1/dense/bias/v/Read/ReadVariableOp:Adam/module_wrapper_2/dense_1/kernel/v/Read/ReadVariableOp8Adam/module_wrapper_2/dense_1/bias/v/Read/ReadVariableOp:Adam/module_wrapper_3/dense_2/kernel/v/Read/ReadVariableOp8Adam/module_wrapper_3/dense_2/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_20981
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratemodule_wrapper_1/dense/kernelmodule_wrapper_1/dense/biasmodule_wrapper_2/dense_1/kernelmodule_wrapper_2/dense_1/biasmodule_wrapper_3/dense_2/kernelmodule_wrapper_3/dense_2/biastotalcounttotal_1count_1$Adam/module_wrapper_1/dense/kernel/m"Adam/module_wrapper_1/dense/bias/m&Adam/module_wrapper_2/dense_1/kernel/m$Adam/module_wrapper_2/dense_1/bias/m&Adam/module_wrapper_3/dense_2/kernel/m$Adam/module_wrapper_3/dense_2/bias/m$Adam/module_wrapper_1/dense/kernel/v"Adam/module_wrapper_1/dense/bias/v&Adam/module_wrapper_2/dense_1/kernel/v$Adam/module_wrapper_2/dense_1/bias/v&Adam/module_wrapper_3/dense_2/kernel/v$Adam/module_wrapper_3/dense_2/bias/v*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_21072??
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_20462

inputs*
module_wrapper_1_20446:
??%
module_wrapper_1_20448:	?*
module_wrapper_2_20451:
??%
module_wrapper_2_20453:	?)
module_wrapper_3_20456:	?
$
module_wrapper_3_20458:

identity??(module_wrapper_1/StatefulPartitionedCall?(module_wrapper_2/StatefulPartitionedCall?(module_wrapper_3/StatefulPartitionedCall?
module_wrapper/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_204202 
module_wrapper/PartitionedCall?
(module_wrapper_1/StatefulPartitionedCallStatefulPartitionedCall'module_wrapper/PartitionedCall:output:0module_wrapper_1_20446module_wrapper_1_20448*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_203992*
(module_wrapper_1/StatefulPartitionedCall?
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_1/StatefulPartitionedCall:output:0module_wrapper_2_20451module_wrapper_2_20453*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_203692*
(module_wrapper_2/StatefulPartitionedCall?
(module_wrapper_3/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0module_wrapper_3_20456module_wrapper_3_20458*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_203392*
(module_wrapper_3/StatefulPartitionedCall?
IdentityIdentity1module_wrapper_3/StatefulPartitionedCall:output:0)^module_wrapper_1/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : 2T
(module_wrapper_1/StatefulPartitionedCall(module_wrapper_1/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_3/StatefulPartitionedCall(module_wrapper_3/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
J
.__inference_module_wrapper_layer_call_fn_20757

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_204202
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameargs_0
?+
?
E__inference_sequential_layer_call_and_return_conditional_losses_20613

inputsI
5module_wrapper_1_dense_matmul_readvariableop_resource:
??E
6module_wrapper_1_dense_biasadd_readvariableop_resource:	?K
7module_wrapper_2_dense_1_matmul_readvariableop_resource:
??G
8module_wrapper_2_dense_1_biasadd_readvariableop_resource:	?J
7module_wrapper_3_dense_2_matmul_readvariableop_resource:	?
F
8module_wrapper_3_dense_2_biasadd_readvariableop_resource:

identity??-module_wrapper_1/dense/BiasAdd/ReadVariableOp?,module_wrapper_1/dense/MatMul/ReadVariableOp?/module_wrapper_2/dense_1/BiasAdd/ReadVariableOp?.module_wrapper_2/dense_1/MatMul/ReadVariableOp?/module_wrapper_3/dense_2/BiasAdd/ReadVariableOp?.module_wrapper_3/dense_2/MatMul/ReadVariableOp?
module_wrapper/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  2
module_wrapper/flatten/Const?
module_wrapper/flatten/ReshapeReshapeinputs%module_wrapper/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2 
module_wrapper/flatten/Reshape?
,module_wrapper_1/dense/MatMul/ReadVariableOpReadVariableOp5module_wrapper_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,module_wrapper_1/dense/MatMul/ReadVariableOp?
module_wrapper_1/dense/MatMulMatMul'module_wrapper/flatten/Reshape:output:04module_wrapper_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
module_wrapper_1/dense/MatMul?
-module_wrapper_1/dense/BiasAdd/ReadVariableOpReadVariableOp6module_wrapper_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-module_wrapper_1/dense/BiasAdd/ReadVariableOp?
module_wrapper_1/dense/BiasAddBiasAdd'module_wrapper_1/dense/MatMul:product:05module_wrapper_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
module_wrapper_1/dense/BiasAdd?
module_wrapper_1/dense/ReluRelu'module_wrapper_1/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
module_wrapper_1/dense/Relu?
.module_wrapper_2/dense_1/MatMul/ReadVariableOpReadVariableOp7module_wrapper_2_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype020
.module_wrapper_2/dense_1/MatMul/ReadVariableOp?
module_wrapper_2/dense_1/MatMulMatMul)module_wrapper_1/dense/Relu:activations:06module_wrapper_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
module_wrapper_2/dense_1/MatMul?
/module_wrapper_2/dense_1/BiasAdd/ReadVariableOpReadVariableOp8module_wrapper_2_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/module_wrapper_2/dense_1/BiasAdd/ReadVariableOp?
 module_wrapper_2/dense_1/BiasAddBiasAdd)module_wrapper_2/dense_1/MatMul:product:07module_wrapper_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 module_wrapper_2/dense_1/BiasAdd?
module_wrapper_2/dense_1/ReluRelu)module_wrapper_2/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
module_wrapper_2/dense_1/Relu?
.module_wrapper_3/dense_2/MatMul/ReadVariableOpReadVariableOp7module_wrapper_3_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype020
.module_wrapper_3/dense_2/MatMul/ReadVariableOp?
module_wrapper_3/dense_2/MatMulMatMul+module_wrapper_2/dense_1/Relu:activations:06module_wrapper_3/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2!
module_wrapper_3/dense_2/MatMul?
/module_wrapper_3/dense_2/BiasAdd/ReadVariableOpReadVariableOp8module_wrapper_3_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype021
/module_wrapper_3/dense_2/BiasAdd/ReadVariableOp?
 module_wrapper_3/dense_2/BiasAddBiasAdd)module_wrapper_3/dense_2/MatMul:product:07module_wrapper_3/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2"
 module_wrapper_3/dense_2/BiasAdd?
 module_wrapper_3/dense_2/SoftmaxSoftmax)module_wrapper_3/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2"
 module_wrapper_3/dense_2/Softmax?
IdentityIdentity*module_wrapper_3/dense_2/Softmax:softmax:0.^module_wrapper_1/dense/BiasAdd/ReadVariableOp-^module_wrapper_1/dense/MatMul/ReadVariableOp0^module_wrapper_2/dense_1/BiasAdd/ReadVariableOp/^module_wrapper_2/dense_1/MatMul/ReadVariableOp0^module_wrapper_3/dense_2/BiasAdd/ReadVariableOp/^module_wrapper_3/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : 2^
-module_wrapper_1/dense/BiasAdd/ReadVariableOp-module_wrapper_1/dense/BiasAdd/ReadVariableOp2\
,module_wrapper_1/dense/MatMul/ReadVariableOp,module_wrapper_1/dense/MatMul/ReadVariableOp2b
/module_wrapper_2/dense_1/BiasAdd/ReadVariableOp/module_wrapper_2/dense_1/BiasAdd/ReadVariableOp2`
.module_wrapper_2/dense_1/MatMul/ReadVariableOp.module_wrapper_2/dense_1/MatMul/ReadVariableOp2b
/module_wrapper_3/dense_2/BiasAdd/ReadVariableOp/module_wrapper_3/dense_2/BiasAdd/ReadVariableOp2`
.module_wrapper_3/dense_2/MatMul/ReadVariableOp.module_wrapper_3/dense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_20768

args_08
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Relu?
IdentityIdentitydense/Relu:activations:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?A
?
__inference__traced_save_20981
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_module_wrapper_1_dense_kernel_read_readvariableop:
6savev2_module_wrapper_1_dense_bias_read_readvariableop>
:savev2_module_wrapper_2_dense_1_kernel_read_readvariableop<
8savev2_module_wrapper_2_dense_1_bias_read_readvariableop>
:savev2_module_wrapper_3_dense_2_kernel_read_readvariableop<
8savev2_module_wrapper_3_dense_2_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopC
?savev2_adam_module_wrapper_1_dense_kernel_m_read_readvariableopA
=savev2_adam_module_wrapper_1_dense_bias_m_read_readvariableopE
Asavev2_adam_module_wrapper_2_dense_1_kernel_m_read_readvariableopC
?savev2_adam_module_wrapper_2_dense_1_bias_m_read_readvariableopE
Asavev2_adam_module_wrapper_3_dense_2_kernel_m_read_readvariableopC
?savev2_adam_module_wrapper_3_dense_2_bias_m_read_readvariableopC
?savev2_adam_module_wrapper_1_dense_kernel_v_read_readvariableopA
=savev2_adam_module_wrapper_1_dense_bias_v_read_readvariableopE
Asavev2_adam_module_wrapper_2_dense_1_kernel_v_read_readvariableopC
?savev2_adam_module_wrapper_2_dense_1_bias_v_read_readvariableopE
Asavev2_adam_module_wrapper_3_dense_2_kernel_v_read_readvariableopC
?savev2_adam_module_wrapper_3_dense_2_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_module_wrapper_1_dense_kernel_read_readvariableop6savev2_module_wrapper_1_dense_bias_read_readvariableop:savev2_module_wrapper_2_dense_1_kernel_read_readvariableop8savev2_module_wrapper_2_dense_1_bias_read_readvariableop:savev2_module_wrapper_3_dense_2_kernel_read_readvariableop8savev2_module_wrapper_3_dense_2_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop?savev2_adam_module_wrapper_1_dense_kernel_m_read_readvariableop=savev2_adam_module_wrapper_1_dense_bias_m_read_readvariableopAsavev2_adam_module_wrapper_2_dense_1_kernel_m_read_readvariableop?savev2_adam_module_wrapper_2_dense_1_bias_m_read_readvariableopAsavev2_adam_module_wrapper_3_dense_2_kernel_m_read_readvariableop?savev2_adam_module_wrapper_3_dense_2_bias_m_read_readvariableop?savev2_adam_module_wrapper_1_dense_kernel_v_read_readvariableop=savev2_adam_module_wrapper_1_dense_bias_v_read_readvariableopAsavev2_adam_module_wrapper_2_dense_1_kernel_v_read_readvariableop?savev2_adam_module_wrapper_2_dense_1_bias_v_read_readvariableopAsavev2_adam_module_wrapper_3_dense_2_kernel_v_read_readvariableop?savev2_adam_module_wrapper_3_dense_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : :
??:?:
??:?:	?
:
: : : : :
??:?:
??:?:	?
:
:
??:?:
??:?:	?
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!	

_output_shapes	
:?:%
!

_output_shapes
:	?
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?
: 

_output_shapes
:
:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?
: 

_output_shapes
:
:

_output_shapes
: 
?
?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_20369

args_0:
&dense_1_matmul_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_1/Relu?
IdentityIdentitydense_1/Relu:activations:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
*__inference_sequential_layer_call_fn_20718

inputs
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?

	unknown_4:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_204622
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_20339

args_09
&dense_2_matmul_readvariableop_resource:	?
5
'dense_2_biasadd_readvariableop_resource:

identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulargs_0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_2/Softmax?
IdentityIdentitydense_2/Softmax:softmax:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
0__inference_module_wrapper_1_layer_call_fn_20797

args_0
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_203992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_20848

args_09
&dense_2_matmul_readvariableop_resource:	?
5
'dense_2_biasadd_readvariableop_resource:

identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulargs_0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_2/Softmax?
IdentityIdentitydense_2/Softmax:softmax:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
*__inference_sequential_layer_call_fn_20701

inputs
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?

	unknown_4:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_203012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
e
I__inference_module_wrapper_layer_call_and_return_conditional_losses_20747

args_0
identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  2
flatten/Const?
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshapem
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
0__inference_module_wrapper_2_layer_call_fn_20837

args_0
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_203692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
e
I__inference_module_wrapper_layer_call_and_return_conditional_losses_20420

args_0
identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  2
flatten/Const?
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshapem
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameargs_0
?2
?
 __inference__wrapped_model_20234
module_wrapper_inputT
@sequential_module_wrapper_1_dense_matmul_readvariableop_resource:
??P
Asequential_module_wrapper_1_dense_biasadd_readvariableop_resource:	?V
Bsequential_module_wrapper_2_dense_1_matmul_readvariableop_resource:
??R
Csequential_module_wrapper_2_dense_1_biasadd_readvariableop_resource:	?U
Bsequential_module_wrapper_3_dense_2_matmul_readvariableop_resource:	?
Q
Csequential_module_wrapper_3_dense_2_biasadd_readvariableop_resource:

identity??8sequential/module_wrapper_1/dense/BiasAdd/ReadVariableOp?7sequential/module_wrapper_1/dense/MatMul/ReadVariableOp?:sequential/module_wrapper_2/dense_1/BiasAdd/ReadVariableOp?9sequential/module_wrapper_2/dense_1/MatMul/ReadVariableOp?:sequential/module_wrapper_3/dense_2/BiasAdd/ReadVariableOp?9sequential/module_wrapper_3/dense_2/MatMul/ReadVariableOp?
'sequential/module_wrapper/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  2)
'sequential/module_wrapper/flatten/Const?
)sequential/module_wrapper/flatten/ReshapeReshapemodule_wrapper_input0sequential/module_wrapper/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2+
)sequential/module_wrapper/flatten/Reshape?
7sequential/module_wrapper_1/dense/MatMul/ReadVariableOpReadVariableOp@sequential_module_wrapper_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype029
7sequential/module_wrapper_1/dense/MatMul/ReadVariableOp?
(sequential/module_wrapper_1/dense/MatMulMatMul2sequential/module_wrapper/flatten/Reshape:output:0?sequential/module_wrapper_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(sequential/module_wrapper_1/dense/MatMul?
8sequential/module_wrapper_1/dense/BiasAdd/ReadVariableOpReadVariableOpAsequential_module_wrapper_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential/module_wrapper_1/dense/BiasAdd/ReadVariableOp?
)sequential/module_wrapper_1/dense/BiasAddBiasAdd2sequential/module_wrapper_1/dense/MatMul:product:0@sequential/module_wrapper_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)sequential/module_wrapper_1/dense/BiasAdd?
&sequential/module_wrapper_1/dense/ReluRelu2sequential/module_wrapper_1/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2(
&sequential/module_wrapper_1/dense/Relu?
9sequential/module_wrapper_2/dense_1/MatMul/ReadVariableOpReadVariableOpBsequential_module_wrapper_2_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02;
9sequential/module_wrapper_2/dense_1/MatMul/ReadVariableOp?
*sequential/module_wrapper_2/dense_1/MatMulMatMul4sequential/module_wrapper_1/dense/Relu:activations:0Asequential/module_wrapper_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2,
*sequential/module_wrapper_2/dense_1/MatMul?
:sequential/module_wrapper_2/dense_1/BiasAdd/ReadVariableOpReadVariableOpCsequential_module_wrapper_2_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02<
:sequential/module_wrapper_2/dense_1/BiasAdd/ReadVariableOp?
+sequential/module_wrapper_2/dense_1/BiasAddBiasAdd4sequential/module_wrapper_2/dense_1/MatMul:product:0Bsequential/module_wrapper_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+sequential/module_wrapper_2/dense_1/BiasAdd?
(sequential/module_wrapper_2/dense_1/ReluRelu4sequential/module_wrapper_2/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2*
(sequential/module_wrapper_2/dense_1/Relu?
9sequential/module_wrapper_3/dense_2/MatMul/ReadVariableOpReadVariableOpBsequential_module_wrapper_3_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02;
9sequential/module_wrapper_3/dense_2/MatMul/ReadVariableOp?
*sequential/module_wrapper_3/dense_2/MatMulMatMul6sequential/module_wrapper_2/dense_1/Relu:activations:0Asequential/module_wrapper_3/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2,
*sequential/module_wrapper_3/dense_2/MatMul?
:sequential/module_wrapper_3/dense_2/BiasAdd/ReadVariableOpReadVariableOpCsequential_module_wrapper_3_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02<
:sequential/module_wrapper_3/dense_2/BiasAdd/ReadVariableOp?
+sequential/module_wrapper_3/dense_2/BiasAddBiasAdd4sequential/module_wrapper_3/dense_2/MatMul:product:0Bsequential/module_wrapper_3/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2-
+sequential/module_wrapper_3/dense_2/BiasAdd?
+sequential/module_wrapper_3/dense_2/SoftmaxSoftmax4sequential/module_wrapper_3/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2-
+sequential/module_wrapper_3/dense_2/Softmax?
IdentityIdentity5sequential/module_wrapper_3/dense_2/Softmax:softmax:09^sequential/module_wrapper_1/dense/BiasAdd/ReadVariableOp8^sequential/module_wrapper_1/dense/MatMul/ReadVariableOp;^sequential/module_wrapper_2/dense_1/BiasAdd/ReadVariableOp:^sequential/module_wrapper_2/dense_1/MatMul/ReadVariableOp;^sequential/module_wrapper_3/dense_2/BiasAdd/ReadVariableOp:^sequential/module_wrapper_3/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : 2t
8sequential/module_wrapper_1/dense/BiasAdd/ReadVariableOp8sequential/module_wrapper_1/dense/BiasAdd/ReadVariableOp2r
7sequential/module_wrapper_1/dense/MatMul/ReadVariableOp7sequential/module_wrapper_1/dense/MatMul/ReadVariableOp2x
:sequential/module_wrapper_2/dense_1/BiasAdd/ReadVariableOp:sequential/module_wrapper_2/dense_1/BiasAdd/ReadVariableOp2v
9sequential/module_wrapper_2/dense_1/MatMul/ReadVariableOp9sequential/module_wrapper_2/dense_1/MatMul/ReadVariableOp2x
:sequential/module_wrapper_3/dense_2/BiasAdd/ReadVariableOp:sequential/module_wrapper_3/dense_2/BiasAdd/ReadVariableOp2v
9sequential/module_wrapper_3/dense_2/MatMul/ReadVariableOp9sequential/module_wrapper_3/dense_2/MatMul/ReadVariableOp:a ]
+
_output_shapes
:?????????
.
_user_specified_namemodule_wrapper_input
?
?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_20294

args_09
&dense_2_matmul_readvariableop_resource:	?
5
'dense_2_biasadd_readvariableop_resource:

identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulargs_0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_2/Softmax?
IdentityIdentitydense_2/Softmax:softmax:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_20779

args_08
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Relu?
IdentityIdentitydense/Relu:activations:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
0__inference_module_wrapper_1_layer_call_fn_20788

args_0
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_202602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
#__inference_signature_wrapper_20559
module_wrapper_input
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?

	unknown_4:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_202342
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
+
_output_shapes
:?????????
.
_user_specified_namemodule_wrapper_input
?
e
I__inference_module_wrapper_layer_call_and_return_conditional_losses_20741

args_0
identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  2
flatten/Const?
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshapem
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_20301

inputs*
module_wrapper_1_20261:
??%
module_wrapper_1_20263:	?*
module_wrapper_2_20278:
??%
module_wrapper_2_20280:	?)
module_wrapper_3_20295:	?
$
module_wrapper_3_20297:

identity??(module_wrapper_1/StatefulPartitionedCall?(module_wrapper_2/StatefulPartitionedCall?(module_wrapper_3/StatefulPartitionedCall?
module_wrapper/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_202472 
module_wrapper/PartitionedCall?
(module_wrapper_1/StatefulPartitionedCallStatefulPartitionedCall'module_wrapper/PartitionedCall:output:0module_wrapper_1_20261module_wrapper_1_20263*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_202602*
(module_wrapper_1/StatefulPartitionedCall?
(module_wrapper_2/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_1/StatefulPartitionedCall:output:0module_wrapper_2_20278module_wrapper_2_20280*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_202772*
(module_wrapper_2/StatefulPartitionedCall?
(module_wrapper_3/StatefulPartitionedCallStatefulPartitionedCall1module_wrapper_2/StatefulPartitionedCall:output:0module_wrapper_3_20295module_wrapper_3_20297*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_202942*
(module_wrapper_3/StatefulPartitionedCall?
IdentityIdentity1module_wrapper_3/StatefulPartitionedCall:output:0)^module_wrapper_1/StatefulPartitionedCall)^module_wrapper_2/StatefulPartitionedCall)^module_wrapper_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : 2T
(module_wrapper_1/StatefulPartitionedCall(module_wrapper_1/StatefulPartitionedCall2T
(module_wrapper_2/StatefulPartitionedCall(module_wrapper_2/StatefulPartitionedCall2T
(module_wrapper_3/StatefulPartitionedCall(module_wrapper_3/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_20819

args_0:
&dense_1_matmul_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_1/Relu?
IdentityIdentitydense_1/Relu:activations:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
*__inference_sequential_layer_call_fn_20684
module_wrapper_input
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?

	unknown_4:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_203012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
+
_output_shapes
:?????????
.
_user_specified_namemodule_wrapper_input
?
?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_20277

args_0:
&dense_1_matmul_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_1/Relu?
IdentityIdentitydense_1/Relu:activations:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
0__inference_module_wrapper_3_layer_call_fn_20877

args_0
unknown:	?

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_203392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_20399

args_08
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Relu?
IdentityIdentitydense/Relu:activations:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
0__inference_module_wrapper_3_layer_call_fn_20868

args_0
unknown:	?

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_202942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?+
?
E__inference_sequential_layer_call_and_return_conditional_losses_20667
module_wrapper_inputI
5module_wrapper_1_dense_matmul_readvariableop_resource:
??E
6module_wrapper_1_dense_biasadd_readvariableop_resource:	?K
7module_wrapper_2_dense_1_matmul_readvariableop_resource:
??G
8module_wrapper_2_dense_1_biasadd_readvariableop_resource:	?J
7module_wrapper_3_dense_2_matmul_readvariableop_resource:	?
F
8module_wrapper_3_dense_2_biasadd_readvariableop_resource:

identity??-module_wrapper_1/dense/BiasAdd/ReadVariableOp?,module_wrapper_1/dense/MatMul/ReadVariableOp?/module_wrapper_2/dense_1/BiasAdd/ReadVariableOp?.module_wrapper_2/dense_1/MatMul/ReadVariableOp?/module_wrapper_3/dense_2/BiasAdd/ReadVariableOp?.module_wrapper_3/dense_2/MatMul/ReadVariableOp?
module_wrapper/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  2
module_wrapper/flatten/Const?
module_wrapper/flatten/ReshapeReshapemodule_wrapper_input%module_wrapper/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2 
module_wrapper/flatten/Reshape?
,module_wrapper_1/dense/MatMul/ReadVariableOpReadVariableOp5module_wrapper_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,module_wrapper_1/dense/MatMul/ReadVariableOp?
module_wrapper_1/dense/MatMulMatMul'module_wrapper/flatten/Reshape:output:04module_wrapper_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
module_wrapper_1/dense/MatMul?
-module_wrapper_1/dense/BiasAdd/ReadVariableOpReadVariableOp6module_wrapper_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-module_wrapper_1/dense/BiasAdd/ReadVariableOp?
module_wrapper_1/dense/BiasAddBiasAdd'module_wrapper_1/dense/MatMul:product:05module_wrapper_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
module_wrapper_1/dense/BiasAdd?
module_wrapper_1/dense/ReluRelu'module_wrapper_1/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
module_wrapper_1/dense/Relu?
.module_wrapper_2/dense_1/MatMul/ReadVariableOpReadVariableOp7module_wrapper_2_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype020
.module_wrapper_2/dense_1/MatMul/ReadVariableOp?
module_wrapper_2/dense_1/MatMulMatMul)module_wrapper_1/dense/Relu:activations:06module_wrapper_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
module_wrapper_2/dense_1/MatMul?
/module_wrapper_2/dense_1/BiasAdd/ReadVariableOpReadVariableOp8module_wrapper_2_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/module_wrapper_2/dense_1/BiasAdd/ReadVariableOp?
 module_wrapper_2/dense_1/BiasAddBiasAdd)module_wrapper_2/dense_1/MatMul:product:07module_wrapper_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 module_wrapper_2/dense_1/BiasAdd?
module_wrapper_2/dense_1/ReluRelu)module_wrapper_2/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
module_wrapper_2/dense_1/Relu?
.module_wrapper_3/dense_2/MatMul/ReadVariableOpReadVariableOp7module_wrapper_3_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype020
.module_wrapper_3/dense_2/MatMul/ReadVariableOp?
module_wrapper_3/dense_2/MatMulMatMul+module_wrapper_2/dense_1/Relu:activations:06module_wrapper_3/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2!
module_wrapper_3/dense_2/MatMul?
/module_wrapper_3/dense_2/BiasAdd/ReadVariableOpReadVariableOp8module_wrapper_3_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype021
/module_wrapper_3/dense_2/BiasAdd/ReadVariableOp?
 module_wrapper_3/dense_2/BiasAddBiasAdd)module_wrapper_3/dense_2/MatMul:product:07module_wrapper_3/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2"
 module_wrapper_3/dense_2/BiasAdd?
 module_wrapper_3/dense_2/SoftmaxSoftmax)module_wrapper_3/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2"
 module_wrapper_3/dense_2/Softmax?
IdentityIdentity*module_wrapper_3/dense_2/Softmax:softmax:0.^module_wrapper_1/dense/BiasAdd/ReadVariableOp-^module_wrapper_1/dense/MatMul/ReadVariableOp0^module_wrapper_2/dense_1/BiasAdd/ReadVariableOp/^module_wrapper_2/dense_1/MatMul/ReadVariableOp0^module_wrapper_3/dense_2/BiasAdd/ReadVariableOp/^module_wrapper_3/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : 2^
-module_wrapper_1/dense/BiasAdd/ReadVariableOp-module_wrapper_1/dense/BiasAdd/ReadVariableOp2\
,module_wrapper_1/dense/MatMul/ReadVariableOp,module_wrapper_1/dense/MatMul/ReadVariableOp2b
/module_wrapper_2/dense_1/BiasAdd/ReadVariableOp/module_wrapper_2/dense_1/BiasAdd/ReadVariableOp2`
.module_wrapper_2/dense_1/MatMul/ReadVariableOp.module_wrapper_2/dense_1/MatMul/ReadVariableOp2b
/module_wrapper_3/dense_2/BiasAdd/ReadVariableOp/module_wrapper_3/dense_2/BiasAdd/ReadVariableOp2`
.module_wrapper_3/dense_2/MatMul/ReadVariableOp.module_wrapper_3/dense_2/MatMul/ReadVariableOp:a ]
+
_output_shapes
:?????????
.
_user_specified_namemodule_wrapper_input
?
e
I__inference_module_wrapper_layer_call_and_return_conditional_losses_20247

args_0
identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  2
flatten/Const?
flatten/ReshapeReshapeargs_0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshapem
IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameargs_0
?
?
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_20260

args_08
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulargs_0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Relu?
IdentityIdentitydense/Relu:activations:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
?
*__inference_sequential_layer_call_fn_20735
module_wrapper_input
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?

	unknown_4:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmodule_wrapper_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_204622
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
+
_output_shapes
:?????????
.
_user_specified_namemodule_wrapper_input
?
?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_20808

args_0:
&dense_1_matmul_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?
identity??dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulargs_0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_1/Relu?
IdentityIdentitydense_1/Relu:activations:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?
J
.__inference_module_wrapper_layer_call_fn_20752

args_0
identity?
PartitionedCallPartitionedCallargs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_module_wrapper_layer_call_and_return_conditional_losses_202472
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameargs_0
?+
?
E__inference_sequential_layer_call_and_return_conditional_losses_20640
module_wrapper_inputI
5module_wrapper_1_dense_matmul_readvariableop_resource:
??E
6module_wrapper_1_dense_biasadd_readvariableop_resource:	?K
7module_wrapper_2_dense_1_matmul_readvariableop_resource:
??G
8module_wrapper_2_dense_1_biasadd_readvariableop_resource:	?J
7module_wrapper_3_dense_2_matmul_readvariableop_resource:	?
F
8module_wrapper_3_dense_2_biasadd_readvariableop_resource:

identity??-module_wrapper_1/dense/BiasAdd/ReadVariableOp?,module_wrapper_1/dense/MatMul/ReadVariableOp?/module_wrapper_2/dense_1/BiasAdd/ReadVariableOp?.module_wrapper_2/dense_1/MatMul/ReadVariableOp?/module_wrapper_3/dense_2/BiasAdd/ReadVariableOp?.module_wrapper_3/dense_2/MatMul/ReadVariableOp?
module_wrapper/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  2
module_wrapper/flatten/Const?
module_wrapper/flatten/ReshapeReshapemodule_wrapper_input%module_wrapper/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2 
module_wrapper/flatten/Reshape?
,module_wrapper_1/dense/MatMul/ReadVariableOpReadVariableOp5module_wrapper_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,module_wrapper_1/dense/MatMul/ReadVariableOp?
module_wrapper_1/dense/MatMulMatMul'module_wrapper/flatten/Reshape:output:04module_wrapper_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
module_wrapper_1/dense/MatMul?
-module_wrapper_1/dense/BiasAdd/ReadVariableOpReadVariableOp6module_wrapper_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-module_wrapper_1/dense/BiasAdd/ReadVariableOp?
module_wrapper_1/dense/BiasAddBiasAdd'module_wrapper_1/dense/MatMul:product:05module_wrapper_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
module_wrapper_1/dense/BiasAdd?
module_wrapper_1/dense/ReluRelu'module_wrapper_1/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
module_wrapper_1/dense/Relu?
.module_wrapper_2/dense_1/MatMul/ReadVariableOpReadVariableOp7module_wrapper_2_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype020
.module_wrapper_2/dense_1/MatMul/ReadVariableOp?
module_wrapper_2/dense_1/MatMulMatMul)module_wrapper_1/dense/Relu:activations:06module_wrapper_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
module_wrapper_2/dense_1/MatMul?
/module_wrapper_2/dense_1/BiasAdd/ReadVariableOpReadVariableOp8module_wrapper_2_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/module_wrapper_2/dense_1/BiasAdd/ReadVariableOp?
 module_wrapper_2/dense_1/BiasAddBiasAdd)module_wrapper_2/dense_1/MatMul:product:07module_wrapper_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 module_wrapper_2/dense_1/BiasAdd?
module_wrapper_2/dense_1/ReluRelu)module_wrapper_2/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
module_wrapper_2/dense_1/Relu?
.module_wrapper_3/dense_2/MatMul/ReadVariableOpReadVariableOp7module_wrapper_3_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype020
.module_wrapper_3/dense_2/MatMul/ReadVariableOp?
module_wrapper_3/dense_2/MatMulMatMul+module_wrapper_2/dense_1/Relu:activations:06module_wrapper_3/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2!
module_wrapper_3/dense_2/MatMul?
/module_wrapper_3/dense_2/BiasAdd/ReadVariableOpReadVariableOp8module_wrapper_3_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype021
/module_wrapper_3/dense_2/BiasAdd/ReadVariableOp?
 module_wrapper_3/dense_2/BiasAddBiasAdd)module_wrapper_3/dense_2/MatMul:product:07module_wrapper_3/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2"
 module_wrapper_3/dense_2/BiasAdd?
 module_wrapper_3/dense_2/SoftmaxSoftmax)module_wrapper_3/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2"
 module_wrapper_3/dense_2/Softmax?
IdentityIdentity*module_wrapper_3/dense_2/Softmax:softmax:0.^module_wrapper_1/dense/BiasAdd/ReadVariableOp-^module_wrapper_1/dense/MatMul/ReadVariableOp0^module_wrapper_2/dense_1/BiasAdd/ReadVariableOp/^module_wrapper_2/dense_1/MatMul/ReadVariableOp0^module_wrapper_3/dense_2/BiasAdd/ReadVariableOp/^module_wrapper_3/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : 2^
-module_wrapper_1/dense/BiasAdd/ReadVariableOp-module_wrapper_1/dense/BiasAdd/ReadVariableOp2\
,module_wrapper_1/dense/MatMul/ReadVariableOp,module_wrapper_1/dense/MatMul/ReadVariableOp2b
/module_wrapper_2/dense_1/BiasAdd/ReadVariableOp/module_wrapper_2/dense_1/BiasAdd/ReadVariableOp2`
.module_wrapper_2/dense_1/MatMul/ReadVariableOp.module_wrapper_2/dense_1/MatMul/ReadVariableOp2b
/module_wrapper_3/dense_2/BiasAdd/ReadVariableOp/module_wrapper_3/dense_2/BiasAdd/ReadVariableOp2`
.module_wrapper_3/dense_2/MatMul/ReadVariableOp.module_wrapper_3/dense_2/MatMul/ReadVariableOp:a ]
+
_output_shapes
:?????????
.
_user_specified_namemodule_wrapper_input
?
?
0__inference_module_wrapper_2_layer_call_fn_20828

args_0
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallargs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_202772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?x
?
!__inference__traced_restore_21072
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: D
0assignvariableop_5_module_wrapper_1_dense_kernel:
??=
.assignvariableop_6_module_wrapper_1_dense_bias:	?F
2assignvariableop_7_module_wrapper_2_dense_1_kernel:
???
0assignvariableop_8_module_wrapper_2_dense_1_bias:	?E
2assignvariableop_9_module_wrapper_3_dense_2_kernel:	?
?
1assignvariableop_10_module_wrapper_3_dense_2_bias:
#
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: L
8assignvariableop_15_adam_module_wrapper_1_dense_kernel_m:
??E
6assignvariableop_16_adam_module_wrapper_1_dense_bias_m:	?N
:assignvariableop_17_adam_module_wrapper_2_dense_1_kernel_m:
??G
8assignvariableop_18_adam_module_wrapper_2_dense_1_bias_m:	?M
:assignvariableop_19_adam_module_wrapper_3_dense_2_kernel_m:	?
F
8assignvariableop_20_adam_module_wrapper_3_dense_2_bias_m:
L
8assignvariableop_21_adam_module_wrapper_1_dense_kernel_v:
??E
6assignvariableop_22_adam_module_wrapper_1_dense_bias_v:	?N
:assignvariableop_23_adam_module_wrapper_2_dense_1_kernel_v:
??G
8assignvariableop_24_adam_module_wrapper_2_dense_1_bias_v:	?M
:assignvariableop_25_adam_module_wrapper_3_dense_2_kernel_v:	?
F
8assignvariableop_26_adam_module_wrapper_3_dense_2_bias_v:

identity_28??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp0assignvariableop_5_module_wrapper_1_dense_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp.assignvariableop_6_module_wrapper_1_dense_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp2assignvariableop_7_module_wrapper_2_dense_1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_module_wrapper_2_dense_1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp2assignvariableop_9_module_wrapper_3_dense_2_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_module_wrapper_3_dense_2_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp8assignvariableop_15_adam_module_wrapper_1_dense_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp6assignvariableop_16_adam_module_wrapper_1_dense_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp:assignvariableop_17_adam_module_wrapper_2_dense_1_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp8assignvariableop_18_adam_module_wrapper_2_dense_1_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp:assignvariableop_19_adam_module_wrapper_3_dense_2_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_module_wrapper_3_dense_2_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp8assignvariableop_21_adam_module_wrapper_1_dense_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_module_wrapper_1_dense_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp:assignvariableop_23_adam_module_wrapper_2_dense_1_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp8assignvariableop_24_adam_module_wrapper_2_dense_1_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp:assignvariableop_25_adam_module_wrapper_3_dense_2_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_module_wrapper_3_dense_2_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27?
Identity_28IdentityIdentity_27:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_28"#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_20859

args_09
&dense_2_matmul_readvariableop_resource:	?
5
'dense_2_biasadd_readvariableop_resource:

identity??dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulargs_0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_2/Softmax?
IdentityIdentitydense_2/Softmax:softmax:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameargs_0
?+
?
E__inference_sequential_layer_call_and_return_conditional_losses_20586

inputsI
5module_wrapper_1_dense_matmul_readvariableop_resource:
??E
6module_wrapper_1_dense_biasadd_readvariableop_resource:	?K
7module_wrapper_2_dense_1_matmul_readvariableop_resource:
??G
8module_wrapper_2_dense_1_biasadd_readvariableop_resource:	?J
7module_wrapper_3_dense_2_matmul_readvariableop_resource:	?
F
8module_wrapper_3_dense_2_biasadd_readvariableop_resource:

identity??-module_wrapper_1/dense/BiasAdd/ReadVariableOp?,module_wrapper_1/dense/MatMul/ReadVariableOp?/module_wrapper_2/dense_1/BiasAdd/ReadVariableOp?.module_wrapper_2/dense_1/MatMul/ReadVariableOp?/module_wrapper_3/dense_2/BiasAdd/ReadVariableOp?.module_wrapper_3/dense_2/MatMul/ReadVariableOp?
module_wrapper/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????  2
module_wrapper/flatten/Const?
module_wrapper/flatten/ReshapeReshapeinputs%module_wrapper/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2 
module_wrapper/flatten/Reshape?
,module_wrapper_1/dense/MatMul/ReadVariableOpReadVariableOp5module_wrapper_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,module_wrapper_1/dense/MatMul/ReadVariableOp?
module_wrapper_1/dense/MatMulMatMul'module_wrapper/flatten/Reshape:output:04module_wrapper_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
module_wrapper_1/dense/MatMul?
-module_wrapper_1/dense/BiasAdd/ReadVariableOpReadVariableOp6module_wrapper_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-module_wrapper_1/dense/BiasAdd/ReadVariableOp?
module_wrapper_1/dense/BiasAddBiasAdd'module_wrapper_1/dense/MatMul:product:05module_wrapper_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
module_wrapper_1/dense/BiasAdd?
module_wrapper_1/dense/ReluRelu'module_wrapper_1/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
module_wrapper_1/dense/Relu?
.module_wrapper_2/dense_1/MatMul/ReadVariableOpReadVariableOp7module_wrapper_2_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype020
.module_wrapper_2/dense_1/MatMul/ReadVariableOp?
module_wrapper_2/dense_1/MatMulMatMul)module_wrapper_1/dense/Relu:activations:06module_wrapper_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
module_wrapper_2/dense_1/MatMul?
/module_wrapper_2/dense_1/BiasAdd/ReadVariableOpReadVariableOp8module_wrapper_2_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/module_wrapper_2/dense_1/BiasAdd/ReadVariableOp?
 module_wrapper_2/dense_1/BiasAddBiasAdd)module_wrapper_2/dense_1/MatMul:product:07module_wrapper_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 module_wrapper_2/dense_1/BiasAdd?
module_wrapper_2/dense_1/ReluRelu)module_wrapper_2/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
module_wrapper_2/dense_1/Relu?
.module_wrapper_3/dense_2/MatMul/ReadVariableOpReadVariableOp7module_wrapper_3_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype020
.module_wrapper_3/dense_2/MatMul/ReadVariableOp?
module_wrapper_3/dense_2/MatMulMatMul+module_wrapper_2/dense_1/Relu:activations:06module_wrapper_3/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2!
module_wrapper_3/dense_2/MatMul?
/module_wrapper_3/dense_2/BiasAdd/ReadVariableOpReadVariableOp8module_wrapper_3_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype021
/module_wrapper_3/dense_2/BiasAdd/ReadVariableOp?
 module_wrapper_3/dense_2/BiasAddBiasAdd)module_wrapper_3/dense_2/MatMul:product:07module_wrapper_3/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2"
 module_wrapper_3/dense_2/BiasAdd?
 module_wrapper_3/dense_2/SoftmaxSoftmax)module_wrapper_3/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2"
 module_wrapper_3/dense_2/Softmax?
IdentityIdentity*module_wrapper_3/dense_2/Softmax:softmax:0.^module_wrapper_1/dense/BiasAdd/ReadVariableOp-^module_wrapper_1/dense/MatMul/ReadVariableOp0^module_wrapper_2/dense_1/BiasAdd/ReadVariableOp/^module_wrapper_2/dense_1/MatMul/ReadVariableOp0^module_wrapper_3/dense_2/BiasAdd/ReadVariableOp/^module_wrapper_3/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : 2^
-module_wrapper_1/dense/BiasAdd/ReadVariableOp-module_wrapper_1/dense/BiasAdd/ReadVariableOp2\
,module_wrapper_1/dense/MatMul/ReadVariableOp,module_wrapper_1/dense/MatMul/ReadVariableOp2b
/module_wrapper_2/dense_1/BiasAdd/ReadVariableOp/module_wrapper_2/dense_1/BiasAdd/ReadVariableOp2`
.module_wrapper_2/dense_1/MatMul/ReadVariableOp.module_wrapper_2/dense_1/MatMul/ReadVariableOp2b
/module_wrapper_3/dense_2/BiasAdd/ReadVariableOp/module_wrapper_3/dense_2/BiasAdd/ReadVariableOp2`
.module_wrapper_3/dense_2/MatMul/ReadVariableOp.module_wrapper_3/dense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
Y
module_wrapper_inputA
&serving_default_module_wrapper_input:0?????????D
module_wrapper_30
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
trainable_variables
	variables
regularization_losses
		keras_api


signatures
*~&call_and_return_all_conditional_losses
__call__
?_default_save_signature"?
_tf_keras_sequential?{"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "module_wrapper_input"}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}, {"class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}]}, "shared_object_id": 1, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [32, 28, 28]}, "float32", "module_wrapper_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential"}, "training_config": {"loss": "sparse_categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 2}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
_module
trainable_variables
	variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "module_wrapper", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
_module
trainable_variables
	variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "module_wrapper_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
_module
trainable_variables
	variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "module_wrapper_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
_module
trainable_variables
	variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "module_wrapper_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ModuleWrapper", "config": {"layer was saved without config": true}}
?
iter

 beta_1

!beta_2
	"decay
#learning_rate$mr%ms&mt'mu(mv)mw$vx%vy&vz'v{(v|)v}"
	optimizer
J
$0
%1
&2
'3
(4
)5"
trackable_list_wrapper
J
$0
%1
&2
'3
(4
)5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
*layer_metrics
trainable_variables
	variables
regularization_losses
+metrics
,layer_regularization_losses
-non_trainable_variables

.layers
__call__
?_default_save_signature
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
/trainable_variables
0	variables
1regularization_losses
2	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
3layer_metrics
trainable_variables
	variables
regularization_losses
4metrics
5layer_regularization_losses
6non_trainable_variables

7layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

$kernel
%bias
8trainable_variables
9	variables
:regularization_losses
;	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 784}}}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 784]}}
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
<layer_metrics
trainable_variables
	variables
regularization_losses
=metrics
>layer_regularization_losses
?non_trainable_variables

@layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

&kernel
'bias
Atrainable_variables
B	variables
Cregularization_losses
D	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 128]}}
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Elayer_metrics
trainable_variables
	variables
regularization_losses
Fmetrics
Glayer_regularization_losses
Hnon_trainable_variables

Ilayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

(kernel
)bias
Jtrainable_variables
K	variables
Lregularization_losses
M	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 128]}}
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Nlayer_metrics
trainable_variables
	variables
regularization_losses
Ometrics
Player_regularization_losses
Qnon_trainable_variables

Rlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
1:/
??2module_wrapper_1/dense/kernel
*:(?2module_wrapper_1/dense/bias
3:1
??2module_wrapper_2/dense_1/kernel
,:*?2module_wrapper_2/dense_1/bias
2:0	?
2module_wrapper_3/dense_2/kernel
+:)
2module_wrapper_3/dense_2/bias
 "
trackable_dict_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Ulayer_metrics
/trainable_variables
0	variables
1regularization_losses
Vmetrics
Wlayer_regularization_losses
Xnon_trainable_variables

Ylayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Zlayer_metrics
8trainable_variables
9	variables
:regularization_losses
[metrics
\layer_regularization_losses
]non_trainable_variables

^layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
_layer_metrics
Atrainable_variables
B	variables
Cregularization_losses
`metrics
alayer_regularization_losses
bnon_trainable_variables

clayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
dlayer_metrics
Jtrainable_variables
K	variables
Lregularization_losses
emetrics
flayer_regularization_losses
gnon_trainable_variables

hlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	itotal
	jcount
k	variables
l	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 3}
?
	mtotal
	ncount
o
_fn_kwargs
p	variables
q	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 2}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
.
i0
j1"
trackable_list_wrapper
-
k	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
m0
n1"
trackable_list_wrapper
-
p	variables"
_generic_user_object
6:4
??2$Adam/module_wrapper_1/dense/kernel/m
/:-?2"Adam/module_wrapper_1/dense/bias/m
8:6
??2&Adam/module_wrapper_2/dense_1/kernel/m
1:/?2$Adam/module_wrapper_2/dense_1/bias/m
7:5	?
2&Adam/module_wrapper_3/dense_2/kernel/m
0:.
2$Adam/module_wrapper_3/dense_2/bias/m
6:4
??2$Adam/module_wrapper_1/dense/kernel/v
/:-?2"Adam/module_wrapper_1/dense/bias/v
8:6
??2&Adam/module_wrapper_2/dense_1/kernel/v
1:/?2$Adam/module_wrapper_2/dense_1/bias/v
7:5	?
2&Adam/module_wrapper_3/dense_2/kernel/v
0:.
2$Adam/module_wrapper_3/dense_2/bias/v
?2?
E__inference_sequential_layer_call_and_return_conditional_losses_20586
E__inference_sequential_layer_call_and_return_conditional_losses_20613
E__inference_sequential_layer_call_and_return_conditional_losses_20640
E__inference_sequential_layer_call_and_return_conditional_losses_20667?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_sequential_layer_call_fn_20684
*__inference_sequential_layer_call_fn_20701
*__inference_sequential_layer_call_fn_20718
*__inference_sequential_layer_call_fn_20735?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
 __inference__wrapped_model_20234?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/
module_wrapper_input?????????
?2?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_20741
I__inference_module_wrapper_layer_call_and_return_conditional_losses_20747?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
.__inference_module_wrapper_layer_call_fn_20752
.__inference_module_wrapper_layer_call_fn_20757?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_20768
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_20779?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_1_layer_call_fn_20788
0__inference_module_wrapper_1_layer_call_fn_20797?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_20808
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_20819?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_2_layer_call_fn_20828
0__inference_module_wrapper_2_layer_call_fn_20837?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_20848
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_20859?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
0__inference_module_wrapper_3_layer_call_fn_20868
0__inference_module_wrapper_3_layer_call_fn_20877?
???
FullArgSpec
args?
jself
varargsjargs
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?B?
#__inference_signature_wrapper_20559module_wrapper_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
 __inference__wrapped_model_20234?$%&'()A?>
7?4
2?/
module_wrapper_input?????????
? "C?@
>
module_wrapper_3*?'
module_wrapper_3?????????
?
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_20768n$%@?=
&?#
!?
args_0??????????
?

trainingp "&?#
?
0??????????
? ?
K__inference_module_wrapper_1_layer_call_and_return_conditional_losses_20779n$%@?=
&?#
!?
args_0??????????
?

trainingp"&?#
?
0??????????
? ?
0__inference_module_wrapper_1_layer_call_fn_20788a$%@?=
&?#
!?
args_0??????????
?

trainingp "????????????
0__inference_module_wrapper_1_layer_call_fn_20797a$%@?=
&?#
!?
args_0??????????
?

trainingp"????????????
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_20808n&'@?=
&?#
!?
args_0??????????
?

trainingp "&?#
?
0??????????
? ?
K__inference_module_wrapper_2_layer_call_and_return_conditional_losses_20819n&'@?=
&?#
!?
args_0??????????
?

trainingp"&?#
?
0??????????
? ?
0__inference_module_wrapper_2_layer_call_fn_20828a&'@?=
&?#
!?
args_0??????????
?

trainingp "????????????
0__inference_module_wrapper_2_layer_call_fn_20837a&'@?=
&?#
!?
args_0??????????
?

trainingp"????????????
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_20848m()@?=
&?#
!?
args_0??????????
?

trainingp "%?"
?
0?????????

? ?
K__inference_module_wrapper_3_layer_call_and_return_conditional_losses_20859m()@?=
&?#
!?
args_0??????????
?

trainingp"%?"
?
0?????????

? ?
0__inference_module_wrapper_3_layer_call_fn_20868`()@?=
&?#
!?
args_0??????????
?

trainingp "??????????
?
0__inference_module_wrapper_3_layer_call_fn_20877`()@?=
&?#
!?
args_0??????????
?

trainingp"??????????
?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_20741mC?@
)?&
$?!
args_0?????????
?

trainingp "&?#
?
0??????????
? ?
I__inference_module_wrapper_layer_call_and_return_conditional_losses_20747mC?@
)?&
$?!
args_0?????????
?

trainingp"&?#
?
0??????????
? ?
.__inference_module_wrapper_layer_call_fn_20752`C?@
)?&
$?!
args_0?????????
?

trainingp "????????????
.__inference_module_wrapper_layer_call_fn_20757`C?@
)?&
$?!
args_0?????????
?

trainingp"????????????
E__inference_sequential_layer_call_and_return_conditional_losses_20586l$%&'();?8
1?.
$?!
inputs?????????
p 

 
? "%?"
?
0?????????

? ?
E__inference_sequential_layer_call_and_return_conditional_losses_20613l$%&'();?8
1?.
$?!
inputs?????????
p

 
? "%?"
?
0?????????

? ?
E__inference_sequential_layer_call_and_return_conditional_losses_20640z$%&'()I?F
??<
2?/
module_wrapper_input?????????
p 

 
? "%?"
?
0?????????

? ?
E__inference_sequential_layer_call_and_return_conditional_losses_20667z$%&'()I?F
??<
2?/
module_wrapper_input?????????
p

 
? "%?"
?
0?????????

? ?
*__inference_sequential_layer_call_fn_20684m$%&'()I?F
??<
2?/
module_wrapper_input?????????
p 

 
? "??????????
?
*__inference_sequential_layer_call_fn_20701_$%&'();?8
1?.
$?!
inputs?????????
p 

 
? "??????????
?
*__inference_sequential_layer_call_fn_20718_$%&'();?8
1?.
$?!
inputs?????????
p

 
? "??????????
?
*__inference_sequential_layer_call_fn_20735m$%&'()I?F
??<
2?/
module_wrapper_input?????????
p

 
? "??????????
?
#__inference_signature_wrapper_20559?$%&'()Y?V
? 
O?L
J
module_wrapper_input2?/
module_wrapper_input?????????"C?@
>
module_wrapper_3*?'
module_wrapper_3?????????
