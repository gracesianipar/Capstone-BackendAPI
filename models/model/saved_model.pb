��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
�
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	"
grad_abool( "
grad_bbool( 
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.17.12v2.17.0-18-g3c92ac03cab8��
�
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *6

debug_name(&batch_normalization_3/moving_variance/*
dtype0*
shape:`*6
shared_name'%batch_normalization_3/moving_variance
�
9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes
:`*
dtype0
�
#Variable/Initializer/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_class
loc:@Variable*
_output_shapes
:`*
dtype0
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape:`*
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
_
Variable/AssignAssignVariableOpVariable#Variable/Initializer/ReadVariableOp*
dtype0
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:`*
dtype0
�
!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *2

debug_name$"batch_normalization_3/moving_mean/*
dtype0*
shape:`*2
shared_name#!batch_normalization_3/moving_mean
�
5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes
:`*
dtype0
�
%Variable_1/Initializer/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_class
loc:@Variable_1*
_output_shapes
:`*
dtype0
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape:`*
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
e
Variable_1/AssignAssignVariableOp
Variable_1%Variable_1/Initializer/ReadVariableOp*
dtype0
e
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:`*
dtype0
�
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *6

debug_name(&batch_normalization_2/moving_variance/*
dtype0*
shape: *6
shared_name'%batch_normalization_2/moving_variance
�
9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
: *
dtype0
�
%Variable_2/Initializer/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_class
loc:@Variable_2*
_output_shapes
: *
dtype0
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0*
shape: *
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
e
Variable_2/AssignAssignVariableOp
Variable_2%Variable_2/Initializer/ReadVariableOp*
dtype0
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
: *
dtype0
�
!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *2

debug_name$"batch_normalization_2/moving_mean/*
dtype0*
shape: *2
shared_name#!batch_normalization_2/moving_mean
�
5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
: *
dtype0
�
%Variable_3/Initializer/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_class
loc:@Variable_3*
_output_shapes
: *
dtype0
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape: *
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
e
Variable_3/AssignAssignVariableOp
Variable_3%Variable_3/Initializer/ReadVariableOp*
dtype0
e
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes
: *
dtype0
�
dense_5/biasVarHandleOp*
_output_shapes
: *

debug_namedense_5/bias/*
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
�
%Variable_4/Initializer/ReadVariableOpReadVariableOpdense_5/bias*
_class
loc:@Variable_4*
_output_shapes
:*
dtype0
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *

debug_nameVariable_4/*
dtype0*
shape:*
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
e
Variable_4/AssignAssignVariableOp
Variable_4%Variable_4/Initializer/ReadVariableOp*
dtype0
e
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes
:*
dtype0
�
dense_5/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_5/kernel/*
dtype0*
shape
:`*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:`*
dtype0
�
%Variable_5/Initializer/ReadVariableOpReadVariableOpdense_5/kernel*
_class
loc:@Variable_5*
_output_shapes

:`*
dtype0
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape
:`*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
e
Variable_5/AssignAssignVariableOp
Variable_5%Variable_5/Initializer/ReadVariableOp*
dtype0
i
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes

:`*
dtype0
�
batch_normalization_3/betaVarHandleOp*
_output_shapes
: *+

debug_namebatch_normalization_3/beta/*
dtype0*
shape:`*+
shared_namebatch_normalization_3/beta
�
.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes
:`*
dtype0
�
%Variable_6/Initializer/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_class
loc:@Variable_6*
_output_shapes
:`*
dtype0
�

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *

debug_nameVariable_6/*
dtype0*
shape:`*
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
e
Variable_6/AssignAssignVariableOp
Variable_6%Variable_6/Initializer/ReadVariableOp*
dtype0
e
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes
:`*
dtype0
�
batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_3/gamma/*
dtype0*
shape:`*,
shared_namebatch_normalization_3/gamma
�
/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes
:`*
dtype0
�
%Variable_7/Initializer/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_class
loc:@Variable_7*
_output_shapes
:`*
dtype0
�

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *

debug_nameVariable_7/*
dtype0*
shape:`*
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
e
Variable_7/AssignAssignVariableOp
Variable_7%Variable_7/Initializer/ReadVariableOp*
dtype0
e
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes
:`*
dtype0
�
dense_4/biasVarHandleOp*
_output_shapes
: *

debug_namedense_4/bias/*
dtype0*
shape:`*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:`*
dtype0
�
%Variable_8/Initializer/ReadVariableOpReadVariableOpdense_4/bias*
_class
loc:@Variable_8*
_output_shapes
:`*
dtype0
�

Variable_8VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *

debug_nameVariable_8/*
dtype0*
shape:`*
shared_name
Variable_8
e
+Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_8*
_output_shapes
: 
e
Variable_8/AssignAssignVariableOp
Variable_8%Variable_8/Initializer/ReadVariableOp*
dtype0
e
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*
_output_shapes
:`*
dtype0
�
dense_4/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_4/kernel/*
dtype0*
shape
: `*
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

: `*
dtype0
�
%Variable_9/Initializer/ReadVariableOpReadVariableOpdense_4/kernel*
_class
loc:@Variable_9*
_output_shapes

: `*
dtype0
�

Variable_9VarHandleOp*
_class
loc:@Variable_9*
_output_shapes
: *

debug_nameVariable_9/*
dtype0*
shape
: `*
shared_name
Variable_9
e
+Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_9*
_output_shapes
: 
e
Variable_9/AssignAssignVariableOp
Variable_9%Variable_9/Initializer/ReadVariableOp*
dtype0
i
Variable_9/Read/ReadVariableOpReadVariableOp
Variable_9*
_output_shapes

: `*
dtype0
�
batch_normalization_2/betaVarHandleOp*
_output_shapes
: *+

debug_namebatch_normalization_2/beta/*
dtype0*
shape: *+
shared_namebatch_normalization_2/beta
�
.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes
: *
dtype0
�
&Variable_10/Initializer/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_class
loc:@Variable_10*
_output_shapes
: *
dtype0
�
Variable_10VarHandleOp*
_class
loc:@Variable_10*
_output_shapes
: *

debug_nameVariable_10/*
dtype0*
shape: *
shared_nameVariable_10
g
,Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_10*
_output_shapes
: 
h
Variable_10/AssignAssignVariableOpVariable_10&Variable_10/Initializer/ReadVariableOp*
dtype0
g
Variable_10/Read/ReadVariableOpReadVariableOpVariable_10*
_output_shapes
: *
dtype0
�
batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_2/gamma/*
dtype0*
shape: *,
shared_namebatch_normalization_2/gamma
�
/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
: *
dtype0
�
&Variable_11/Initializer/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_class
loc:@Variable_11*
_output_shapes
: *
dtype0
�
Variable_11VarHandleOp*
_class
loc:@Variable_11*
_output_shapes
: *

debug_nameVariable_11/*
dtype0*
shape: *
shared_nameVariable_11
g
,Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_11*
_output_shapes
: 
h
Variable_11/AssignAssignVariableOpVariable_11&Variable_11/Initializer/ReadVariableOp*
dtype0
g
Variable_11/Read/ReadVariableOpReadVariableOpVariable_11*
_output_shapes
: *
dtype0
�
dense_3/biasVarHandleOp*
_output_shapes
: *

debug_namedense_3/bias/*
dtype0*
shape: *
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
: *
dtype0
�
&Variable_12/Initializer/ReadVariableOpReadVariableOpdense_3/bias*
_class
loc:@Variable_12*
_output_shapes
: *
dtype0
�
Variable_12VarHandleOp*
_class
loc:@Variable_12*
_output_shapes
: *

debug_nameVariable_12/*
dtype0*
shape: *
shared_nameVariable_12
g
,Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_12*
_output_shapes
: 
h
Variable_12/AssignAssignVariableOpVariable_12&Variable_12/Initializer/ReadVariableOp*
dtype0
g
Variable_12/Read/ReadVariableOpReadVariableOpVariable_12*
_output_shapes
: *
dtype0
�
dense_3/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_3/kernel/*
dtype0*
shape
: *
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

: *
dtype0
�
&Variable_13/Initializer/ReadVariableOpReadVariableOpdense_3/kernel*
_class
loc:@Variable_13*
_output_shapes

: *
dtype0
�
Variable_13VarHandleOp*
_class
loc:@Variable_13*
_output_shapes
: *

debug_nameVariable_13/*
dtype0*
shape
: *
shared_nameVariable_13
g
,Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_13*
_output_shapes
: 
h
Variable_13/AssignAssignVariableOpVariable_13&Variable_13/Initializer/ReadVariableOp*
dtype0
k
Variable_13/Read/ReadVariableOpReadVariableOpVariable_13*
_output_shapes

: *
dtype0
�
adamw/dense_5_bias_velocityVarHandleOp*
_output_shapes
: *,

debug_nameadamw/dense_5_bias_velocity/*
dtype0*
shape:*,
shared_nameadamw/dense_5_bias_velocity
�
/adamw/dense_5_bias_velocity/Read/ReadVariableOpReadVariableOpadamw/dense_5_bias_velocity*
_output_shapes
:*
dtype0
�
&Variable_14/Initializer/ReadVariableOpReadVariableOpadamw/dense_5_bias_velocity*
_class
loc:@Variable_14*
_output_shapes
:*
dtype0
�
Variable_14VarHandleOp*
_class
loc:@Variable_14*
_output_shapes
: *

debug_nameVariable_14/*
dtype0*
shape:*
shared_nameVariable_14
g
,Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_14*
_output_shapes
: 
h
Variable_14/AssignAssignVariableOpVariable_14&Variable_14/Initializer/ReadVariableOp*
dtype0
g
Variable_14/Read/ReadVariableOpReadVariableOpVariable_14*
_output_shapes
:*
dtype0
�
adamw/dense_5_bias_momentumVarHandleOp*
_output_shapes
: *,

debug_nameadamw/dense_5_bias_momentum/*
dtype0*
shape:*,
shared_nameadamw/dense_5_bias_momentum
�
/adamw/dense_5_bias_momentum/Read/ReadVariableOpReadVariableOpadamw/dense_5_bias_momentum*
_output_shapes
:*
dtype0
�
&Variable_15/Initializer/ReadVariableOpReadVariableOpadamw/dense_5_bias_momentum*
_class
loc:@Variable_15*
_output_shapes
:*
dtype0
�
Variable_15VarHandleOp*
_class
loc:@Variable_15*
_output_shapes
: *

debug_nameVariable_15/*
dtype0*
shape:*
shared_nameVariable_15
g
,Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_15*
_output_shapes
: 
h
Variable_15/AssignAssignVariableOpVariable_15&Variable_15/Initializer/ReadVariableOp*
dtype0
g
Variable_15/Read/ReadVariableOpReadVariableOpVariable_15*
_output_shapes
:*
dtype0
�
adamw/dense_5_kernel_velocityVarHandleOp*
_output_shapes
: *.

debug_name adamw/dense_5_kernel_velocity/*
dtype0*
shape
:`*.
shared_nameadamw/dense_5_kernel_velocity
�
1adamw/dense_5_kernel_velocity/Read/ReadVariableOpReadVariableOpadamw/dense_5_kernel_velocity*
_output_shapes

:`*
dtype0
�
&Variable_16/Initializer/ReadVariableOpReadVariableOpadamw/dense_5_kernel_velocity*
_class
loc:@Variable_16*
_output_shapes

:`*
dtype0
�
Variable_16VarHandleOp*
_class
loc:@Variable_16*
_output_shapes
: *

debug_nameVariable_16/*
dtype0*
shape
:`*
shared_nameVariable_16
g
,Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_16*
_output_shapes
: 
h
Variable_16/AssignAssignVariableOpVariable_16&Variable_16/Initializer/ReadVariableOp*
dtype0
k
Variable_16/Read/ReadVariableOpReadVariableOpVariable_16*
_output_shapes

:`*
dtype0
�
adamw/dense_5_kernel_momentumVarHandleOp*
_output_shapes
: *.

debug_name adamw/dense_5_kernel_momentum/*
dtype0*
shape
:`*.
shared_nameadamw/dense_5_kernel_momentum
�
1adamw/dense_5_kernel_momentum/Read/ReadVariableOpReadVariableOpadamw/dense_5_kernel_momentum*
_output_shapes

:`*
dtype0
�
&Variable_17/Initializer/ReadVariableOpReadVariableOpadamw/dense_5_kernel_momentum*
_class
loc:@Variable_17*
_output_shapes

:`*
dtype0
�
Variable_17VarHandleOp*
_class
loc:@Variable_17*
_output_shapes
: *

debug_nameVariable_17/*
dtype0*
shape
:`*
shared_nameVariable_17
g
,Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_17*
_output_shapes
: 
h
Variable_17/AssignAssignVariableOpVariable_17&Variable_17/Initializer/ReadVariableOp*
dtype0
k
Variable_17/Read/ReadVariableOpReadVariableOpVariable_17*
_output_shapes

:`*
dtype0
�
)adamw/batch_normalization_3_beta_velocityVarHandleOp*
_output_shapes
: *:

debug_name,*adamw/batch_normalization_3_beta_velocity/*
dtype0*
shape:`*:
shared_name+)adamw/batch_normalization_3_beta_velocity
�
=adamw/batch_normalization_3_beta_velocity/Read/ReadVariableOpReadVariableOp)adamw/batch_normalization_3_beta_velocity*
_output_shapes
:`*
dtype0
�
&Variable_18/Initializer/ReadVariableOpReadVariableOp)adamw/batch_normalization_3_beta_velocity*
_class
loc:@Variable_18*
_output_shapes
:`*
dtype0
�
Variable_18VarHandleOp*
_class
loc:@Variable_18*
_output_shapes
: *

debug_nameVariable_18/*
dtype0*
shape:`*
shared_nameVariable_18
g
,Variable_18/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_18*
_output_shapes
: 
h
Variable_18/AssignAssignVariableOpVariable_18&Variable_18/Initializer/ReadVariableOp*
dtype0
g
Variable_18/Read/ReadVariableOpReadVariableOpVariable_18*
_output_shapes
:`*
dtype0
�
)adamw/batch_normalization_3_beta_momentumVarHandleOp*
_output_shapes
: *:

debug_name,*adamw/batch_normalization_3_beta_momentum/*
dtype0*
shape:`*:
shared_name+)adamw/batch_normalization_3_beta_momentum
�
=adamw/batch_normalization_3_beta_momentum/Read/ReadVariableOpReadVariableOp)adamw/batch_normalization_3_beta_momentum*
_output_shapes
:`*
dtype0
�
&Variable_19/Initializer/ReadVariableOpReadVariableOp)adamw/batch_normalization_3_beta_momentum*
_class
loc:@Variable_19*
_output_shapes
:`*
dtype0
�
Variable_19VarHandleOp*
_class
loc:@Variable_19*
_output_shapes
: *

debug_nameVariable_19/*
dtype0*
shape:`*
shared_nameVariable_19
g
,Variable_19/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_19*
_output_shapes
: 
h
Variable_19/AssignAssignVariableOpVariable_19&Variable_19/Initializer/ReadVariableOp*
dtype0
g
Variable_19/Read/ReadVariableOpReadVariableOpVariable_19*
_output_shapes
:`*
dtype0
�
*adamw/batch_normalization_3_gamma_velocityVarHandleOp*
_output_shapes
: *;

debug_name-+adamw/batch_normalization_3_gamma_velocity/*
dtype0*
shape:`*;
shared_name,*adamw/batch_normalization_3_gamma_velocity
�
>adamw/batch_normalization_3_gamma_velocity/Read/ReadVariableOpReadVariableOp*adamw/batch_normalization_3_gamma_velocity*
_output_shapes
:`*
dtype0
�
&Variable_20/Initializer/ReadVariableOpReadVariableOp*adamw/batch_normalization_3_gamma_velocity*
_class
loc:@Variable_20*
_output_shapes
:`*
dtype0
�
Variable_20VarHandleOp*
_class
loc:@Variable_20*
_output_shapes
: *

debug_nameVariable_20/*
dtype0*
shape:`*
shared_nameVariable_20
g
,Variable_20/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_20*
_output_shapes
: 
h
Variable_20/AssignAssignVariableOpVariable_20&Variable_20/Initializer/ReadVariableOp*
dtype0
g
Variable_20/Read/ReadVariableOpReadVariableOpVariable_20*
_output_shapes
:`*
dtype0
�
*adamw/batch_normalization_3_gamma_momentumVarHandleOp*
_output_shapes
: *;

debug_name-+adamw/batch_normalization_3_gamma_momentum/*
dtype0*
shape:`*;
shared_name,*adamw/batch_normalization_3_gamma_momentum
�
>adamw/batch_normalization_3_gamma_momentum/Read/ReadVariableOpReadVariableOp*adamw/batch_normalization_3_gamma_momentum*
_output_shapes
:`*
dtype0
�
&Variable_21/Initializer/ReadVariableOpReadVariableOp*adamw/batch_normalization_3_gamma_momentum*
_class
loc:@Variable_21*
_output_shapes
:`*
dtype0
�
Variable_21VarHandleOp*
_class
loc:@Variable_21*
_output_shapes
: *

debug_nameVariable_21/*
dtype0*
shape:`*
shared_nameVariable_21
g
,Variable_21/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_21*
_output_shapes
: 
h
Variable_21/AssignAssignVariableOpVariable_21&Variable_21/Initializer/ReadVariableOp*
dtype0
g
Variable_21/Read/ReadVariableOpReadVariableOpVariable_21*
_output_shapes
:`*
dtype0
�
adamw/dense_4_bias_velocityVarHandleOp*
_output_shapes
: *,

debug_nameadamw/dense_4_bias_velocity/*
dtype0*
shape:`*,
shared_nameadamw/dense_4_bias_velocity
�
/adamw/dense_4_bias_velocity/Read/ReadVariableOpReadVariableOpadamw/dense_4_bias_velocity*
_output_shapes
:`*
dtype0
�
&Variable_22/Initializer/ReadVariableOpReadVariableOpadamw/dense_4_bias_velocity*
_class
loc:@Variable_22*
_output_shapes
:`*
dtype0
�
Variable_22VarHandleOp*
_class
loc:@Variable_22*
_output_shapes
: *

debug_nameVariable_22/*
dtype0*
shape:`*
shared_nameVariable_22
g
,Variable_22/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_22*
_output_shapes
: 
h
Variable_22/AssignAssignVariableOpVariable_22&Variable_22/Initializer/ReadVariableOp*
dtype0
g
Variable_22/Read/ReadVariableOpReadVariableOpVariable_22*
_output_shapes
:`*
dtype0
�
adamw/dense_4_bias_momentumVarHandleOp*
_output_shapes
: *,

debug_nameadamw/dense_4_bias_momentum/*
dtype0*
shape:`*,
shared_nameadamw/dense_4_bias_momentum
�
/adamw/dense_4_bias_momentum/Read/ReadVariableOpReadVariableOpadamw/dense_4_bias_momentum*
_output_shapes
:`*
dtype0
�
&Variable_23/Initializer/ReadVariableOpReadVariableOpadamw/dense_4_bias_momentum*
_class
loc:@Variable_23*
_output_shapes
:`*
dtype0
�
Variable_23VarHandleOp*
_class
loc:@Variable_23*
_output_shapes
: *

debug_nameVariable_23/*
dtype0*
shape:`*
shared_nameVariable_23
g
,Variable_23/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_23*
_output_shapes
: 
h
Variable_23/AssignAssignVariableOpVariable_23&Variable_23/Initializer/ReadVariableOp*
dtype0
g
Variable_23/Read/ReadVariableOpReadVariableOpVariable_23*
_output_shapes
:`*
dtype0
�
adamw/dense_4_kernel_velocityVarHandleOp*
_output_shapes
: *.

debug_name adamw/dense_4_kernel_velocity/*
dtype0*
shape
: `*.
shared_nameadamw/dense_4_kernel_velocity
�
1adamw/dense_4_kernel_velocity/Read/ReadVariableOpReadVariableOpadamw/dense_4_kernel_velocity*
_output_shapes

: `*
dtype0
�
&Variable_24/Initializer/ReadVariableOpReadVariableOpadamw/dense_4_kernel_velocity*
_class
loc:@Variable_24*
_output_shapes

: `*
dtype0
�
Variable_24VarHandleOp*
_class
loc:@Variable_24*
_output_shapes
: *

debug_nameVariable_24/*
dtype0*
shape
: `*
shared_nameVariable_24
g
,Variable_24/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_24*
_output_shapes
: 
h
Variable_24/AssignAssignVariableOpVariable_24&Variable_24/Initializer/ReadVariableOp*
dtype0
k
Variable_24/Read/ReadVariableOpReadVariableOpVariable_24*
_output_shapes

: `*
dtype0
�
adamw/dense_4_kernel_momentumVarHandleOp*
_output_shapes
: *.

debug_name adamw/dense_4_kernel_momentum/*
dtype0*
shape
: `*.
shared_nameadamw/dense_4_kernel_momentum
�
1adamw/dense_4_kernel_momentum/Read/ReadVariableOpReadVariableOpadamw/dense_4_kernel_momentum*
_output_shapes

: `*
dtype0
�
&Variable_25/Initializer/ReadVariableOpReadVariableOpadamw/dense_4_kernel_momentum*
_class
loc:@Variable_25*
_output_shapes

: `*
dtype0
�
Variable_25VarHandleOp*
_class
loc:@Variable_25*
_output_shapes
: *

debug_nameVariable_25/*
dtype0*
shape
: `*
shared_nameVariable_25
g
,Variable_25/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_25*
_output_shapes
: 
h
Variable_25/AssignAssignVariableOpVariable_25&Variable_25/Initializer/ReadVariableOp*
dtype0
k
Variable_25/Read/ReadVariableOpReadVariableOpVariable_25*
_output_shapes

: `*
dtype0
�
)adamw/batch_normalization_2_beta_velocityVarHandleOp*
_output_shapes
: *:

debug_name,*adamw/batch_normalization_2_beta_velocity/*
dtype0*
shape: *:
shared_name+)adamw/batch_normalization_2_beta_velocity
�
=adamw/batch_normalization_2_beta_velocity/Read/ReadVariableOpReadVariableOp)adamw/batch_normalization_2_beta_velocity*
_output_shapes
: *
dtype0
�
&Variable_26/Initializer/ReadVariableOpReadVariableOp)adamw/batch_normalization_2_beta_velocity*
_class
loc:@Variable_26*
_output_shapes
: *
dtype0
�
Variable_26VarHandleOp*
_class
loc:@Variable_26*
_output_shapes
: *

debug_nameVariable_26/*
dtype0*
shape: *
shared_nameVariable_26
g
,Variable_26/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_26*
_output_shapes
: 
h
Variable_26/AssignAssignVariableOpVariable_26&Variable_26/Initializer/ReadVariableOp*
dtype0
g
Variable_26/Read/ReadVariableOpReadVariableOpVariable_26*
_output_shapes
: *
dtype0
�
)adamw/batch_normalization_2_beta_momentumVarHandleOp*
_output_shapes
: *:

debug_name,*adamw/batch_normalization_2_beta_momentum/*
dtype0*
shape: *:
shared_name+)adamw/batch_normalization_2_beta_momentum
�
=adamw/batch_normalization_2_beta_momentum/Read/ReadVariableOpReadVariableOp)adamw/batch_normalization_2_beta_momentum*
_output_shapes
: *
dtype0
�
&Variable_27/Initializer/ReadVariableOpReadVariableOp)adamw/batch_normalization_2_beta_momentum*
_class
loc:@Variable_27*
_output_shapes
: *
dtype0
�
Variable_27VarHandleOp*
_class
loc:@Variable_27*
_output_shapes
: *

debug_nameVariable_27/*
dtype0*
shape: *
shared_nameVariable_27
g
,Variable_27/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_27*
_output_shapes
: 
h
Variable_27/AssignAssignVariableOpVariable_27&Variable_27/Initializer/ReadVariableOp*
dtype0
g
Variable_27/Read/ReadVariableOpReadVariableOpVariable_27*
_output_shapes
: *
dtype0
�
*adamw/batch_normalization_2_gamma_velocityVarHandleOp*
_output_shapes
: *;

debug_name-+adamw/batch_normalization_2_gamma_velocity/*
dtype0*
shape: *;
shared_name,*adamw/batch_normalization_2_gamma_velocity
�
>adamw/batch_normalization_2_gamma_velocity/Read/ReadVariableOpReadVariableOp*adamw/batch_normalization_2_gamma_velocity*
_output_shapes
: *
dtype0
�
&Variable_28/Initializer/ReadVariableOpReadVariableOp*adamw/batch_normalization_2_gamma_velocity*
_class
loc:@Variable_28*
_output_shapes
: *
dtype0
�
Variable_28VarHandleOp*
_class
loc:@Variable_28*
_output_shapes
: *

debug_nameVariable_28/*
dtype0*
shape: *
shared_nameVariable_28
g
,Variable_28/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_28*
_output_shapes
: 
h
Variable_28/AssignAssignVariableOpVariable_28&Variable_28/Initializer/ReadVariableOp*
dtype0
g
Variable_28/Read/ReadVariableOpReadVariableOpVariable_28*
_output_shapes
: *
dtype0
�
*adamw/batch_normalization_2_gamma_momentumVarHandleOp*
_output_shapes
: *;

debug_name-+adamw/batch_normalization_2_gamma_momentum/*
dtype0*
shape: *;
shared_name,*adamw/batch_normalization_2_gamma_momentum
�
>adamw/batch_normalization_2_gamma_momentum/Read/ReadVariableOpReadVariableOp*adamw/batch_normalization_2_gamma_momentum*
_output_shapes
: *
dtype0
�
&Variable_29/Initializer/ReadVariableOpReadVariableOp*adamw/batch_normalization_2_gamma_momentum*
_class
loc:@Variable_29*
_output_shapes
: *
dtype0
�
Variable_29VarHandleOp*
_class
loc:@Variable_29*
_output_shapes
: *

debug_nameVariable_29/*
dtype0*
shape: *
shared_nameVariable_29
g
,Variable_29/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_29*
_output_shapes
: 
h
Variable_29/AssignAssignVariableOpVariable_29&Variable_29/Initializer/ReadVariableOp*
dtype0
g
Variable_29/Read/ReadVariableOpReadVariableOpVariable_29*
_output_shapes
: *
dtype0
�
adamw/dense_3_bias_velocityVarHandleOp*
_output_shapes
: *,

debug_nameadamw/dense_3_bias_velocity/*
dtype0*
shape: *,
shared_nameadamw/dense_3_bias_velocity
�
/adamw/dense_3_bias_velocity/Read/ReadVariableOpReadVariableOpadamw/dense_3_bias_velocity*
_output_shapes
: *
dtype0
�
&Variable_30/Initializer/ReadVariableOpReadVariableOpadamw/dense_3_bias_velocity*
_class
loc:@Variable_30*
_output_shapes
: *
dtype0
�
Variable_30VarHandleOp*
_class
loc:@Variable_30*
_output_shapes
: *

debug_nameVariable_30/*
dtype0*
shape: *
shared_nameVariable_30
g
,Variable_30/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_30*
_output_shapes
: 
h
Variable_30/AssignAssignVariableOpVariable_30&Variable_30/Initializer/ReadVariableOp*
dtype0
g
Variable_30/Read/ReadVariableOpReadVariableOpVariable_30*
_output_shapes
: *
dtype0
�
adamw/dense_3_bias_momentumVarHandleOp*
_output_shapes
: *,

debug_nameadamw/dense_3_bias_momentum/*
dtype0*
shape: *,
shared_nameadamw/dense_3_bias_momentum
�
/adamw/dense_3_bias_momentum/Read/ReadVariableOpReadVariableOpadamw/dense_3_bias_momentum*
_output_shapes
: *
dtype0
�
&Variable_31/Initializer/ReadVariableOpReadVariableOpadamw/dense_3_bias_momentum*
_class
loc:@Variable_31*
_output_shapes
: *
dtype0
�
Variable_31VarHandleOp*
_class
loc:@Variable_31*
_output_shapes
: *

debug_nameVariable_31/*
dtype0*
shape: *
shared_nameVariable_31
g
,Variable_31/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_31*
_output_shapes
: 
h
Variable_31/AssignAssignVariableOpVariable_31&Variable_31/Initializer/ReadVariableOp*
dtype0
g
Variable_31/Read/ReadVariableOpReadVariableOpVariable_31*
_output_shapes
: *
dtype0
�
adamw/dense_3_kernel_velocityVarHandleOp*
_output_shapes
: *.

debug_name adamw/dense_3_kernel_velocity/*
dtype0*
shape
: *.
shared_nameadamw/dense_3_kernel_velocity
�
1adamw/dense_3_kernel_velocity/Read/ReadVariableOpReadVariableOpadamw/dense_3_kernel_velocity*
_output_shapes

: *
dtype0
�
&Variable_32/Initializer/ReadVariableOpReadVariableOpadamw/dense_3_kernel_velocity*
_class
loc:@Variable_32*
_output_shapes

: *
dtype0
�
Variable_32VarHandleOp*
_class
loc:@Variable_32*
_output_shapes
: *

debug_nameVariable_32/*
dtype0*
shape
: *
shared_nameVariable_32
g
,Variable_32/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_32*
_output_shapes
: 
h
Variable_32/AssignAssignVariableOpVariable_32&Variable_32/Initializer/ReadVariableOp*
dtype0
k
Variable_32/Read/ReadVariableOpReadVariableOpVariable_32*
_output_shapes

: *
dtype0
�
adamw/dense_3_kernel_momentumVarHandleOp*
_output_shapes
: *.

debug_name adamw/dense_3_kernel_momentum/*
dtype0*
shape
: *.
shared_nameadamw/dense_3_kernel_momentum
�
1adamw/dense_3_kernel_momentum/Read/ReadVariableOpReadVariableOpadamw/dense_3_kernel_momentum*
_output_shapes

: *
dtype0
�
&Variable_33/Initializer/ReadVariableOpReadVariableOpadamw/dense_3_kernel_momentum*
_class
loc:@Variable_33*
_output_shapes

: *
dtype0
�
Variable_33VarHandleOp*
_class
loc:@Variable_33*
_output_shapes
: *

debug_nameVariable_33/*
dtype0*
shape
: *
shared_nameVariable_33
g
,Variable_33/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_33*
_output_shapes
: 
h
Variable_33/AssignAssignVariableOpVariable_33&Variable_33/Initializer/ReadVariableOp*
dtype0
k
Variable_33/Read/ReadVariableOpReadVariableOpVariable_33*
_output_shapes

: *
dtype0
�
adamw/learning_rateVarHandleOp*
_output_shapes
: *$

debug_nameadamw/learning_rate/*
dtype0*
shape: *$
shared_nameadamw/learning_rate
s
'adamw/learning_rate/Read/ReadVariableOpReadVariableOpadamw/learning_rate*
_output_shapes
: *
dtype0
�
&Variable_34/Initializer/ReadVariableOpReadVariableOpadamw/learning_rate*
_class
loc:@Variable_34*
_output_shapes
: *
dtype0
�
Variable_34VarHandleOp*
_class
loc:@Variable_34*
_output_shapes
: *

debug_nameVariable_34/*
dtype0*
shape: *
shared_nameVariable_34
g
,Variable_34/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_34*
_output_shapes
: 
h
Variable_34/AssignAssignVariableOpVariable_34&Variable_34/Initializer/ReadVariableOp*
dtype0
c
Variable_34/Read/ReadVariableOpReadVariableOpVariable_34*
_output_shapes
: *
dtype0
�
adamw/iterationVarHandleOp*
_output_shapes
: * 

debug_nameadamw/iteration/*
dtype0	*
shape: * 
shared_nameadamw/iteration
k
#adamw/iteration/Read/ReadVariableOpReadVariableOpadamw/iteration*
_output_shapes
: *
dtype0	
�
&Variable_35/Initializer/ReadVariableOpReadVariableOpadamw/iteration*
_class
loc:@Variable_35*
_output_shapes
: *
dtype0	
�
Variable_35VarHandleOp*
_class
loc:@Variable_35*
_output_shapes
: *

debug_nameVariable_35/*
dtype0	*
shape: *
shared_nameVariable_35
g
,Variable_35/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_35*
_output_shapes
: 
h
Variable_35/AssignAssignVariableOpVariable_35&Variable_35/Initializer/ReadVariableOp*
dtype0	
c
Variable_35/Read/ReadVariableOpReadVariableOpVariable_35*
_output_shapes
: *
dtype0	
y
serving_default_inputsPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputsdense_3/kerneldense_3/bias!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancebatch_normalization_2/gammabatch_normalization_2/betadense_4/kerneldense_4/bias!batch_normalization_3/moving_mean%batch_normalization_3/moving_variancebatch_normalization_3/gammabatch_normalization_3/betadense_5/kerneldense_5/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *>
f9R7
5__inference_signature_wrapper_serving_default_1985538

NoOpNoOp
�-
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�-
value�-B�- B�-
�
_functional
	optimizer
_default_save_signature
_inbound_nodes
_outbound_nodes
_losses
	_loss_ids
_losses_override
	_layers

_build_shapes_dict

signatures*
�
_tracked
_inbound_nodes
_outbound_nodes
_losses
_losses_override
_operations
_layers
_build_shapes_dict
output_names
_default_save_signature*
�

_variables
_trainable_variables
 _trainable_variables_indices
_iterations
_learning_rate

_momentums
_velocities*

trace_0* 
* 
* 
* 
* 
* 
<
0
1
 2
!3
"4
#5
$6
%7*
* 

&serving_default* 
* 
* 
* 
* 
* 
<
0
1
 2
!3
"4
#5
$6
%7*
<
0
1
 2
!3
"4
#5
$6
%7*
* 
* 

'trace_0* 
�
0
1
(2
)3
*4
+5
,6
-7
.8
/9
010
111
212
313
414
515
616
717
818
919
:20
;21*
J
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9*
* 
UO
VARIABLE_VALUEVariable_350optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEVariable_343optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
]
F_inbound_nodes
G_outbound_nodes
H_losses
I	_loss_ids
J_losses_override* 
�
<_kernel
=bias
K_inbound_nodes
L_outbound_nodes
M_losses
N	_loss_ids
O_losses_override
P_build_shapes_dict*
�
	>gamma
?beta
Qmoving_mean
Rmoving_variance
S_inbound_nodes
T_outbound_nodes
U_losses
V	_loss_ids
W_losses_override
X_reduction_axes
Y_build_shapes_dict*
u
Z_inbound_nodes
[_outbound_nodes
\_losses
]	_loss_ids
^_losses_override
__build_shapes_dict* 
�
@_kernel
Abias
`_inbound_nodes
a_outbound_nodes
b_losses
c	_loss_ids
d_losses_override
e_build_shapes_dict*
�
	Bgamma
Cbeta
fmoving_mean
gmoving_variance
h_inbound_nodes
i_outbound_nodes
j_losses
k	_loss_ids
l_losses_override
m_reduction_axes
n_build_shapes_dict*
u
o_inbound_nodes
p_outbound_nodes
q_losses
r	_loss_ids
s_losses_override
t_build_shapes_dict* 
�
D_kernel
Ebias
u_inbound_nodes
v_outbound_nodes
w_losses
x	_loss_ids
y_losses_override
z_build_shapes_dict*
* 
* 
VP
VARIABLE_VALUEVariable_331optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_321optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_311optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_301optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_291optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_281optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_271optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_261optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_252optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_242optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_232optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_222optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_212optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_202optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_192optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_182optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_172optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_162optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_152optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_142optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_13;optimizer/_trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_12;optimizer/_trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_11;optimizer/_trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_10;optimizer/_trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUE
Variable_9;optimizer/_trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUE
Variable_8;optimizer/_trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUE
Variable_7;optimizer/_trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUE
Variable_6;optimizer/_trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUE
Variable_5;optimizer/_trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUE
Variable_4;optimizer/_trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
TN
VARIABLE_VALUE
Variable_30_layers/2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
Variable_24_layers/2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
TN
VARIABLE_VALUE
Variable_10_layers/5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable4_layers/5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameVariable_35Variable_34Variable_33Variable_32Variable_31Variable_30Variable_29Variable_28Variable_27Variable_26Variable_25Variable_24Variable_23Variable_22Variable_21Variable_20Variable_19Variable_18Variable_17Variable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1VariableConst*1
Tin*
(2&*
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
GPU 2J 8� *)
f$R"
 __inference__traced_save_1986000
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable_35Variable_34Variable_33Variable_32Variable_31Variable_30Variable_29Variable_28Variable_27Variable_26Variable_25Variable_24Variable_23Variable_22Variable_21Variable_20Variable_19Variable_18Variable_17Variable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable*0
Tin)
'2%*
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
GPU 2J 8� *,
f'R%
#__inference__traced_restore_1986117��
�a
�
#__inference_serving_default_1985504

inputsG
5sequential_1_1_dense_3_1_cast_readvariableop_resource: B
4sequential_1_1_dense_3_1_add_readvariableop_resource: Q
Csequential_1_1_batch_normalization_2_1_cast_readvariableop_resource: S
Esequential_1_1_batch_normalization_2_1_cast_1_readvariableop_resource: S
Esequential_1_1_batch_normalization_2_1_cast_2_readvariableop_resource: S
Esequential_1_1_batch_normalization_2_1_cast_3_readvariableop_resource: G
5sequential_1_1_dense_4_1_cast_readvariableop_resource: `B
4sequential_1_1_dense_4_1_add_readvariableop_resource:`Q
Csequential_1_1_batch_normalization_3_1_cast_readvariableop_resource:`S
Esequential_1_1_batch_normalization_3_1_cast_1_readvariableop_resource:`S
Esequential_1_1_batch_normalization_3_1_cast_2_readvariableop_resource:`S
Esequential_1_1_batch_normalization_3_1_cast_3_readvariableop_resource:`G
5sequential_1_1_dense_5_1_cast_readvariableop_resource:`B
4sequential_1_1_dense_5_1_add_readvariableop_resource:
identity��:sequential_1_1/batch_normalization_2_1/Cast/ReadVariableOp�<sequential_1_1/batch_normalization_2_1/Cast_1/ReadVariableOp�<sequential_1_1/batch_normalization_2_1/Cast_2/ReadVariableOp�<sequential_1_1/batch_normalization_2_1/Cast_3/ReadVariableOp�:sequential_1_1/batch_normalization_3_1/Cast/ReadVariableOp�<sequential_1_1/batch_normalization_3_1/Cast_1/ReadVariableOp�<sequential_1_1/batch_normalization_3_1/Cast_2/ReadVariableOp�<sequential_1_1/batch_normalization_3_1/Cast_3/ReadVariableOp�+sequential_1_1/dense_3_1/Add/ReadVariableOp�,sequential_1_1/dense_3_1/Cast/ReadVariableOp�+sequential_1_1/dense_4_1/Add/ReadVariableOp�,sequential_1_1/dense_4_1/Cast/ReadVariableOp�+sequential_1_1/dense_5_1/Add/ReadVariableOp�,sequential_1_1/dense_5_1/Cast/ReadVariableOp�
,sequential_1_1/dense_3_1/Cast/ReadVariableOpReadVariableOp5sequential_1_1_dense_3_1_cast_readvariableop_resource*
_output_shapes

: *
dtype0�
sequential_1_1/dense_3_1/MatMulMatMulinputs4sequential_1_1/dense_3_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
+sequential_1_1/dense_3_1/Add/ReadVariableOpReadVariableOp4sequential_1_1_dense_3_1_add_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential_1_1/dense_3_1/AddAddV2)sequential_1_1/dense_3_1/MatMul:product:03sequential_1_1/dense_3_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� y
sequential_1_1/dense_3_1/ReluRelu sequential_1_1/dense_3_1/Add:z:0*
T0*'
_output_shapes
:��������� �
:sequential_1_1/batch_normalization_2_1/Cast/ReadVariableOpReadVariableOpCsequential_1_1_batch_normalization_2_1_cast_readvariableop_resource*
_output_shapes
: *
dtype0�
<sequential_1_1/batch_normalization_2_1/Cast_1/ReadVariableOpReadVariableOpEsequential_1_1_batch_normalization_2_1_cast_1_readvariableop_resource*
_output_shapes
: *
dtype0�
<sequential_1_1/batch_normalization_2_1/Cast_2/ReadVariableOpReadVariableOpEsequential_1_1_batch_normalization_2_1_cast_2_readvariableop_resource*
_output_shapes
: *
dtype0�
<sequential_1_1/batch_normalization_2_1/Cast_3/ReadVariableOpReadVariableOpEsequential_1_1_batch_normalization_2_1_cast_3_readvariableop_resource*
_output_shapes
: *
dtype0{
6sequential_1_1/batch_normalization_2_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
4sequential_1_1/batch_normalization_2_1/batchnorm/addAddV2Dsequential_1_1/batch_normalization_2_1/Cast_1/ReadVariableOp:value:0?sequential_1_1/batch_normalization_2_1/batchnorm/add/y:output:0*
T0*
_output_shapes
: �
6sequential_1_1/batch_normalization_2_1/batchnorm/RsqrtRsqrt8sequential_1_1/batch_normalization_2_1/batchnorm/add:z:0*
T0*
_output_shapes
: �
4sequential_1_1/batch_normalization_2_1/batchnorm/mulMul:sequential_1_1/batch_normalization_2_1/batchnorm/Rsqrt:y:0Dsequential_1_1/batch_normalization_2_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
: �
6sequential_1_1/batch_normalization_2_1/batchnorm/mul_1Mul+sequential_1_1/dense_3_1/Relu:activations:08sequential_1_1/batch_normalization_2_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:��������� �
6sequential_1_1/batch_normalization_2_1/batchnorm/mul_2MulBsequential_1_1/batch_normalization_2_1/Cast/ReadVariableOp:value:08sequential_1_1/batch_normalization_2_1/batchnorm/mul:z:0*
T0*
_output_shapes
: �
4sequential_1_1/batch_normalization_2_1/batchnorm/subSubDsequential_1_1/batch_normalization_2_1/Cast_3/ReadVariableOp:value:0:sequential_1_1/batch_normalization_2_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
: �
6sequential_1_1/batch_normalization_2_1/batchnorm/add_1AddV2:sequential_1_1/batch_normalization_2_1/batchnorm/mul_1:z:08sequential_1_1/batch_normalization_2_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:��������� �
,sequential_1_1/dense_4_1/Cast/ReadVariableOpReadVariableOp5sequential_1_1_dense_4_1_cast_readvariableop_resource*
_output_shapes

: `*
dtype0�
sequential_1_1/dense_4_1/MatMulMatMul:sequential_1_1/batch_normalization_2_1/batchnorm/add_1:z:04sequential_1_1/dense_4_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`�
+sequential_1_1/dense_4_1/Add/ReadVariableOpReadVariableOp4sequential_1_1_dense_4_1_add_readvariableop_resource*
_output_shapes
:`*
dtype0�
sequential_1_1/dense_4_1/AddAddV2)sequential_1_1/dense_4_1/MatMul:product:03sequential_1_1/dense_4_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`y
sequential_1_1/dense_4_1/ReluRelu sequential_1_1/dense_4_1/Add:z:0*
T0*'
_output_shapes
:���������`�
:sequential_1_1/batch_normalization_3_1/Cast/ReadVariableOpReadVariableOpCsequential_1_1_batch_normalization_3_1_cast_readvariableop_resource*
_output_shapes
:`*
dtype0�
<sequential_1_1/batch_normalization_3_1/Cast_1/ReadVariableOpReadVariableOpEsequential_1_1_batch_normalization_3_1_cast_1_readvariableop_resource*
_output_shapes
:`*
dtype0�
<sequential_1_1/batch_normalization_3_1/Cast_2/ReadVariableOpReadVariableOpEsequential_1_1_batch_normalization_3_1_cast_2_readvariableop_resource*
_output_shapes
:`*
dtype0�
<sequential_1_1/batch_normalization_3_1/Cast_3/ReadVariableOpReadVariableOpEsequential_1_1_batch_normalization_3_1_cast_3_readvariableop_resource*
_output_shapes
:`*
dtype0{
6sequential_1_1/batch_normalization_3_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
4sequential_1_1/batch_normalization_3_1/batchnorm/addAddV2Dsequential_1_1/batch_normalization_3_1/Cast_1/ReadVariableOp:value:0?sequential_1_1/batch_normalization_3_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:`�
6sequential_1_1/batch_normalization_3_1/batchnorm/RsqrtRsqrt8sequential_1_1/batch_normalization_3_1/batchnorm/add:z:0*
T0*
_output_shapes
:`�
4sequential_1_1/batch_normalization_3_1/batchnorm/mulMul:sequential_1_1/batch_normalization_3_1/batchnorm/Rsqrt:y:0Dsequential_1_1/batch_normalization_3_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
:`�
6sequential_1_1/batch_normalization_3_1/batchnorm/mul_1Mul+sequential_1_1/dense_4_1/Relu:activations:08sequential_1_1/batch_normalization_3_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������`�
6sequential_1_1/batch_normalization_3_1/batchnorm/mul_2MulBsequential_1_1/batch_normalization_3_1/Cast/ReadVariableOp:value:08sequential_1_1/batch_normalization_3_1/batchnorm/mul:z:0*
T0*
_output_shapes
:`�
4sequential_1_1/batch_normalization_3_1/batchnorm/subSubDsequential_1_1/batch_normalization_3_1/Cast_3/ReadVariableOp:value:0:sequential_1_1/batch_normalization_3_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:`�
6sequential_1_1/batch_normalization_3_1/batchnorm/add_1AddV2:sequential_1_1/batch_normalization_3_1/batchnorm/mul_1:z:08sequential_1_1/batch_normalization_3_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������`�
,sequential_1_1/dense_5_1/Cast/ReadVariableOpReadVariableOp5sequential_1_1_dense_5_1_cast_readvariableop_resource*
_output_shapes

:`*
dtype0�
sequential_1_1/dense_5_1/MatMulMatMul:sequential_1_1/batch_normalization_3_1/batchnorm/add_1:z:04sequential_1_1/dense_5_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_1_1/dense_5_1/Add/ReadVariableOpReadVariableOp4sequential_1_1_dense_5_1_add_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_1_1/dense_5_1/AddAddV2)sequential_1_1/dense_5_1/MatMul:product:03sequential_1_1/dense_5_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������o
IdentityIdentity sequential_1_1/dense_5_1/Add:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp;^sequential_1_1/batch_normalization_2_1/Cast/ReadVariableOp=^sequential_1_1/batch_normalization_2_1/Cast_1/ReadVariableOp=^sequential_1_1/batch_normalization_2_1/Cast_2/ReadVariableOp=^sequential_1_1/batch_normalization_2_1/Cast_3/ReadVariableOp;^sequential_1_1/batch_normalization_3_1/Cast/ReadVariableOp=^sequential_1_1/batch_normalization_3_1/Cast_1/ReadVariableOp=^sequential_1_1/batch_normalization_3_1/Cast_2/ReadVariableOp=^sequential_1_1/batch_normalization_3_1/Cast_3/ReadVariableOp,^sequential_1_1/dense_3_1/Add/ReadVariableOp-^sequential_1_1/dense_3_1/Cast/ReadVariableOp,^sequential_1_1/dense_4_1/Add/ReadVariableOp-^sequential_1_1/dense_4_1/Cast/ReadVariableOp,^sequential_1_1/dense_5_1/Add/ReadVariableOp-^sequential_1_1/dense_5_1/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : : : : : 2x
:sequential_1_1/batch_normalization_2_1/Cast/ReadVariableOp:sequential_1_1/batch_normalization_2_1/Cast/ReadVariableOp2|
<sequential_1_1/batch_normalization_2_1/Cast_1/ReadVariableOp<sequential_1_1/batch_normalization_2_1/Cast_1/ReadVariableOp2|
<sequential_1_1/batch_normalization_2_1/Cast_2/ReadVariableOp<sequential_1_1/batch_normalization_2_1/Cast_2/ReadVariableOp2|
<sequential_1_1/batch_normalization_2_1/Cast_3/ReadVariableOp<sequential_1_1/batch_normalization_2_1/Cast_3/ReadVariableOp2x
:sequential_1_1/batch_normalization_3_1/Cast/ReadVariableOp:sequential_1_1/batch_normalization_3_1/Cast/ReadVariableOp2|
<sequential_1_1/batch_normalization_3_1/Cast_1/ReadVariableOp<sequential_1_1/batch_normalization_3_1/Cast_1/ReadVariableOp2|
<sequential_1_1/batch_normalization_3_1/Cast_2/ReadVariableOp<sequential_1_1/batch_normalization_3_1/Cast_2/ReadVariableOp2|
<sequential_1_1/batch_normalization_3_1/Cast_3/ReadVariableOp<sequential_1_1/batch_normalization_3_1/Cast_3/ReadVariableOp2Z
+sequential_1_1/dense_3_1/Add/ReadVariableOp+sequential_1_1/dense_3_1/Add/ReadVariableOp2\
,sequential_1_1/dense_3_1/Cast/ReadVariableOp,sequential_1_1/dense_3_1/Cast/ReadVariableOp2Z
+sequential_1_1/dense_4_1/Add/ReadVariableOp+sequential_1_1/dense_4_1/Add/ReadVariableOp2\
,sequential_1_1/dense_4_1/Cast/ReadVariableOp,sequential_1_1/dense_4_1/Cast/ReadVariableOp2Z
+sequential_1_1/dense_5_1/Add/ReadVariableOp+sequential_1_1/dense_5_1/Add/ReadVariableOp2\
,sequential_1_1/dense_5_1/Cast/ReadVariableOp,sequential_1_1/dense_5_1/Cast/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�b
�
#__inference_serving_default_1985606

inputsH
6functional_83_1_dense_3_1_cast_readvariableop_resource: C
5functional_83_1_dense_3_1_add_readvariableop_resource: R
Dfunctional_83_1_batch_normalization_2_1_cast_readvariableop_resource: T
Ffunctional_83_1_batch_normalization_2_1_cast_1_readvariableop_resource: T
Ffunctional_83_1_batch_normalization_2_1_cast_2_readvariableop_resource: T
Ffunctional_83_1_batch_normalization_2_1_cast_3_readvariableop_resource: H
6functional_83_1_dense_4_1_cast_readvariableop_resource: `C
5functional_83_1_dense_4_1_add_readvariableop_resource:`R
Dfunctional_83_1_batch_normalization_3_1_cast_readvariableop_resource:`T
Ffunctional_83_1_batch_normalization_3_1_cast_1_readvariableop_resource:`T
Ffunctional_83_1_batch_normalization_3_1_cast_2_readvariableop_resource:`T
Ffunctional_83_1_batch_normalization_3_1_cast_3_readvariableop_resource:`H
6functional_83_1_dense_5_1_cast_readvariableop_resource:`C
5functional_83_1_dense_5_1_add_readvariableop_resource:
identity��;functional_83_1/batch_normalization_2_1/Cast/ReadVariableOp�=functional_83_1/batch_normalization_2_1/Cast_1/ReadVariableOp�=functional_83_1/batch_normalization_2_1/Cast_2/ReadVariableOp�=functional_83_1/batch_normalization_2_1/Cast_3/ReadVariableOp�;functional_83_1/batch_normalization_3_1/Cast/ReadVariableOp�=functional_83_1/batch_normalization_3_1/Cast_1/ReadVariableOp�=functional_83_1/batch_normalization_3_1/Cast_2/ReadVariableOp�=functional_83_1/batch_normalization_3_1/Cast_3/ReadVariableOp�,functional_83_1/dense_3_1/Add/ReadVariableOp�-functional_83_1/dense_3_1/Cast/ReadVariableOp�,functional_83_1/dense_4_1/Add/ReadVariableOp�-functional_83_1/dense_4_1/Cast/ReadVariableOp�,functional_83_1/dense_5_1/Add/ReadVariableOp�-functional_83_1/dense_5_1/Cast/ReadVariableOp�
-functional_83_1/dense_3_1/Cast/ReadVariableOpReadVariableOp6functional_83_1_dense_3_1_cast_readvariableop_resource*
_output_shapes

: *
dtype0�
 functional_83_1/dense_3_1/MatMulMatMulinputs5functional_83_1/dense_3_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
,functional_83_1/dense_3_1/Add/ReadVariableOpReadVariableOp5functional_83_1_dense_3_1_add_readvariableop_resource*
_output_shapes
: *
dtype0�
functional_83_1/dense_3_1/AddAddV2*functional_83_1/dense_3_1/MatMul:product:04functional_83_1/dense_3_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� {
functional_83_1/dense_3_1/ReluRelu!functional_83_1/dense_3_1/Add:z:0*
T0*'
_output_shapes
:��������� �
;functional_83_1/batch_normalization_2_1/Cast/ReadVariableOpReadVariableOpDfunctional_83_1_batch_normalization_2_1_cast_readvariableop_resource*
_output_shapes
: *
dtype0�
=functional_83_1/batch_normalization_2_1/Cast_1/ReadVariableOpReadVariableOpFfunctional_83_1_batch_normalization_2_1_cast_1_readvariableop_resource*
_output_shapes
: *
dtype0�
=functional_83_1/batch_normalization_2_1/Cast_2/ReadVariableOpReadVariableOpFfunctional_83_1_batch_normalization_2_1_cast_2_readvariableop_resource*
_output_shapes
: *
dtype0�
=functional_83_1/batch_normalization_2_1/Cast_3/ReadVariableOpReadVariableOpFfunctional_83_1_batch_normalization_2_1_cast_3_readvariableop_resource*
_output_shapes
: *
dtype0|
7functional_83_1/batch_normalization_2_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
5functional_83_1/batch_normalization_2_1/batchnorm/addAddV2Efunctional_83_1/batch_normalization_2_1/Cast_1/ReadVariableOp:value:0@functional_83_1/batch_normalization_2_1/batchnorm/add/y:output:0*
T0*
_output_shapes
: �
7functional_83_1/batch_normalization_2_1/batchnorm/RsqrtRsqrt9functional_83_1/batch_normalization_2_1/batchnorm/add:z:0*
T0*
_output_shapes
: �
5functional_83_1/batch_normalization_2_1/batchnorm/mulMul;functional_83_1/batch_normalization_2_1/batchnorm/Rsqrt:y:0Efunctional_83_1/batch_normalization_2_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
: �
7functional_83_1/batch_normalization_2_1/batchnorm/mul_1Mul,functional_83_1/dense_3_1/Relu:activations:09functional_83_1/batch_normalization_2_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:��������� �
7functional_83_1/batch_normalization_2_1/batchnorm/mul_2MulCfunctional_83_1/batch_normalization_2_1/Cast/ReadVariableOp:value:09functional_83_1/batch_normalization_2_1/batchnorm/mul:z:0*
T0*
_output_shapes
: �
5functional_83_1/batch_normalization_2_1/batchnorm/subSubEfunctional_83_1/batch_normalization_2_1/Cast_3/ReadVariableOp:value:0;functional_83_1/batch_normalization_2_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
: �
7functional_83_1/batch_normalization_2_1/batchnorm/add_1AddV2;functional_83_1/batch_normalization_2_1/batchnorm/mul_1:z:09functional_83_1/batch_normalization_2_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:��������� �
-functional_83_1/dense_4_1/Cast/ReadVariableOpReadVariableOp6functional_83_1_dense_4_1_cast_readvariableop_resource*
_output_shapes

: `*
dtype0�
 functional_83_1/dense_4_1/MatMulMatMul;functional_83_1/batch_normalization_2_1/batchnorm/add_1:z:05functional_83_1/dense_4_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`�
,functional_83_1/dense_4_1/Add/ReadVariableOpReadVariableOp5functional_83_1_dense_4_1_add_readvariableop_resource*
_output_shapes
:`*
dtype0�
functional_83_1/dense_4_1/AddAddV2*functional_83_1/dense_4_1/MatMul:product:04functional_83_1/dense_4_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`{
functional_83_1/dense_4_1/ReluRelu!functional_83_1/dense_4_1/Add:z:0*
T0*'
_output_shapes
:���������`�
;functional_83_1/batch_normalization_3_1/Cast/ReadVariableOpReadVariableOpDfunctional_83_1_batch_normalization_3_1_cast_readvariableop_resource*
_output_shapes
:`*
dtype0�
=functional_83_1/batch_normalization_3_1/Cast_1/ReadVariableOpReadVariableOpFfunctional_83_1_batch_normalization_3_1_cast_1_readvariableop_resource*
_output_shapes
:`*
dtype0�
=functional_83_1/batch_normalization_3_1/Cast_2/ReadVariableOpReadVariableOpFfunctional_83_1_batch_normalization_3_1_cast_2_readvariableop_resource*
_output_shapes
:`*
dtype0�
=functional_83_1/batch_normalization_3_1/Cast_3/ReadVariableOpReadVariableOpFfunctional_83_1_batch_normalization_3_1_cast_3_readvariableop_resource*
_output_shapes
:`*
dtype0|
7functional_83_1/batch_normalization_3_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
5functional_83_1/batch_normalization_3_1/batchnorm/addAddV2Efunctional_83_1/batch_normalization_3_1/Cast_1/ReadVariableOp:value:0@functional_83_1/batch_normalization_3_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:`�
7functional_83_1/batch_normalization_3_1/batchnorm/RsqrtRsqrt9functional_83_1/batch_normalization_3_1/batchnorm/add:z:0*
T0*
_output_shapes
:`�
5functional_83_1/batch_normalization_3_1/batchnorm/mulMul;functional_83_1/batch_normalization_3_1/batchnorm/Rsqrt:y:0Efunctional_83_1/batch_normalization_3_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
:`�
7functional_83_1/batch_normalization_3_1/batchnorm/mul_1Mul,functional_83_1/dense_4_1/Relu:activations:09functional_83_1/batch_normalization_3_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������`�
7functional_83_1/batch_normalization_3_1/batchnorm/mul_2MulCfunctional_83_1/batch_normalization_3_1/Cast/ReadVariableOp:value:09functional_83_1/batch_normalization_3_1/batchnorm/mul:z:0*
T0*
_output_shapes
:`�
5functional_83_1/batch_normalization_3_1/batchnorm/subSubEfunctional_83_1/batch_normalization_3_1/Cast_3/ReadVariableOp:value:0;functional_83_1/batch_normalization_3_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:`�
7functional_83_1/batch_normalization_3_1/batchnorm/add_1AddV2;functional_83_1/batch_normalization_3_1/batchnorm/mul_1:z:09functional_83_1/batch_normalization_3_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������`�
-functional_83_1/dense_5_1/Cast/ReadVariableOpReadVariableOp6functional_83_1_dense_5_1_cast_readvariableop_resource*
_output_shapes

:`*
dtype0�
 functional_83_1/dense_5_1/MatMulMatMul;functional_83_1/batch_normalization_3_1/batchnorm/add_1:z:05functional_83_1/dense_5_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,functional_83_1/dense_5_1/Add/ReadVariableOpReadVariableOp5functional_83_1_dense_5_1_add_readvariableop_resource*
_output_shapes
:*
dtype0�
functional_83_1/dense_5_1/AddAddV2*functional_83_1/dense_5_1/MatMul:product:04functional_83_1/dense_5_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������p
IdentityIdentity!functional_83_1/dense_5_1/Add:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp<^functional_83_1/batch_normalization_2_1/Cast/ReadVariableOp>^functional_83_1/batch_normalization_2_1/Cast_1/ReadVariableOp>^functional_83_1/batch_normalization_2_1/Cast_2/ReadVariableOp>^functional_83_1/batch_normalization_2_1/Cast_3/ReadVariableOp<^functional_83_1/batch_normalization_3_1/Cast/ReadVariableOp>^functional_83_1/batch_normalization_3_1/Cast_1/ReadVariableOp>^functional_83_1/batch_normalization_3_1/Cast_2/ReadVariableOp>^functional_83_1/batch_normalization_3_1/Cast_3/ReadVariableOp-^functional_83_1/dense_3_1/Add/ReadVariableOp.^functional_83_1/dense_3_1/Cast/ReadVariableOp-^functional_83_1/dense_4_1/Add/ReadVariableOp.^functional_83_1/dense_4_1/Cast/ReadVariableOp-^functional_83_1/dense_5_1/Add/ReadVariableOp.^functional_83_1/dense_5_1/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : : : : : 2z
;functional_83_1/batch_normalization_2_1/Cast/ReadVariableOp;functional_83_1/batch_normalization_2_1/Cast/ReadVariableOp2~
=functional_83_1/batch_normalization_2_1/Cast_1/ReadVariableOp=functional_83_1/batch_normalization_2_1/Cast_1/ReadVariableOp2~
=functional_83_1/batch_normalization_2_1/Cast_2/ReadVariableOp=functional_83_1/batch_normalization_2_1/Cast_2/ReadVariableOp2~
=functional_83_1/batch_normalization_2_1/Cast_3/ReadVariableOp=functional_83_1/batch_normalization_2_1/Cast_3/ReadVariableOp2z
;functional_83_1/batch_normalization_3_1/Cast/ReadVariableOp;functional_83_1/batch_normalization_3_1/Cast/ReadVariableOp2~
=functional_83_1/batch_normalization_3_1/Cast_1/ReadVariableOp=functional_83_1/batch_normalization_3_1/Cast_1/ReadVariableOp2~
=functional_83_1/batch_normalization_3_1/Cast_2/ReadVariableOp=functional_83_1/batch_normalization_3_1/Cast_2/ReadVariableOp2~
=functional_83_1/batch_normalization_3_1/Cast_3/ReadVariableOp=functional_83_1/batch_normalization_3_1/Cast_3/ReadVariableOp2\
,functional_83_1/dense_3_1/Add/ReadVariableOp,functional_83_1/dense_3_1/Add/ReadVariableOp2^
-functional_83_1/dense_3_1/Cast/ReadVariableOp-functional_83_1/dense_3_1/Cast/ReadVariableOp2\
,functional_83_1/dense_4_1/Add/ReadVariableOp,functional_83_1/dense_4_1/Add/ReadVariableOp2^
-functional_83_1/dense_4_1/Cast/ReadVariableOp-functional_83_1/dense_4_1/Cast/ReadVariableOp2\
,functional_83_1/dense_5_1/Add/ReadVariableOp,functional_83_1/dense_5_1/Add/ReadVariableOp2^
-functional_83_1/dense_5_1/Cast/ReadVariableOp-functional_83_1/dense_5_1/Cast/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
 __inference__traced_save_1986000
file_prefix,
"read_disablecopyonread_variable_35:	 .
$read_1_disablecopyonread_variable_34: 6
$read_2_disablecopyonread_variable_33: 6
$read_3_disablecopyonread_variable_32: 2
$read_4_disablecopyonread_variable_31: 2
$read_5_disablecopyonread_variable_30: 2
$read_6_disablecopyonread_variable_29: 2
$read_7_disablecopyonread_variable_28: 2
$read_8_disablecopyonread_variable_27: 2
$read_9_disablecopyonread_variable_26: 7
%read_10_disablecopyonread_variable_25: `7
%read_11_disablecopyonread_variable_24: `3
%read_12_disablecopyonread_variable_23:`3
%read_13_disablecopyonread_variable_22:`3
%read_14_disablecopyonread_variable_21:`3
%read_15_disablecopyonread_variable_20:`3
%read_16_disablecopyonread_variable_19:`3
%read_17_disablecopyonread_variable_18:`7
%read_18_disablecopyonread_variable_17:`7
%read_19_disablecopyonread_variable_16:`3
%read_20_disablecopyonread_variable_15:3
%read_21_disablecopyonread_variable_14:7
%read_22_disablecopyonread_variable_13: 3
%read_23_disablecopyonread_variable_12: 3
%read_24_disablecopyonread_variable_11: 3
%read_25_disablecopyonread_variable_10: 6
$read_26_disablecopyonread_variable_9: `2
$read_27_disablecopyonread_variable_8:`2
$read_28_disablecopyonread_variable_7:`2
$read_29_disablecopyonread_variable_6:`6
$read_30_disablecopyonread_variable_5:`2
$read_31_disablecopyonread_variable_4:2
$read_32_disablecopyonread_variable_3: 2
$read_33_disablecopyonread_variable_2: 2
$read_34_disablecopyonread_variable_1:`0
"read_35_disablecopyonread_variable:`
savev2_const
identity_73��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: e
Read/DisableCopyOnReadDisableCopyOnRead"read_disablecopyonread_variable_35*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp"read_disablecopyonread_variable_35^Read/DisableCopyOnRead*
_output_shapes
: *
dtype0	R
IdentityIdentityRead/ReadVariableOp:value:0*
T0	*
_output_shapes
: Y

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0	*
_output_shapes
: i
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_variable_34*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_variable_34^Read_1/DisableCopyOnRead*
_output_shapes
: *
dtype0V

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
: [

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_2/DisableCopyOnReadDisableCopyOnRead$read_2_disablecopyonread_variable_33*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp$read_2_disablecopyonread_variable_33^Read_2/DisableCopyOnRead*
_output_shapes

: *
dtype0^

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes

: c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

: i
Read_3/DisableCopyOnReadDisableCopyOnRead$read_3_disablecopyonread_variable_32*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp$read_3_disablecopyonread_variable_32^Read_3/DisableCopyOnRead*
_output_shapes

: *
dtype0^

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes

: c

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

: i
Read_4/DisableCopyOnReadDisableCopyOnRead$read_4_disablecopyonread_variable_31*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp$read_4_disablecopyonread_variable_31^Read_4/DisableCopyOnRead*
_output_shapes
: *
dtype0Z

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
: _

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_5/DisableCopyOnReadDisableCopyOnRead$read_5_disablecopyonread_variable_30*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp$read_5_disablecopyonread_variable_30^Read_5/DisableCopyOnRead*
_output_shapes
: *
dtype0[
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_6/DisableCopyOnReadDisableCopyOnRead$read_6_disablecopyonread_variable_29*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp$read_6_disablecopyonread_variable_29^Read_6/DisableCopyOnRead*
_output_shapes
: *
dtype0[
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_7/DisableCopyOnReadDisableCopyOnRead$read_7_disablecopyonread_variable_28*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp$read_7_disablecopyonread_variable_28^Read_7/DisableCopyOnRead*
_output_shapes
: *
dtype0[
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_8/DisableCopyOnReadDisableCopyOnRead$read_8_disablecopyonread_variable_27*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp$read_8_disablecopyonread_variable_27^Read_8/DisableCopyOnRead*
_output_shapes
: *
dtype0[
Identity_16IdentityRead_8/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_9/DisableCopyOnReadDisableCopyOnRead$read_9_disablecopyonread_variable_26*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp$read_9_disablecopyonread_variable_26^Read_9/DisableCopyOnRead*
_output_shapes
: *
dtype0[
Identity_18IdentityRead_9/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_10/DisableCopyOnReadDisableCopyOnRead%read_10_disablecopyonread_variable_25*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp%read_10_disablecopyonread_variable_25^Read_10/DisableCopyOnRead*
_output_shapes

: `*
dtype0`
Identity_20IdentityRead_10/ReadVariableOp:value:0*
T0*
_output_shapes

: `e
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

: `k
Read_11/DisableCopyOnReadDisableCopyOnRead%read_11_disablecopyonread_variable_24*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp%read_11_disablecopyonread_variable_24^Read_11/DisableCopyOnRead*
_output_shapes

: `*
dtype0`
Identity_22IdentityRead_11/ReadVariableOp:value:0*
T0*
_output_shapes

: `e
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes

: `k
Read_12/DisableCopyOnReadDisableCopyOnRead%read_12_disablecopyonread_variable_23*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp%read_12_disablecopyonread_variable_23^Read_12/DisableCopyOnRead*
_output_shapes
:`*
dtype0\
Identity_24IdentityRead_12/ReadVariableOp:value:0*
T0*
_output_shapes
:`a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:`k
Read_13/DisableCopyOnReadDisableCopyOnRead%read_13_disablecopyonread_variable_22*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp%read_13_disablecopyonread_variable_22^Read_13/DisableCopyOnRead*
_output_shapes
:`*
dtype0\
Identity_26IdentityRead_13/ReadVariableOp:value:0*
T0*
_output_shapes
:`a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:`k
Read_14/DisableCopyOnReadDisableCopyOnRead%read_14_disablecopyonread_variable_21*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp%read_14_disablecopyonread_variable_21^Read_14/DisableCopyOnRead*
_output_shapes
:`*
dtype0\
Identity_28IdentityRead_14/ReadVariableOp:value:0*
T0*
_output_shapes
:`a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:`k
Read_15/DisableCopyOnReadDisableCopyOnRead%read_15_disablecopyonread_variable_20*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp%read_15_disablecopyonread_variable_20^Read_15/DisableCopyOnRead*
_output_shapes
:`*
dtype0\
Identity_30IdentityRead_15/ReadVariableOp:value:0*
T0*
_output_shapes
:`a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:`k
Read_16/DisableCopyOnReadDisableCopyOnRead%read_16_disablecopyonread_variable_19*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp%read_16_disablecopyonread_variable_19^Read_16/DisableCopyOnRead*
_output_shapes
:`*
dtype0\
Identity_32IdentityRead_16/ReadVariableOp:value:0*
T0*
_output_shapes
:`a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:`k
Read_17/DisableCopyOnReadDisableCopyOnRead%read_17_disablecopyonread_variable_18*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp%read_17_disablecopyonread_variable_18^Read_17/DisableCopyOnRead*
_output_shapes
:`*
dtype0\
Identity_34IdentityRead_17/ReadVariableOp:value:0*
T0*
_output_shapes
:`a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:`k
Read_18/DisableCopyOnReadDisableCopyOnRead%read_18_disablecopyonread_variable_17*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp%read_18_disablecopyonread_variable_17^Read_18/DisableCopyOnRead*
_output_shapes

:`*
dtype0`
Identity_36IdentityRead_18/ReadVariableOp:value:0*
T0*
_output_shapes

:`e
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes

:`k
Read_19/DisableCopyOnReadDisableCopyOnRead%read_19_disablecopyonread_variable_16*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp%read_19_disablecopyonread_variable_16^Read_19/DisableCopyOnRead*
_output_shapes

:`*
dtype0`
Identity_38IdentityRead_19/ReadVariableOp:value:0*
T0*
_output_shapes

:`e
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes

:`k
Read_20/DisableCopyOnReadDisableCopyOnRead%read_20_disablecopyonread_variable_15*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp%read_20_disablecopyonread_variable_15^Read_20/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_40IdentityRead_20/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_21/DisableCopyOnReadDisableCopyOnRead%read_21_disablecopyonread_variable_14*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp%read_21_disablecopyonread_variable_14^Read_21/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_42IdentityRead_21/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_22/DisableCopyOnReadDisableCopyOnRead%read_22_disablecopyonread_variable_13*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp%read_22_disablecopyonread_variable_13^Read_22/DisableCopyOnRead*
_output_shapes

: *
dtype0`
Identity_44IdentityRead_22/ReadVariableOp:value:0*
T0*
_output_shapes

: e
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes

: k
Read_23/DisableCopyOnReadDisableCopyOnRead%read_23_disablecopyonread_variable_12*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp%read_23_disablecopyonread_variable_12^Read_23/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_46IdentityRead_23/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_24/DisableCopyOnReadDisableCopyOnRead%read_24_disablecopyonread_variable_11*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp%read_24_disablecopyonread_variable_11^Read_24/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_48IdentityRead_24/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
: k
Read_25/DisableCopyOnReadDisableCopyOnRead%read_25_disablecopyonread_variable_10*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp%read_25_disablecopyonread_variable_10^Read_25/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_50IdentityRead_25/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
: j
Read_26/DisableCopyOnReadDisableCopyOnRead$read_26_disablecopyonread_variable_9*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp$read_26_disablecopyonread_variable_9^Read_26/DisableCopyOnRead*
_output_shapes

: `*
dtype0`
Identity_52IdentityRead_26/ReadVariableOp:value:0*
T0*
_output_shapes

: `e
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes

: `j
Read_27/DisableCopyOnReadDisableCopyOnRead$read_27_disablecopyonread_variable_8*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp$read_27_disablecopyonread_variable_8^Read_27/DisableCopyOnRead*
_output_shapes
:`*
dtype0\
Identity_54IdentityRead_27/ReadVariableOp:value:0*
T0*
_output_shapes
:`a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:`j
Read_28/DisableCopyOnReadDisableCopyOnRead$read_28_disablecopyonread_variable_7*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp$read_28_disablecopyonread_variable_7^Read_28/DisableCopyOnRead*
_output_shapes
:`*
dtype0\
Identity_56IdentityRead_28/ReadVariableOp:value:0*
T0*
_output_shapes
:`a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:`j
Read_29/DisableCopyOnReadDisableCopyOnRead$read_29_disablecopyonread_variable_6*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp$read_29_disablecopyonread_variable_6^Read_29/DisableCopyOnRead*
_output_shapes
:`*
dtype0\
Identity_58IdentityRead_29/ReadVariableOp:value:0*
T0*
_output_shapes
:`a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:`j
Read_30/DisableCopyOnReadDisableCopyOnRead$read_30_disablecopyonread_variable_5*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp$read_30_disablecopyonread_variable_5^Read_30/DisableCopyOnRead*
_output_shapes

:`*
dtype0`
Identity_60IdentityRead_30/ReadVariableOp:value:0*
T0*
_output_shapes

:`e
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes

:`j
Read_31/DisableCopyOnReadDisableCopyOnRead$read_31_disablecopyonread_variable_4*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp$read_31_disablecopyonread_variable_4^Read_31/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_62IdentityRead_31/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:j
Read_32/DisableCopyOnReadDisableCopyOnRead$read_32_disablecopyonread_variable_3*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp$read_32_disablecopyonread_variable_3^Read_32/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_64IdentityRead_32/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
: j
Read_33/DisableCopyOnReadDisableCopyOnRead$read_33_disablecopyonread_variable_2*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp$read_33_disablecopyonread_variable_2^Read_33/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_66IdentityRead_33/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
: j
Read_34/DisableCopyOnReadDisableCopyOnRead$read_34_disablecopyonread_variable_1*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp$read_34_disablecopyonread_variable_1^Read_34/DisableCopyOnRead*
_output_shapes
:`*
dtype0\
Identity_68IdentityRead_34/ReadVariableOp:value:0*
T0*
_output_shapes
:`a
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:`h
Read_35/DisableCopyOnReadDisableCopyOnRead"read_35_disablecopyonread_variable*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp"read_35_disablecopyonread_variable^Read_35/DisableCopyOnRead*
_output_shapes
:`*
dtype0\
Identity_70IdentityRead_35/ReadVariableOp:value:0*
T0*
_output_shapes
:`a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:`L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*�
value�B�%B0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB0_layers/2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB4_layers/2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB0_layers/5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB4_layers/5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *3
dtypes)
'2%	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_72Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_73IdentityIdentity_72:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_73Identity_73:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=%9

_output_shapes
: 

_user_specified_nameConst:($$
"
_user_specified_name
Variable:*#&
$
_user_specified_name
Variable_1:*"&
$
_user_specified_name
Variable_2:*!&
$
_user_specified_name
Variable_3:* &
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_9:+'
%
_user_specified_nameVariable_10:+'
%
_user_specified_nameVariable_11:+'
%
_user_specified_nameVariable_12:+'
%
_user_specified_nameVariable_13:+'
%
_user_specified_nameVariable_14:+'
%
_user_specified_nameVariable_15:+'
%
_user_specified_nameVariable_16:+'
%
_user_specified_nameVariable_17:+'
%
_user_specified_nameVariable_18:+'
%
_user_specified_nameVariable_19:+'
%
_user_specified_nameVariable_20:+'
%
_user_specified_nameVariable_21:+'
%
_user_specified_nameVariable_22:+'
%
_user_specified_nameVariable_23:+'
%
_user_specified_nameVariable_24:+'
%
_user_specified_nameVariable_25:+
'
%
_user_specified_nameVariable_26:+	'
%
_user_specified_nameVariable_27:+'
%
_user_specified_nameVariable_28:+'
%
_user_specified_nameVariable_29:+'
%
_user_specified_nameVariable_30:+'
%
_user_specified_nameVariable_31:+'
%
_user_specified_nameVariable_32:+'
%
_user_specified_nameVariable_33:+'
%
_user_specified_nameVariable_34:+'
%
_user_specified_nameVariable_35:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
5__inference_signature_wrapper_serving_default_1985538

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: `
	unknown_6:`
	unknown_7:`
	unknown_8:`
	unknown_9:`

unknown_10:`

unknown_11:`

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_serving_default_1985504o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1985534:'#
!
_user_specified_name	1985532:'#
!
_user_specified_name	1985530:'#
!
_user_specified_name	1985528:'
#
!
_user_specified_name	1985526:'	#
!
_user_specified_name	1985524:'#
!
_user_specified_name	1985522:'#
!
_user_specified_name	1985520:'#
!
_user_specified_name	1985518:'#
!
_user_specified_name	1985516:'#
!
_user_specified_name	1985514:'#
!
_user_specified_name	1985512:'#
!
_user_specified_name	1985510:'#
!
_user_specified_name	1985508:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
#__inference__traced_restore_1986117
file_prefix&
assignvariableop_variable_35:	 (
assignvariableop_1_variable_34: 0
assignvariableop_2_variable_33: 0
assignvariableop_3_variable_32: ,
assignvariableop_4_variable_31: ,
assignvariableop_5_variable_30: ,
assignvariableop_6_variable_29: ,
assignvariableop_7_variable_28: ,
assignvariableop_8_variable_27: ,
assignvariableop_9_variable_26: 1
assignvariableop_10_variable_25: `1
assignvariableop_11_variable_24: `-
assignvariableop_12_variable_23:`-
assignvariableop_13_variable_22:`-
assignvariableop_14_variable_21:`-
assignvariableop_15_variable_20:`-
assignvariableop_16_variable_19:`-
assignvariableop_17_variable_18:`1
assignvariableop_18_variable_17:`1
assignvariableop_19_variable_16:`-
assignvariableop_20_variable_15:-
assignvariableop_21_variable_14:1
assignvariableop_22_variable_13: -
assignvariableop_23_variable_12: -
assignvariableop_24_variable_11: -
assignvariableop_25_variable_10: 0
assignvariableop_26_variable_9: `,
assignvariableop_27_variable_8:`,
assignvariableop_28_variable_7:`,
assignvariableop_29_variable_6:`0
assignvariableop_30_variable_5:`,
assignvariableop_31_variable_4:,
assignvariableop_32_variable_3: ,
assignvariableop_33_variable_2: ,
assignvariableop_34_variable_1:`*
assignvariableop_35_variable:`
identity_37��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*�
value�B�%B0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB0_layers/2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB4_layers/2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB0_layers/5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB4_layers/5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_35Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_34Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_33Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_32Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_31Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_30Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_29Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_28Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_variable_27Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_variable_26Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_variable_25Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_variable_24Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_variable_23Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_variable_22Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_variable_21Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_variable_20Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_variable_19Identity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_variable_18Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_variable_17Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_variable_16Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_variable_15Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_variable_14Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_variable_13Identity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_variable_12Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_variable_11Identity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_variable_10Identity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_variable_9Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_variable_8Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_variable_7Identity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_variable_6Identity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpassignvariableop_30_variable_5Identity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpassignvariableop_31_variable_4Identity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpassignvariableop_32_variable_3Identity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpassignvariableop_33_variable_2Identity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpassignvariableop_34_variable_1Identity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpassignvariableop_35_variableIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_37Identity_37:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:($$
"
_user_specified_name
Variable:*#&
$
_user_specified_name
Variable_1:*"&
$
_user_specified_name
Variable_2:*!&
$
_user_specified_name
Variable_3:* &
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_9:+'
%
_user_specified_nameVariable_10:+'
%
_user_specified_nameVariable_11:+'
%
_user_specified_nameVariable_12:+'
%
_user_specified_nameVariable_13:+'
%
_user_specified_nameVariable_14:+'
%
_user_specified_nameVariable_15:+'
%
_user_specified_nameVariable_16:+'
%
_user_specified_nameVariable_17:+'
%
_user_specified_nameVariable_18:+'
%
_user_specified_nameVariable_19:+'
%
_user_specified_nameVariable_20:+'
%
_user_specified_nameVariable_21:+'
%
_user_specified_nameVariable_22:+'
%
_user_specified_nameVariable_23:+'
%
_user_specified_nameVariable_24:+'
%
_user_specified_nameVariable_25:+
'
%
_user_specified_nameVariable_26:+	'
%
_user_specified_nameVariable_27:+'
%
_user_specified_nameVariable_28:+'
%
_user_specified_nameVariable_29:+'
%
_user_specified_nameVariable_30:+'
%
_user_specified_nameVariable_31:+'
%
_user_specified_nameVariable_32:+'
%
_user_specified_nameVariable_33:+'
%
_user_specified_nameVariable_34:+'
%
_user_specified_nameVariable_35:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
9
inputs/
serving_default_inputs:0���������<
output_00
StatefulPartitionedCall:0���������tensorflow/serving/predict:�>
�
_functional
	optimizer
_default_save_signature
_inbound_nodes
_outbound_nodes
_losses
	_loss_ids
_losses_override
	_layers

_build_shapes_dict

signatures"
_generic_user_object
�
_tracked
_inbound_nodes
_outbound_nodes
_losses
_losses_override
_operations
_layers
_build_shapes_dict
output_names
_default_save_signature"
_generic_user_object
�

_variables
_trainable_variables
 _trainable_variables_indices
_iterations
_learning_rate

_momentums
_velocities"
_generic_user_object
�
trace_02�
#__inference_serving_default_1985504�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
����������ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
 2
!3
"4
#5
$6
%7"
trackable_list_wrapper
 "
trackable_dict_wrapper
,
&serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
 2
!3
"4
#5
$6
%7"
trackable_list_wrapper
X
0
1
 2
!3
"4
#5
$6
%7"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�
'trace_02�
#__inference_serving_default_1985606�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
����������z'trace_0
�
0
1
(2
)3
*4
+5
,6
-7
.8
/9
010
111
212
313
414
515
616
717
818
919
:20
;21"
trackable_list_wrapper
f
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9"
trackable_list_wrapper
 "
trackable_dict_wrapper
:	 2adamw/iteration
: 2adamw/learning_rate
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�B�
#__inference_serving_default_1985504inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
y
F_inbound_nodes
G_outbound_nodes
H_losses
I	_loss_ids
J_losses_override"
_generic_user_object
�
<_kernel
=bias
K_inbound_nodes
L_outbound_nodes
M_losses
N	_loss_ids
O_losses_override
P_build_shapes_dict"
_generic_user_object
�
	>gamma
?beta
Qmoving_mean
Rmoving_variance
S_inbound_nodes
T_outbound_nodes
U_losses
V	_loss_ids
W_losses_override
X_reduction_axes
Y_build_shapes_dict"
_generic_user_object
�
Z_inbound_nodes
[_outbound_nodes
\_losses
]	_loss_ids
^_losses_override
__build_shapes_dict"
_generic_user_object
�
@_kernel
Abias
`_inbound_nodes
a_outbound_nodes
b_losses
c	_loss_ids
d_losses_override
e_build_shapes_dict"
_generic_user_object
�
	Bgamma
Cbeta
fmoving_mean
gmoving_variance
h_inbound_nodes
i_outbound_nodes
j_losses
k	_loss_ids
l_losses_override
m_reduction_axes
n_build_shapes_dict"
_generic_user_object
�
o_inbound_nodes
p_outbound_nodes
q_losses
r	_loss_ids
s_losses_override
t_build_shapes_dict"
_generic_user_object
�
D_kernel
Ebias
u_inbound_nodes
v_outbound_nodes
w_losses
x	_loss_ids
y_losses_override
z_build_shapes_dict"
_generic_user_object
�B�
5__inference_signature_wrapper_serving_default_1985538inputs"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs�

jinputs
kwonlydefaults
 
annotations� *
 
�B�
#__inference_serving_default_1985606inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
-:+ 2adamw/dense_3_kernel_momentum
-:+ 2adamw/dense_3_kernel_velocity
':% 2adamw/dense_3_bias_momentum
':% 2adamw/dense_3_bias_velocity
6:4 2*adamw/batch_normalization_2_gamma_momentum
6:4 2*adamw/batch_normalization_2_gamma_velocity
5:3 2)adamw/batch_normalization_2_beta_momentum
5:3 2)adamw/batch_normalization_2_beta_velocity
-:+ `2adamw/dense_4_kernel_momentum
-:+ `2adamw/dense_4_kernel_velocity
':%`2adamw/dense_4_bias_momentum
':%`2adamw/dense_4_bias_velocity
6:4`2*adamw/batch_normalization_3_gamma_momentum
6:4`2*adamw/batch_normalization_3_gamma_velocity
5:3`2)adamw/batch_normalization_3_beta_momentum
5:3`2)adamw/batch_normalization_3_beta_velocity
-:+`2adamw/dense_5_kernel_momentum
-:+`2adamw/dense_5_kernel_velocity
':%2adamw/dense_5_bias_momentum
':%2adamw/dense_5_bias_velocity
 : 2dense_3/kernel
: 2dense_3/bias
):' 2batch_normalization_2/gamma
(:& 2batch_normalization_2/beta
 : `2dense_4/kernel
:`2dense_4/bias
):'`2batch_normalization_3/gamma
(:&`2batch_normalization_3/beta
 :`2dense_5/kernel
:2dense_5/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
-:+ 2!batch_normalization_2/moving_mean
1:/ 2%batch_normalization_2/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
trackable_list_wrapper
 "
trackable_dict_wrapper
-:+`2!batch_normalization_3/moving_mean
1:/`2%batch_normalization_3/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
trackable_list_wrapper
 "
trackable_dict_wrapper�
#__inference_serving_default_1985504d<=QR>?@AfgBCDE/�,
%�"
 �
inputs���������
� "!�
unknown����������
#__inference_serving_default_1985606d<=QR>?@AfgBCDE/�,
%�"
 �
inputs���������
� "!�
unknown����������
5__inference_signature_wrapper_serving_default_1985538�<=QR>?@AfgBCDE9�6
� 
/�,
*
inputs �
inputs���������"3�0
.
output_0"�
output_0���������