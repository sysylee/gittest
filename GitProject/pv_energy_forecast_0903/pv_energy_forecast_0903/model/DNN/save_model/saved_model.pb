??+
??
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
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
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
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
;
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8??&
}
dense_207/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*!
shared_namedense_207/kernel
v
$dense_207/kernel/Read/ReadVariableOpReadVariableOpdense_207/kernel*
_output_shapes
:	?*
dtype0
u
dense_207/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_207/bias
n
"dense_207/bias/Read/ReadVariableOpReadVariableOpdense_207/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_177/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_177/gamma
?
1batch_normalization_177/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_177/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_177/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_177/beta
?
0batch_normalization_177/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_177/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_177/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_177/moving_mean
?
7batch_normalization_177/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_177/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_177/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_177/moving_variance
?
;batch_normalization_177/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_177/moving_variance*
_output_shapes	
:?*
dtype0
}
dense_208/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*!
shared_namedense_208/kernel
v
$dense_208/kernel/Read/ReadVariableOpReadVariableOpdense_208/kernel*
_output_shapes
:	?d*
dtype0
t
dense_208/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_208/bias
m
"dense_208/bias/Read/ReadVariableOpReadVariableOpdense_208/bias*
_output_shapes
:d*
dtype0
?
batch_normalization_178/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*.
shared_namebatch_normalization_178/gamma
?
1batch_normalization_178/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_178/gamma*
_output_shapes
:d*
dtype0
?
batch_normalization_178/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*-
shared_namebatch_normalization_178/beta
?
0batch_normalization_178/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_178/beta*
_output_shapes
:d*
dtype0
?
#batch_normalization_178/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*4
shared_name%#batch_normalization_178/moving_mean
?
7batch_normalization_178/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_178/moving_mean*
_output_shapes
:d*
dtype0
?
'batch_normalization_178/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*8
shared_name)'batch_normalization_178/moving_variance
?
;batch_normalization_178/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_178/moving_variance*
_output_shapes
:d*
dtype0
|
dense_209/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*!
shared_namedense_209/kernel
u
$dense_209/kernel/Read/ReadVariableOpReadVariableOpdense_209/kernel*
_output_shapes

:d2*
dtype0
t
dense_209/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_209/bias
m
"dense_209/bias/Read/ReadVariableOpReadVariableOpdense_209/bias*
_output_shapes
:2*
dtype0
?
batch_normalization_179/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*.
shared_namebatch_normalization_179/gamma
?
1batch_normalization_179/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_179/gamma*
_output_shapes
:2*
dtype0
?
batch_normalization_179/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*-
shared_namebatch_normalization_179/beta
?
0batch_normalization_179/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_179/beta*
_output_shapes
:2*
dtype0
?
#batch_normalization_179/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*4
shared_name%#batch_normalization_179/moving_mean
?
7batch_normalization_179/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_179/moving_mean*
_output_shapes
:2*
dtype0
?
'batch_normalization_179/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*8
shared_name)'batch_normalization_179/moving_variance
?
;batch_normalization_179/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_179/moving_variance*
_output_shapes
:2*
dtype0
|
dense_210/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*!
shared_namedense_210/kernel
u
$dense_210/kernel/Read/ReadVariableOpReadVariableOpdense_210/kernel*
_output_shapes

:2*
dtype0
t
dense_210/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_210/bias
m
"dense_210/bias/Read/ReadVariableOpReadVariableOpdense_210/bias*
_output_shapes
:*
dtype0
?
batch_normalization_180/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_180/gamma
?
1batch_normalization_180/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_180/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_180/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_180/beta
?
0batch_normalization_180/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_180/beta*
_output_shapes
:*
dtype0
?
#batch_normalization_180/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_180/moving_mean
?
7batch_normalization_180/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_180/moving_mean*
_output_shapes
:*
dtype0
?
'batch_normalization_180/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_180/moving_variance
?
;batch_normalization_180/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_180/moving_variance*
_output_shapes
:*
dtype0
|
dense_211/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_211/kernel
u
$dense_211/kernel/Read/ReadVariableOpReadVariableOpdense_211/kernel*
_output_shapes

:*
dtype0
t
dense_211/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_211/bias
m
"dense_211/bias/Read/ReadVariableOpReadVariableOpdense_211/bias*
_output_shapes
:*
dtype0
?
batch_normalization_181/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namebatch_normalization_181/gamma
?
1batch_normalization_181/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_181/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_181/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_181/beta
?
0batch_normalization_181/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_181/beta*
_output_shapes
:*
dtype0
?
#batch_normalization_181/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_181/moving_mean
?
7batch_normalization_181/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_181/moving_mean*
_output_shapes
:*
dtype0
?
'batch_normalization_181/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'batch_normalization_181/moving_variance
?
;batch_normalization_181/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_181/moving_variance*
_output_shapes
:*
dtype0
|
dense_212/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_212/kernel
u
$dense_212/kernel/Read/ReadVariableOpReadVariableOpdense_212/kernel*
_output_shapes

:*
dtype0
t
dense_212/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_212/bias
m
"dense_212/bias/Read/ReadVariableOpReadVariableOpdense_212/bias*
_output_shapes
:*
dtype0
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
?
Adam/dense_207/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*(
shared_nameAdam/dense_207/kernel/m
?
+Adam/dense_207/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_207/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/dense_207/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_207/bias/m
|
)Adam/dense_207/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_207/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/batch_normalization_177/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/batch_normalization_177/gamma/m
?
8Adam/batch_normalization_177/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_177/gamma/m*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_177/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_177/beta/m
?
7Adam/batch_normalization_177/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_177/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_208/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*(
shared_nameAdam/dense_208/kernel/m
?
+Adam/dense_208/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_208/kernel/m*
_output_shapes
:	?d*
dtype0
?
Adam/dense_208/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_nameAdam/dense_208/bias/m
{
)Adam/dense_208/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_208/bias/m*
_output_shapes
:d*
dtype0
?
$Adam/batch_normalization_178/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*5
shared_name&$Adam/batch_normalization_178/gamma/m
?
8Adam/batch_normalization_178/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_178/gamma/m*
_output_shapes
:d*
dtype0
?
#Adam/batch_normalization_178/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*4
shared_name%#Adam/batch_normalization_178/beta/m
?
7Adam/batch_normalization_178/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_178/beta/m*
_output_shapes
:d*
dtype0
?
Adam/dense_209/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*(
shared_nameAdam/dense_209/kernel/m
?
+Adam/dense_209/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_209/kernel/m*
_output_shapes

:d2*
dtype0
?
Adam/dense_209/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*&
shared_nameAdam/dense_209/bias/m
{
)Adam/dense_209/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_209/bias/m*
_output_shapes
:2*
dtype0
?
$Adam/batch_normalization_179/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*5
shared_name&$Adam/batch_normalization_179/gamma/m
?
8Adam/batch_normalization_179/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_179/gamma/m*
_output_shapes
:2*
dtype0
?
#Adam/batch_normalization_179/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*4
shared_name%#Adam/batch_normalization_179/beta/m
?
7Adam/batch_normalization_179/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_179/beta/m*
_output_shapes
:2*
dtype0
?
Adam/dense_210/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*(
shared_nameAdam/dense_210/kernel/m
?
+Adam/dense_210/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_210/kernel/m*
_output_shapes

:2*
dtype0
?
Adam/dense_210/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_210/bias/m
{
)Adam/dense_210/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_210/bias/m*
_output_shapes
:*
dtype0
?
$Adam/batch_normalization_180/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_180/gamma/m
?
8Adam/batch_normalization_180/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_180/gamma/m*
_output_shapes
:*
dtype0
?
#Adam/batch_normalization_180/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_180/beta/m
?
7Adam/batch_normalization_180/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_180/beta/m*
_output_shapes
:*
dtype0
?
Adam/dense_211/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_211/kernel/m
?
+Adam/dense_211/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_211/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_211/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_211/bias/m
{
)Adam/dense_211/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_211/bias/m*
_output_shapes
:*
dtype0
?
$Adam/batch_normalization_181/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_181/gamma/m
?
8Adam/batch_normalization_181/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_181/gamma/m*
_output_shapes
:*
dtype0
?
#Adam/batch_normalization_181/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_181/beta/m
?
7Adam/batch_normalization_181/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_181/beta/m*
_output_shapes
:*
dtype0
?
Adam/dense_212/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_212/kernel/m
?
+Adam/dense_212/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_212/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_212/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_212/bias/m
{
)Adam/dense_212/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_212/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_207/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*(
shared_nameAdam/dense_207/kernel/v
?
+Adam/dense_207/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_207/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/dense_207/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_207/bias/v
|
)Adam/dense_207/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_207/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/batch_normalization_177/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/batch_normalization_177/gamma/v
?
8Adam/batch_normalization_177/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_177/gamma/v*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_177/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_177/beta/v
?
7Adam/batch_normalization_177/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_177/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_208/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*(
shared_nameAdam/dense_208/kernel/v
?
+Adam/dense_208/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_208/kernel/v*
_output_shapes
:	?d*
dtype0
?
Adam/dense_208/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_nameAdam/dense_208/bias/v
{
)Adam/dense_208/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_208/bias/v*
_output_shapes
:d*
dtype0
?
$Adam/batch_normalization_178/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*5
shared_name&$Adam/batch_normalization_178/gamma/v
?
8Adam/batch_normalization_178/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_178/gamma/v*
_output_shapes
:d*
dtype0
?
#Adam/batch_normalization_178/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*4
shared_name%#Adam/batch_normalization_178/beta/v
?
7Adam/batch_normalization_178/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_178/beta/v*
_output_shapes
:d*
dtype0
?
Adam/dense_209/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*(
shared_nameAdam/dense_209/kernel/v
?
+Adam/dense_209/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_209/kernel/v*
_output_shapes

:d2*
dtype0
?
Adam/dense_209/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*&
shared_nameAdam/dense_209/bias/v
{
)Adam/dense_209/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_209/bias/v*
_output_shapes
:2*
dtype0
?
$Adam/batch_normalization_179/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*5
shared_name&$Adam/batch_normalization_179/gamma/v
?
8Adam/batch_normalization_179/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_179/gamma/v*
_output_shapes
:2*
dtype0
?
#Adam/batch_normalization_179/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*4
shared_name%#Adam/batch_normalization_179/beta/v
?
7Adam/batch_normalization_179/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_179/beta/v*
_output_shapes
:2*
dtype0
?
Adam/dense_210/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*(
shared_nameAdam/dense_210/kernel/v
?
+Adam/dense_210/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_210/kernel/v*
_output_shapes

:2*
dtype0
?
Adam/dense_210/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_210/bias/v
{
)Adam/dense_210/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_210/bias/v*
_output_shapes
:*
dtype0
?
$Adam/batch_normalization_180/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_180/gamma/v
?
8Adam/batch_normalization_180/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_180/gamma/v*
_output_shapes
:*
dtype0
?
#Adam/batch_normalization_180/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_180/beta/v
?
7Adam/batch_normalization_180/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_180/beta/v*
_output_shapes
:*
dtype0
?
Adam/dense_211/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_211/kernel/v
?
+Adam/dense_211/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_211/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_211/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_211/bias/v
{
)Adam/dense_211/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_211/bias/v*
_output_shapes
:*
dtype0
?
$Adam/batch_normalization_181/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/batch_normalization_181/gamma/v
?
8Adam/batch_normalization_181/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_181/gamma/v*
_output_shapes
:*
dtype0
?
#Adam/batch_normalization_181/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_181/beta/v
?
7Adam/batch_normalization_181/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_181/beta/v*
_output_shapes
:*
dtype0
?
Adam/dense_212/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_212/kernel/v
?
+Adam/dense_212/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_212/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_212/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_212/bias/v
{
)Adam/dense_212/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_212/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
?
axis
	gamma
beta
 moving_mean
!moving_variance
"regularization_losses
#trainable_variables
$	variables
%	keras_api
R
&regularization_losses
'trainable_variables
(	variables
)	keras_api
h

*kernel
+bias
,regularization_losses
-trainable_variables
.	variables
/	keras_api
?
0axis
	1gamma
2beta
3moving_mean
4moving_variance
5regularization_losses
6trainable_variables
7	variables
8	keras_api
R
9regularization_losses
:trainable_variables
;	variables
<	keras_api
h

=kernel
>bias
?regularization_losses
@trainable_variables
A	variables
B	keras_api
?
Caxis
	Dgamma
Ebeta
Fmoving_mean
Gmoving_variance
Hregularization_losses
Itrainable_variables
J	variables
K	keras_api
R
Lregularization_losses
Mtrainable_variables
N	variables
O	keras_api
h

Pkernel
Qbias
Rregularization_losses
Strainable_variables
T	variables
U	keras_api
?
Vaxis
	Wgamma
Xbeta
Ymoving_mean
Zmoving_variance
[regularization_losses
\trainable_variables
]	variables
^	keras_api
R
_regularization_losses
`trainable_variables
a	variables
b	keras_api
h

ckernel
dbias
eregularization_losses
ftrainable_variables
g	variables
h	keras_api
?
iaxis
	jgamma
kbeta
lmoving_mean
mmoving_variance
nregularization_losses
otrainable_variables
p	variables
q	keras_api
R
rregularization_losses
strainable_variables
t	variables
u	keras_api
h

vkernel
wbias
xregularization_losses
ytrainable_variables
z	variables
{	keras_api
?
|iter

}beta_1

~beta_2
	decay
?learning_ratem?m?m?m?*m?+m?1m?2m?=m?>m?Dm?Em?Pm?Qm?Wm?Xm?cm?dm?jm?km?vm?wm?v?v?v?v?*v?+v?1v?2v?=v?>v?Dv?Ev?Pv?Qv?Wv?Xv?cv?dv?jv?kv?vv?wv?
 
?
0
1
2
3
*4
+5
16
27
=8
>9
D10
E11
P12
Q13
W14
X15
c16
d17
j18
k19
v20
w21
?
0
1
2
3
 4
!5
*6
+7
18
29
310
411
=12
>13
D14
E15
F16
G17
P18
Q19
W20
X21
Y22
Z23
c24
d25
j26
k27
l28
m29
v30
w31
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
regularization_losses
trainable_variables
	variables
 
\Z
VARIABLE_VALUEdense_207/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_207/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
regularization_losses
trainable_variables
	variables
 
hf
VARIABLE_VALUEbatch_normalization_177/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_177/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_177/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_177/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
 2
!3
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
"regularization_losses
#trainable_variables
$	variables
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
&regularization_losses
'trainable_variables
(	variables
\Z
VARIABLE_VALUEdense_208/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_208/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

*0
+1

*0
+1
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
,regularization_losses
-trainable_variables
.	variables
 
hf
VARIABLE_VALUEbatch_normalization_178/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_178/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_178/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_178/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

10
21

10
21
32
43
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
5regularization_losses
6trainable_variables
7	variables
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
9regularization_losses
:trainable_variables
;	variables
\Z
VARIABLE_VALUEdense_209/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_209/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

=0
>1

=0
>1
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?regularization_losses
@trainable_variables
A	variables
 
hf
VARIABLE_VALUEbatch_normalization_179/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_179/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_179/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_179/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

D0
E1

D0
E1
F2
G3
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Hregularization_losses
Itrainable_variables
J	variables
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Lregularization_losses
Mtrainable_variables
N	variables
\Z
VARIABLE_VALUEdense_210/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_210/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

P0
Q1

P0
Q1
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Rregularization_losses
Strainable_variables
T	variables
 
hf
VARIABLE_VALUEbatch_normalization_180/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_180/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_180/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_180/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

W0
X1

W0
X1
Y2
Z3
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
[regularization_losses
\trainable_variables
]	variables
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
_regularization_losses
`trainable_variables
a	variables
\Z
VARIABLE_VALUEdense_211/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_211/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

c0
d1

c0
d1
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
eregularization_losses
ftrainable_variables
g	variables
 
hf
VARIABLE_VALUEbatch_normalization_181/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_181/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_181/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_181/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

j0
k1

j0
k1
l2
m3
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
nregularization_losses
otrainable_variables
p	variables
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
rregularization_losses
strainable_variables
t	variables
][
VARIABLE_VALUEdense_212/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEdense_212/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
 

v0
w1

v0
w1
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
xregularization_losses
ytrainable_variables
z	variables
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
F
 0
!1
32
43
F4
G5
Y6
Z7
l8
m9
v
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15

?0
 
 
 
 
 
 
 

 0
!1
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

30
41
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

F0
G1
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

Y0
Z1
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

l0
m1
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
8

?total

?count
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
}
VARIABLE_VALUEAdam/dense_207/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_207/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_177/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_177/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_208/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_208/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_178/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_178/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_209/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_209/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_179/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_179/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_210/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_210/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_180/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_180/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_211/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_211/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_181/gamma/mQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_181/beta/mPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/dense_212/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_212/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_207/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_207/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_177/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_177/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_208/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_208/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_178/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_178/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_209/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_209/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_179/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_179/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_210/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_210/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_180/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_180/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_211/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_211/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_181/gamma/vQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_181/beta/vPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/dense_212/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense_212/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_dense_207_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?

StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_207_inputdense_207/kerneldense_207/bias'batch_normalization_177/moving_variancebatch_normalization_177/gamma#batch_normalization_177/moving_meanbatch_normalization_177/betadense_208/kerneldense_208/bias'batch_normalization_178/moving_variancebatch_normalization_178/gamma#batch_normalization_178/moving_meanbatch_normalization_178/betadense_209/kerneldense_209/bias'batch_normalization_179/moving_variancebatch_normalization_179/gamma#batch_normalization_179/moving_meanbatch_normalization_179/betadense_210/kerneldense_210/bias'batch_normalization_180/moving_variancebatch_normalization_180/gamma#batch_normalization_180/moving_meanbatch_normalization_180/betadense_211/kerneldense_211/bias'batch_normalization_181/moving_variancebatch_normalization_181/gamma#batch_normalization_181/moving_meanbatch_normalization_181/betadense_212/kerneldense_212/bias*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_299976
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?!
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_207/kernel/Read/ReadVariableOp"dense_207/bias/Read/ReadVariableOp1batch_normalization_177/gamma/Read/ReadVariableOp0batch_normalization_177/beta/Read/ReadVariableOp7batch_normalization_177/moving_mean/Read/ReadVariableOp;batch_normalization_177/moving_variance/Read/ReadVariableOp$dense_208/kernel/Read/ReadVariableOp"dense_208/bias/Read/ReadVariableOp1batch_normalization_178/gamma/Read/ReadVariableOp0batch_normalization_178/beta/Read/ReadVariableOp7batch_normalization_178/moving_mean/Read/ReadVariableOp;batch_normalization_178/moving_variance/Read/ReadVariableOp$dense_209/kernel/Read/ReadVariableOp"dense_209/bias/Read/ReadVariableOp1batch_normalization_179/gamma/Read/ReadVariableOp0batch_normalization_179/beta/Read/ReadVariableOp7batch_normalization_179/moving_mean/Read/ReadVariableOp;batch_normalization_179/moving_variance/Read/ReadVariableOp$dense_210/kernel/Read/ReadVariableOp"dense_210/bias/Read/ReadVariableOp1batch_normalization_180/gamma/Read/ReadVariableOp0batch_normalization_180/beta/Read/ReadVariableOp7batch_normalization_180/moving_mean/Read/ReadVariableOp;batch_normalization_180/moving_variance/Read/ReadVariableOp$dense_211/kernel/Read/ReadVariableOp"dense_211/bias/Read/ReadVariableOp1batch_normalization_181/gamma/Read/ReadVariableOp0batch_normalization_181/beta/Read/ReadVariableOp7batch_normalization_181/moving_mean/Read/ReadVariableOp;batch_normalization_181/moving_variance/Read/ReadVariableOp$dense_212/kernel/Read/ReadVariableOp"dense_212/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_207/kernel/m/Read/ReadVariableOp)Adam/dense_207/bias/m/Read/ReadVariableOp8Adam/batch_normalization_177/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_177/beta/m/Read/ReadVariableOp+Adam/dense_208/kernel/m/Read/ReadVariableOp)Adam/dense_208/bias/m/Read/ReadVariableOp8Adam/batch_normalization_178/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_178/beta/m/Read/ReadVariableOp+Adam/dense_209/kernel/m/Read/ReadVariableOp)Adam/dense_209/bias/m/Read/ReadVariableOp8Adam/batch_normalization_179/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_179/beta/m/Read/ReadVariableOp+Adam/dense_210/kernel/m/Read/ReadVariableOp)Adam/dense_210/bias/m/Read/ReadVariableOp8Adam/batch_normalization_180/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_180/beta/m/Read/ReadVariableOp+Adam/dense_211/kernel/m/Read/ReadVariableOp)Adam/dense_211/bias/m/Read/ReadVariableOp8Adam/batch_normalization_181/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_181/beta/m/Read/ReadVariableOp+Adam/dense_212/kernel/m/Read/ReadVariableOp)Adam/dense_212/bias/m/Read/ReadVariableOp+Adam/dense_207/kernel/v/Read/ReadVariableOp)Adam/dense_207/bias/v/Read/ReadVariableOp8Adam/batch_normalization_177/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_177/beta/v/Read/ReadVariableOp+Adam/dense_208/kernel/v/Read/ReadVariableOp)Adam/dense_208/bias/v/Read/ReadVariableOp8Adam/batch_normalization_178/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_178/beta/v/Read/ReadVariableOp+Adam/dense_209/kernel/v/Read/ReadVariableOp)Adam/dense_209/bias/v/Read/ReadVariableOp8Adam/batch_normalization_179/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_179/beta/v/Read/ReadVariableOp+Adam/dense_210/kernel/v/Read/ReadVariableOp)Adam/dense_210/bias/v/Read/ReadVariableOp8Adam/batch_normalization_180/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_180/beta/v/Read/ReadVariableOp+Adam/dense_211/kernel/v/Read/ReadVariableOp)Adam/dense_211/bias/v/Read/ReadVariableOp8Adam/batch_normalization_181/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_181/beta/v/Read/ReadVariableOp+Adam/dense_212/kernel/v/Read/ReadVariableOp)Adam/dense_212/bias/v/Read/ReadVariableOpConst*`
TinY
W2U	*
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
GPU 2J 8? *(
f#R!
__inference__traced_save_302183
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_207/kerneldense_207/biasbatch_normalization_177/gammabatch_normalization_177/beta#batch_normalization_177/moving_mean'batch_normalization_177/moving_variancedense_208/kerneldense_208/biasbatch_normalization_178/gammabatch_normalization_178/beta#batch_normalization_178/moving_mean'batch_normalization_178/moving_variancedense_209/kerneldense_209/biasbatch_normalization_179/gammabatch_normalization_179/beta#batch_normalization_179/moving_mean'batch_normalization_179/moving_variancedense_210/kerneldense_210/biasbatch_normalization_180/gammabatch_normalization_180/beta#batch_normalization_180/moving_mean'batch_normalization_180/moving_variancedense_211/kerneldense_211/biasbatch_normalization_181/gammabatch_normalization_181/beta#batch_normalization_181/moving_mean'batch_normalization_181/moving_variancedense_212/kerneldense_212/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_207/kernel/mAdam/dense_207/bias/m$Adam/batch_normalization_177/gamma/m#Adam/batch_normalization_177/beta/mAdam/dense_208/kernel/mAdam/dense_208/bias/m$Adam/batch_normalization_178/gamma/m#Adam/batch_normalization_178/beta/mAdam/dense_209/kernel/mAdam/dense_209/bias/m$Adam/batch_normalization_179/gamma/m#Adam/batch_normalization_179/beta/mAdam/dense_210/kernel/mAdam/dense_210/bias/m$Adam/batch_normalization_180/gamma/m#Adam/batch_normalization_180/beta/mAdam/dense_211/kernel/mAdam/dense_211/bias/m$Adam/batch_normalization_181/gamma/m#Adam/batch_normalization_181/beta/mAdam/dense_212/kernel/mAdam/dense_212/bias/mAdam/dense_207/kernel/vAdam/dense_207/bias/v$Adam/batch_normalization_177/gamma/v#Adam/batch_normalization_177/beta/vAdam/dense_208/kernel/vAdam/dense_208/bias/v$Adam/batch_normalization_178/gamma/v#Adam/batch_normalization_178/beta/vAdam/dense_209/kernel/vAdam/dense_209/bias/v$Adam/batch_normalization_179/gamma/v#Adam/batch_normalization_179/beta/vAdam/dense_210/kernel/vAdam/dense_210/bias/v$Adam/batch_normalization_180/gamma/v#Adam/batch_normalization_180/beta/vAdam/dense_211/kernel/vAdam/dense_211/bias/v$Adam/batch_normalization_181/gamma/v#Adam/batch_normalization_181/beta/vAdam/dense_212/kernel/vAdam/dense_212/bias/v*_
TinX
V2T*
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_302442??$
?
e
G__inference_dropout_181_layer_call_and_return_conditional_losses_301862

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_179_layer_call_and_return_conditional_losses_299112

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????22

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????22

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
:?????????2:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_179_layer_call_and_return_conditional_losses_301359

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:22
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:22
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:22
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:?????????22
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:2*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:22
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:2*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:22
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????22
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????2::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_180_layer_call_fn_301602

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_2984352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?0
?
S__inference_batch_normalization_179_layer_call_and_return_conditional_losses_299039

inputs
assignmovingavg_299014
assignmovingavg_1_299020)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:2*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:22
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:?????????22
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:2*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:2*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:2*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/299014*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_299014*
_output_shapes
:2*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/299014*
_output_shapes
:22
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/299014*
_output_shapes
:22
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_299014AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/299014*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/299020*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_299020*
_output_shapes
:2*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/299020*
_output_shapes
:22
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/299020*
_output_shapes
:22
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_299020AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/299020*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:22
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:22
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:22
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:?????????22
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:22
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:22
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????22
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????2::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?0
?
S__inference_batch_normalization_178_layer_call_and_return_conditional_losses_298155

inputs
assignmovingavg_298130
assignmovingavg_1_298136)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:d*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:d2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????d2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:d*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/298130*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_298130*
_output_shapes
:d*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/298130*
_output_shapes
:d2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/298130*
_output_shapes
:d2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_298130AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/298130*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/298136*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_298136*
_output_shapes
:d*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/298136*
_output_shapes
:d2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/298136*
_output_shapes
:d2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_298136AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/298136*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:d2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:d2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????d2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:d2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:d2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????d2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????d2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????????????d::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?0
?
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_298435

inputs
assignmovingavg_298410
assignmovingavg_1_298416)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/298410*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_298410*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/298410*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/298410*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_298410AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/298410*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/298416*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_298416*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/298416*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/298416*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_298416AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/298416*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_299976
dense_207_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_207_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_2979192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:?????????
)
_user_specified_namedense_207_input
?
?
8__inference_batch_normalization_181_layer_call_fn_301763

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_2986082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_181_layer_call_fn_301845

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_2993932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

*__inference_dense_209_layer_call_fn_301221

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_209_layer_call_and_return_conditional_losses_2989882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????d::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
E__inference_dense_212_layer_call_and_return_conditional_losses_301902

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:?????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_30_layer_call_fn_299744
dense_207_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_207_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*8
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_30_layer_call_and_return_conditional_losses_2996772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:?????????
)
_user_specified_namedense_207_input
? 
?
E__inference_dense_207_layer_call_and_return_conditional_losses_298654

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:?????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_181_layer_call_fn_301832

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_2993732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_180_layer_call_and_return_conditional_losses_299279

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?0
?
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_301717

inputs
assignmovingavg_301692
assignmovingavg_1_301698)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/301692*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_301692*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/301692*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/301692*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_301692AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/301692*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/301698*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_301698*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/301698*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/301698*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_301698AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/301698*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?1
?
S__inference_batch_normalization_177_layer_call_and_return_conditional_losses_300797

inputs
assignmovingavg_300772
assignmovingavg_1_300778)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:?*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*5
_output_shapes#
!:???????????????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/300772*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_300772*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/300772*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/300772*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_300772AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/300772*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/300778*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_300778*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/300778*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/300778*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_300778AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/300778*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:???????????????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:???????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:???????????????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
E__inference_dense_212_layer_call_and_return_conditional_losses_299489

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:?????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_30_layer_call_fn_300652

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*8
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_30_layer_call_and_return_conditional_losses_2996772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?0
?
S__inference_batch_normalization_179_layer_call_and_return_conditional_losses_298295

inputs
assignmovingavg_298270
assignmovingavg_1_298276)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:2*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:22
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????22
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:2*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:2*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:2*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/298270*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_298270*
_output_shapes
:2*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/298270*
_output_shapes
:22
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/298270*
_output_shapes
:22
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_298270AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/298270*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/298276*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_298276*
_output_shapes
:2*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/298276*
_output_shapes
:22
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/298276*
_output_shapes
:22
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_298276AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/298276*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:22
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:22
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:22
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????22
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:22
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:22
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????22
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????22

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????????????2::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_180_layer_call_fn_301533

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_2992262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_180_layer_call_and_return_conditional_losses_301632

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

*__inference_dense_210_layer_call_fn_301451

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_210_layer_call_and_return_conditional_losses_2991552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????2::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_178_layer_call_and_return_conditional_losses_301047

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:d2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:d2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????d2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:d2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:d2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????d2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????d2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????????????d::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
e
G__inference_dropout_177_layer_call_and_return_conditional_losses_300942

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_179_layer_call_and_return_conditional_losses_298328

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:22
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:22
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:22
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????22
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:2*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:22
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:2*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:22
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????22
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????22

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????????????2::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_179_layer_call_fn_301303

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_179_layer_call_and_return_conditional_losses_2983282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????22

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????????????2::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_177_layer_call_and_return_conditional_losses_298725

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mul{
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
G__inference_dropout_180_layer_call_and_return_conditional_losses_301627

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_299393

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:?????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
f
G__inference_dropout_177_layer_call_and_return_conditional_losses_298773

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_178_layer_call_and_return_conditional_losses_301129

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:d2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:d2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:?????????d2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:d2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:d2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????d2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????d::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
e
G__inference_dropout_177_layer_call_and_return_conditional_losses_298778

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_dense_211_layer_call_and_return_conditional_losses_299322

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:?????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_178_layer_call_and_return_conditional_losses_298188

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:d2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:d2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????d2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:d2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:d2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????d2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????d2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????????????d::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_177_layer_call_and_return_conditional_losses_298048

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:???????????????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:???????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:???????????????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
f
G__inference_dropout_179_layer_call_and_return_conditional_losses_299107

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????22
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????2*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????22
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????22
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????22
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????22

Identity"
identityIdentity:output:0**
_input_shapes
:?????????2:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?0
?
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_301487

inputs
assignmovingavg_301462
assignmovingavg_1_301468)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:?????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/301462*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_301462*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/301462*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/301462*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_301462AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/301462*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/301468*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_301468*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/301468*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/301468*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_301468AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/301468*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:?????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?0
?
S__inference_batch_normalization_177_layer_call_and_return_conditional_losses_300879

inputs
assignmovingavg_300854
assignmovingavg_1_300860)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:?*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/300854*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_300854*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/300854*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/300854*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_300854AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/300854*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/300860*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_300860*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/300860*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/300860*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_300860AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/300860*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mul{
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_179_layer_call_and_return_conditional_losses_301402

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????22

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????22

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
:?????????2:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?V
?
I__inference_sequential_30_layer_call_and_return_conditional_losses_299830

inputs
dense_207_299749
dense_207_299751"
batch_normalization_177_299754"
batch_normalization_177_299756"
batch_normalization_177_299758"
batch_normalization_177_299760
dense_208_299764
dense_208_299766"
batch_normalization_178_299769"
batch_normalization_178_299771"
batch_normalization_178_299773"
batch_normalization_178_299775
dense_209_299779
dense_209_299781"
batch_normalization_179_299784"
batch_normalization_179_299786"
batch_normalization_179_299788"
batch_normalization_179_299790
dense_210_299794
dense_210_299796"
batch_normalization_180_299799"
batch_normalization_180_299801"
batch_normalization_180_299803"
batch_normalization_180_299805
dense_211_299809
dense_211_299811"
batch_normalization_181_299814"
batch_normalization_181_299816"
batch_normalization_181_299818"
batch_normalization_181_299820
dense_212_299824
dense_212_299826
identity??/batch_normalization_177/StatefulPartitionedCall?/batch_normalization_178/StatefulPartitionedCall?/batch_normalization_179/StatefulPartitionedCall?/batch_normalization_180/StatefulPartitionedCall?/batch_normalization_181/StatefulPartitionedCall?!dense_207/StatefulPartitionedCall?!dense_208/StatefulPartitionedCall?!dense_209/StatefulPartitionedCall?!dense_210/StatefulPartitionedCall?!dense_211/StatefulPartitionedCall?!dense_212/StatefulPartitionedCall?
!dense_207/StatefulPartitionedCallStatefulPartitionedCallinputsdense_207_299749dense_207_299751*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_207_layer_call_and_return_conditional_losses_2986542#
!dense_207/StatefulPartitionedCall?
/batch_normalization_177/StatefulPartitionedCallStatefulPartitionedCall*dense_207/StatefulPartitionedCall:output:0batch_normalization_177_299754batch_normalization_177_299756batch_normalization_177_299758batch_normalization_177_299760*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_177_layer_call_and_return_conditional_losses_29872521
/batch_normalization_177/StatefulPartitionedCall?
dropout_177/PartitionedCallPartitionedCall8batch_normalization_177/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_177_layer_call_and_return_conditional_losses_2987782
dropout_177/PartitionedCall?
!dense_208/StatefulPartitionedCallStatefulPartitionedCall$dropout_177/PartitionedCall:output:0dense_208_299764dense_208_299766*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_208_layer_call_and_return_conditional_losses_2988212#
!dense_208/StatefulPartitionedCall?
/batch_normalization_178/StatefulPartitionedCallStatefulPartitionedCall*dense_208/StatefulPartitionedCall:output:0batch_normalization_178_299769batch_normalization_178_299771batch_normalization_178_299773batch_normalization_178_299775*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_178_layer_call_and_return_conditional_losses_29889221
/batch_normalization_178/StatefulPartitionedCall?
dropout_178/PartitionedCallPartitionedCall8batch_normalization_178/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_178_layer_call_and_return_conditional_losses_2989452
dropout_178/PartitionedCall?
!dense_209/StatefulPartitionedCallStatefulPartitionedCall$dropout_178/PartitionedCall:output:0dense_209_299779dense_209_299781*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_209_layer_call_and_return_conditional_losses_2989882#
!dense_209/StatefulPartitionedCall?
/batch_normalization_179/StatefulPartitionedCallStatefulPartitionedCall*dense_209/StatefulPartitionedCall:output:0batch_normalization_179_299784batch_normalization_179_299786batch_normalization_179_299788batch_normalization_179_299790*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_179_layer_call_and_return_conditional_losses_29905921
/batch_normalization_179/StatefulPartitionedCall?
dropout_179/PartitionedCallPartitionedCall8batch_normalization_179/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_179_layer_call_and_return_conditional_losses_2991122
dropout_179/PartitionedCall?
!dense_210/StatefulPartitionedCallStatefulPartitionedCall$dropout_179/PartitionedCall:output:0dense_210_299794dense_210_299796*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_210_layer_call_and_return_conditional_losses_2991552#
!dense_210/StatefulPartitionedCall?
/batch_normalization_180/StatefulPartitionedCallStatefulPartitionedCall*dense_210/StatefulPartitionedCall:output:0batch_normalization_180_299799batch_normalization_180_299801batch_normalization_180_299803batch_normalization_180_299805*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_29922621
/batch_normalization_180/StatefulPartitionedCall?
dropout_180/PartitionedCallPartitionedCall8batch_normalization_180/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_180_layer_call_and_return_conditional_losses_2992792
dropout_180/PartitionedCall?
!dense_211/StatefulPartitionedCallStatefulPartitionedCall$dropout_180/PartitionedCall:output:0dense_211_299809dense_211_299811*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_211_layer_call_and_return_conditional_losses_2993222#
!dense_211/StatefulPartitionedCall?
/batch_normalization_181/StatefulPartitionedCallStatefulPartitionedCall*dense_211/StatefulPartitionedCall:output:0batch_normalization_181_299814batch_normalization_181_299816batch_normalization_181_299818batch_normalization_181_299820*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_29939321
/batch_normalization_181/StatefulPartitionedCall?
dropout_181/PartitionedCallPartitionedCall8batch_normalization_181/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_181_layer_call_and_return_conditional_losses_2994462
dropout_181/PartitionedCall?
!dense_212/StatefulPartitionedCallStatefulPartitionedCall$dropout_181/PartitionedCall:output:0dense_212_299824dense_212_299826*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_212_layer_call_and_return_conditional_losses_2994892#
!dense_212/StatefulPartitionedCall?
IdentityIdentity*dense_212/StatefulPartitionedCall:output:00^batch_normalization_177/StatefulPartitionedCall0^batch_normalization_178/StatefulPartitionedCall0^batch_normalization_179/StatefulPartitionedCall0^batch_normalization_180/StatefulPartitionedCall0^batch_normalization_181/StatefulPartitionedCall"^dense_207/StatefulPartitionedCall"^dense_208/StatefulPartitionedCall"^dense_209/StatefulPartitionedCall"^dense_210/StatefulPartitionedCall"^dense_211/StatefulPartitionedCall"^dense_212/StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::2b
/batch_normalization_177/StatefulPartitionedCall/batch_normalization_177/StatefulPartitionedCall2b
/batch_normalization_178/StatefulPartitionedCall/batch_normalization_178/StatefulPartitionedCall2b
/batch_normalization_179/StatefulPartitionedCall/batch_normalization_179/StatefulPartitionedCall2b
/batch_normalization_180/StatefulPartitionedCall/batch_normalization_180/StatefulPartitionedCall2b
/batch_normalization_181/StatefulPartitionedCall/batch_normalization_181/StatefulPartitionedCall2F
!dense_207/StatefulPartitionedCall!dense_207/StatefulPartitionedCall2F
!dense_208/StatefulPartitionedCall!dense_208/StatefulPartitionedCall2F
!dense_209/StatefulPartitionedCall!dense_209/StatefulPartitionedCall2F
!dense_210/StatefulPartitionedCall!dense_210/StatefulPartitionedCall2F
!dense_211/StatefulPartitionedCall!dense_211/StatefulPartitionedCall2F
!dense_212/StatefulPartitionedCall!dense_212/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?!
!__inference__wrapped_model_297919
dense_207_input=
9sequential_30_dense_207_tensordot_readvariableop_resource;
7sequential_30_dense_207_biasadd_readvariableop_resourceK
Gsequential_30_batch_normalization_177_batchnorm_readvariableop_resourceO
Ksequential_30_batch_normalization_177_batchnorm_mul_readvariableop_resourceM
Isequential_30_batch_normalization_177_batchnorm_readvariableop_1_resourceM
Isequential_30_batch_normalization_177_batchnorm_readvariableop_2_resource=
9sequential_30_dense_208_tensordot_readvariableop_resource;
7sequential_30_dense_208_biasadd_readvariableop_resourceK
Gsequential_30_batch_normalization_178_batchnorm_readvariableop_resourceO
Ksequential_30_batch_normalization_178_batchnorm_mul_readvariableop_resourceM
Isequential_30_batch_normalization_178_batchnorm_readvariableop_1_resourceM
Isequential_30_batch_normalization_178_batchnorm_readvariableop_2_resource=
9sequential_30_dense_209_tensordot_readvariableop_resource;
7sequential_30_dense_209_biasadd_readvariableop_resourceK
Gsequential_30_batch_normalization_179_batchnorm_readvariableop_resourceO
Ksequential_30_batch_normalization_179_batchnorm_mul_readvariableop_resourceM
Isequential_30_batch_normalization_179_batchnorm_readvariableop_1_resourceM
Isequential_30_batch_normalization_179_batchnorm_readvariableop_2_resource=
9sequential_30_dense_210_tensordot_readvariableop_resource;
7sequential_30_dense_210_biasadd_readvariableop_resourceK
Gsequential_30_batch_normalization_180_batchnorm_readvariableop_resourceO
Ksequential_30_batch_normalization_180_batchnorm_mul_readvariableop_resourceM
Isequential_30_batch_normalization_180_batchnorm_readvariableop_1_resourceM
Isequential_30_batch_normalization_180_batchnorm_readvariableop_2_resource=
9sequential_30_dense_211_tensordot_readvariableop_resource;
7sequential_30_dense_211_biasadd_readvariableop_resourceK
Gsequential_30_batch_normalization_181_batchnorm_readvariableop_resourceO
Ksequential_30_batch_normalization_181_batchnorm_mul_readvariableop_resourceM
Isequential_30_batch_normalization_181_batchnorm_readvariableop_1_resourceM
Isequential_30_batch_normalization_181_batchnorm_readvariableop_2_resource=
9sequential_30_dense_212_tensordot_readvariableop_resource;
7sequential_30_dense_212_biasadd_readvariableop_resource
identity??>sequential_30/batch_normalization_177/batchnorm/ReadVariableOp?@sequential_30/batch_normalization_177/batchnorm/ReadVariableOp_1?@sequential_30/batch_normalization_177/batchnorm/ReadVariableOp_2?Bsequential_30/batch_normalization_177/batchnorm/mul/ReadVariableOp?>sequential_30/batch_normalization_178/batchnorm/ReadVariableOp?@sequential_30/batch_normalization_178/batchnorm/ReadVariableOp_1?@sequential_30/batch_normalization_178/batchnorm/ReadVariableOp_2?Bsequential_30/batch_normalization_178/batchnorm/mul/ReadVariableOp?>sequential_30/batch_normalization_179/batchnorm/ReadVariableOp?@sequential_30/batch_normalization_179/batchnorm/ReadVariableOp_1?@sequential_30/batch_normalization_179/batchnorm/ReadVariableOp_2?Bsequential_30/batch_normalization_179/batchnorm/mul/ReadVariableOp?>sequential_30/batch_normalization_180/batchnorm/ReadVariableOp?@sequential_30/batch_normalization_180/batchnorm/ReadVariableOp_1?@sequential_30/batch_normalization_180/batchnorm/ReadVariableOp_2?Bsequential_30/batch_normalization_180/batchnorm/mul/ReadVariableOp?>sequential_30/batch_normalization_181/batchnorm/ReadVariableOp?@sequential_30/batch_normalization_181/batchnorm/ReadVariableOp_1?@sequential_30/batch_normalization_181/batchnorm/ReadVariableOp_2?Bsequential_30/batch_normalization_181/batchnorm/mul/ReadVariableOp?.sequential_30/dense_207/BiasAdd/ReadVariableOp?0sequential_30/dense_207/Tensordot/ReadVariableOp?.sequential_30/dense_208/BiasAdd/ReadVariableOp?0sequential_30/dense_208/Tensordot/ReadVariableOp?.sequential_30/dense_209/BiasAdd/ReadVariableOp?0sequential_30/dense_209/Tensordot/ReadVariableOp?.sequential_30/dense_210/BiasAdd/ReadVariableOp?0sequential_30/dense_210/Tensordot/ReadVariableOp?.sequential_30/dense_211/BiasAdd/ReadVariableOp?0sequential_30/dense_211/Tensordot/ReadVariableOp?.sequential_30/dense_212/BiasAdd/ReadVariableOp?0sequential_30/dense_212/Tensordot/ReadVariableOp?
0sequential_30/dense_207/Tensordot/ReadVariableOpReadVariableOp9sequential_30_dense_207_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype022
0sequential_30/dense_207/Tensordot/ReadVariableOp?
&sequential_30/dense_207/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2(
&sequential_30/dense_207/Tensordot/axes?
&sequential_30/dense_207/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2(
&sequential_30/dense_207/Tensordot/free?
'sequential_30/dense_207/Tensordot/ShapeShapedense_207_input*
T0*
_output_shapes
:2)
'sequential_30/dense_207/Tensordot/Shape?
/sequential_30/dense_207/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_30/dense_207/Tensordot/GatherV2/axis?
*sequential_30/dense_207/Tensordot/GatherV2GatherV20sequential_30/dense_207/Tensordot/Shape:output:0/sequential_30/dense_207/Tensordot/free:output:08sequential_30/dense_207/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_30/dense_207/Tensordot/GatherV2?
1sequential_30/dense_207/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1sequential_30/dense_207/Tensordot/GatherV2_1/axis?
,sequential_30/dense_207/Tensordot/GatherV2_1GatherV20sequential_30/dense_207/Tensordot/Shape:output:0/sequential_30/dense_207/Tensordot/axes:output:0:sequential_30/dense_207/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2.
,sequential_30/dense_207/Tensordot/GatherV2_1?
'sequential_30/dense_207/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_30/dense_207/Tensordot/Const?
&sequential_30/dense_207/Tensordot/ProdProd3sequential_30/dense_207/Tensordot/GatherV2:output:00sequential_30/dense_207/Tensordot/Const:output:0*
T0*
_output_shapes
: 2(
&sequential_30/dense_207/Tensordot/Prod?
)sequential_30/dense_207/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_30/dense_207/Tensordot/Const_1?
(sequential_30/dense_207/Tensordot/Prod_1Prod5sequential_30/dense_207/Tensordot/GatherV2_1:output:02sequential_30/dense_207/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2*
(sequential_30/dense_207/Tensordot/Prod_1?
-sequential_30/dense_207/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_30/dense_207/Tensordot/concat/axis?
(sequential_30/dense_207/Tensordot/concatConcatV2/sequential_30/dense_207/Tensordot/free:output:0/sequential_30/dense_207/Tensordot/axes:output:06sequential_30/dense_207/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_30/dense_207/Tensordot/concat?
'sequential_30/dense_207/Tensordot/stackPack/sequential_30/dense_207/Tensordot/Prod:output:01sequential_30/dense_207/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2)
'sequential_30/dense_207/Tensordot/stack?
+sequential_30/dense_207/Tensordot/transpose	Transposedense_207_input1sequential_30/dense_207/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????2-
+sequential_30/dense_207/Tensordot/transpose?
)sequential_30/dense_207/Tensordot/ReshapeReshape/sequential_30/dense_207/Tensordot/transpose:y:00sequential_30/dense_207/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2+
)sequential_30/dense_207/Tensordot/Reshape?
(sequential_30/dense_207/Tensordot/MatMulMatMul2sequential_30/dense_207/Tensordot/Reshape:output:08sequential_30/dense_207/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(sequential_30/dense_207/Tensordot/MatMul?
)sequential_30/dense_207/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2+
)sequential_30/dense_207/Tensordot/Const_2?
/sequential_30/dense_207/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_30/dense_207/Tensordot/concat_1/axis?
*sequential_30/dense_207/Tensordot/concat_1ConcatV23sequential_30/dense_207/Tensordot/GatherV2:output:02sequential_30/dense_207/Tensordot/Const_2:output:08sequential_30/dense_207/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2,
*sequential_30/dense_207/Tensordot/concat_1?
!sequential_30/dense_207/TensordotReshape2sequential_30/dense_207/Tensordot/MatMul:product:03sequential_30/dense_207/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2#
!sequential_30/dense_207/Tensordot?
.sequential_30/dense_207/BiasAdd/ReadVariableOpReadVariableOp7sequential_30_dense_207_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_30/dense_207/BiasAdd/ReadVariableOp?
sequential_30/dense_207/BiasAddBiasAdd*sequential_30/dense_207/Tensordot:output:06sequential_30/dense_207/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2!
sequential_30/dense_207/BiasAdd?
sequential_30/dense_207/ReluRelu(sequential_30/dense_207/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
sequential_30/dense_207/Relu?
>sequential_30/batch_normalization_177/batchnorm/ReadVariableOpReadVariableOpGsequential_30_batch_normalization_177_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>sequential_30/batch_normalization_177/batchnorm/ReadVariableOp?
5sequential_30/batch_normalization_177/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:27
5sequential_30/batch_normalization_177/batchnorm/add/y?
3sequential_30/batch_normalization_177/batchnorm/addAddV2Fsequential_30/batch_normalization_177/batchnorm/ReadVariableOp:value:0>sequential_30/batch_normalization_177/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?25
3sequential_30/batch_normalization_177/batchnorm/add?
5sequential_30/batch_normalization_177/batchnorm/RsqrtRsqrt7sequential_30/batch_normalization_177/batchnorm/add:z:0*
T0*
_output_shapes	
:?27
5sequential_30/batch_normalization_177/batchnorm/Rsqrt?
Bsequential_30/batch_normalization_177/batchnorm/mul/ReadVariableOpReadVariableOpKsequential_30_batch_normalization_177_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Bsequential_30/batch_normalization_177/batchnorm/mul/ReadVariableOp?
3sequential_30/batch_normalization_177/batchnorm/mulMul9sequential_30/batch_normalization_177/batchnorm/Rsqrt:y:0Jsequential_30/batch_normalization_177/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?25
3sequential_30/batch_normalization_177/batchnorm/mul?
5sequential_30/batch_normalization_177/batchnorm/mul_1Mul*sequential_30/dense_207/Relu:activations:07sequential_30/batch_normalization_177/batchnorm/mul:z:0*
T0*,
_output_shapes
:??????????27
5sequential_30/batch_normalization_177/batchnorm/mul_1?
@sequential_30/batch_normalization_177/batchnorm/ReadVariableOp_1ReadVariableOpIsequential_30_batch_normalization_177_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02B
@sequential_30/batch_normalization_177/batchnorm/ReadVariableOp_1?
5sequential_30/batch_normalization_177/batchnorm/mul_2MulHsequential_30/batch_normalization_177/batchnorm/ReadVariableOp_1:value:07sequential_30/batch_normalization_177/batchnorm/mul:z:0*
T0*
_output_shapes	
:?27
5sequential_30/batch_normalization_177/batchnorm/mul_2?
@sequential_30/batch_normalization_177/batchnorm/ReadVariableOp_2ReadVariableOpIsequential_30_batch_normalization_177_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02B
@sequential_30/batch_normalization_177/batchnorm/ReadVariableOp_2?
3sequential_30/batch_normalization_177/batchnorm/subSubHsequential_30/batch_normalization_177/batchnorm/ReadVariableOp_2:value:09sequential_30/batch_normalization_177/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?25
3sequential_30/batch_normalization_177/batchnorm/sub?
5sequential_30/batch_normalization_177/batchnorm/add_1AddV29sequential_30/batch_normalization_177/batchnorm/mul_1:z:07sequential_30/batch_normalization_177/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????27
5sequential_30/batch_normalization_177/batchnorm/add_1?
"sequential_30/dropout_177/IdentityIdentity9sequential_30/batch_normalization_177/batchnorm/add_1:z:0*
T0*,
_output_shapes
:??????????2$
"sequential_30/dropout_177/Identity?
0sequential_30/dense_208/Tensordot/ReadVariableOpReadVariableOp9sequential_30_dense_208_tensordot_readvariableop_resource*
_output_shapes
:	?d*
dtype022
0sequential_30/dense_208/Tensordot/ReadVariableOp?
&sequential_30/dense_208/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2(
&sequential_30/dense_208/Tensordot/axes?
&sequential_30/dense_208/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2(
&sequential_30/dense_208/Tensordot/free?
'sequential_30/dense_208/Tensordot/ShapeShape+sequential_30/dropout_177/Identity:output:0*
T0*
_output_shapes
:2)
'sequential_30/dense_208/Tensordot/Shape?
/sequential_30/dense_208/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_30/dense_208/Tensordot/GatherV2/axis?
*sequential_30/dense_208/Tensordot/GatherV2GatherV20sequential_30/dense_208/Tensordot/Shape:output:0/sequential_30/dense_208/Tensordot/free:output:08sequential_30/dense_208/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_30/dense_208/Tensordot/GatherV2?
1sequential_30/dense_208/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1sequential_30/dense_208/Tensordot/GatherV2_1/axis?
,sequential_30/dense_208/Tensordot/GatherV2_1GatherV20sequential_30/dense_208/Tensordot/Shape:output:0/sequential_30/dense_208/Tensordot/axes:output:0:sequential_30/dense_208/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2.
,sequential_30/dense_208/Tensordot/GatherV2_1?
'sequential_30/dense_208/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_30/dense_208/Tensordot/Const?
&sequential_30/dense_208/Tensordot/ProdProd3sequential_30/dense_208/Tensordot/GatherV2:output:00sequential_30/dense_208/Tensordot/Const:output:0*
T0*
_output_shapes
: 2(
&sequential_30/dense_208/Tensordot/Prod?
)sequential_30/dense_208/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_30/dense_208/Tensordot/Const_1?
(sequential_30/dense_208/Tensordot/Prod_1Prod5sequential_30/dense_208/Tensordot/GatherV2_1:output:02sequential_30/dense_208/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2*
(sequential_30/dense_208/Tensordot/Prod_1?
-sequential_30/dense_208/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_30/dense_208/Tensordot/concat/axis?
(sequential_30/dense_208/Tensordot/concatConcatV2/sequential_30/dense_208/Tensordot/free:output:0/sequential_30/dense_208/Tensordot/axes:output:06sequential_30/dense_208/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_30/dense_208/Tensordot/concat?
'sequential_30/dense_208/Tensordot/stackPack/sequential_30/dense_208/Tensordot/Prod:output:01sequential_30/dense_208/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2)
'sequential_30/dense_208/Tensordot/stack?
+sequential_30/dense_208/Tensordot/transpose	Transpose+sequential_30/dropout_177/Identity:output:01sequential_30/dense_208/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2-
+sequential_30/dense_208/Tensordot/transpose?
)sequential_30/dense_208/Tensordot/ReshapeReshape/sequential_30/dense_208/Tensordot/transpose:y:00sequential_30/dense_208/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2+
)sequential_30/dense_208/Tensordot/Reshape?
(sequential_30/dense_208/Tensordot/MatMulMatMul2sequential_30/dense_208/Tensordot/Reshape:output:08sequential_30/dense_208/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2*
(sequential_30/dense_208/Tensordot/MatMul?
)sequential_30/dense_208/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2+
)sequential_30/dense_208/Tensordot/Const_2?
/sequential_30/dense_208/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_30/dense_208/Tensordot/concat_1/axis?
*sequential_30/dense_208/Tensordot/concat_1ConcatV23sequential_30/dense_208/Tensordot/GatherV2:output:02sequential_30/dense_208/Tensordot/Const_2:output:08sequential_30/dense_208/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2,
*sequential_30/dense_208/Tensordot/concat_1?
!sequential_30/dense_208/TensordotReshape2sequential_30/dense_208/Tensordot/MatMul:product:03sequential_30/dense_208/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????d2#
!sequential_30/dense_208/Tensordot?
.sequential_30/dense_208/BiasAdd/ReadVariableOpReadVariableOp7sequential_30_dense_208_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype020
.sequential_30/dense_208/BiasAdd/ReadVariableOp?
sequential_30/dense_208/BiasAddBiasAdd*sequential_30/dense_208/Tensordot:output:06sequential_30/dense_208/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d2!
sequential_30/dense_208/BiasAdd?
>sequential_30/batch_normalization_178/batchnorm/ReadVariableOpReadVariableOpGsequential_30_batch_normalization_178_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype02@
>sequential_30/batch_normalization_178/batchnorm/ReadVariableOp?
5sequential_30/batch_normalization_178/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:27
5sequential_30/batch_normalization_178/batchnorm/add/y?
3sequential_30/batch_normalization_178/batchnorm/addAddV2Fsequential_30/batch_normalization_178/batchnorm/ReadVariableOp:value:0>sequential_30/batch_normalization_178/batchnorm/add/y:output:0*
T0*
_output_shapes
:d25
3sequential_30/batch_normalization_178/batchnorm/add?
5sequential_30/batch_normalization_178/batchnorm/RsqrtRsqrt7sequential_30/batch_normalization_178/batchnorm/add:z:0*
T0*
_output_shapes
:d27
5sequential_30/batch_normalization_178/batchnorm/Rsqrt?
Bsequential_30/batch_normalization_178/batchnorm/mul/ReadVariableOpReadVariableOpKsequential_30_batch_normalization_178_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype02D
Bsequential_30/batch_normalization_178/batchnorm/mul/ReadVariableOp?
3sequential_30/batch_normalization_178/batchnorm/mulMul9sequential_30/batch_normalization_178/batchnorm/Rsqrt:y:0Jsequential_30/batch_normalization_178/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:d25
3sequential_30/batch_normalization_178/batchnorm/mul?
5sequential_30/batch_normalization_178/batchnorm/mul_1Mul(sequential_30/dense_208/BiasAdd:output:07sequential_30/batch_normalization_178/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????d27
5sequential_30/batch_normalization_178/batchnorm/mul_1?
@sequential_30/batch_normalization_178/batchnorm/ReadVariableOp_1ReadVariableOpIsequential_30_batch_normalization_178_batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype02B
@sequential_30/batch_normalization_178/batchnorm/ReadVariableOp_1?
5sequential_30/batch_normalization_178/batchnorm/mul_2MulHsequential_30/batch_normalization_178/batchnorm/ReadVariableOp_1:value:07sequential_30/batch_normalization_178/batchnorm/mul:z:0*
T0*
_output_shapes
:d27
5sequential_30/batch_normalization_178/batchnorm/mul_2?
@sequential_30/batch_normalization_178/batchnorm/ReadVariableOp_2ReadVariableOpIsequential_30_batch_normalization_178_batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype02B
@sequential_30/batch_normalization_178/batchnorm/ReadVariableOp_2?
3sequential_30/batch_normalization_178/batchnorm/subSubHsequential_30/batch_normalization_178/batchnorm/ReadVariableOp_2:value:09sequential_30/batch_normalization_178/batchnorm/mul_2:z:0*
T0*
_output_shapes
:d25
3sequential_30/batch_normalization_178/batchnorm/sub?
5sequential_30/batch_normalization_178/batchnorm/add_1AddV29sequential_30/batch_normalization_178/batchnorm/mul_1:z:07sequential_30/batch_normalization_178/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????d27
5sequential_30/batch_normalization_178/batchnorm/add_1?
"sequential_30/dropout_178/IdentityIdentity9sequential_30/batch_normalization_178/batchnorm/add_1:z:0*
T0*+
_output_shapes
:?????????d2$
"sequential_30/dropout_178/Identity?
0sequential_30/dense_209/Tensordot/ReadVariableOpReadVariableOp9sequential_30_dense_209_tensordot_readvariableop_resource*
_output_shapes

:d2*
dtype022
0sequential_30/dense_209/Tensordot/ReadVariableOp?
&sequential_30/dense_209/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2(
&sequential_30/dense_209/Tensordot/axes?
&sequential_30/dense_209/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2(
&sequential_30/dense_209/Tensordot/free?
'sequential_30/dense_209/Tensordot/ShapeShape+sequential_30/dropout_178/Identity:output:0*
T0*
_output_shapes
:2)
'sequential_30/dense_209/Tensordot/Shape?
/sequential_30/dense_209/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_30/dense_209/Tensordot/GatherV2/axis?
*sequential_30/dense_209/Tensordot/GatherV2GatherV20sequential_30/dense_209/Tensordot/Shape:output:0/sequential_30/dense_209/Tensordot/free:output:08sequential_30/dense_209/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_30/dense_209/Tensordot/GatherV2?
1sequential_30/dense_209/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1sequential_30/dense_209/Tensordot/GatherV2_1/axis?
,sequential_30/dense_209/Tensordot/GatherV2_1GatherV20sequential_30/dense_209/Tensordot/Shape:output:0/sequential_30/dense_209/Tensordot/axes:output:0:sequential_30/dense_209/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2.
,sequential_30/dense_209/Tensordot/GatherV2_1?
'sequential_30/dense_209/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_30/dense_209/Tensordot/Const?
&sequential_30/dense_209/Tensordot/ProdProd3sequential_30/dense_209/Tensordot/GatherV2:output:00sequential_30/dense_209/Tensordot/Const:output:0*
T0*
_output_shapes
: 2(
&sequential_30/dense_209/Tensordot/Prod?
)sequential_30/dense_209/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_30/dense_209/Tensordot/Const_1?
(sequential_30/dense_209/Tensordot/Prod_1Prod5sequential_30/dense_209/Tensordot/GatherV2_1:output:02sequential_30/dense_209/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2*
(sequential_30/dense_209/Tensordot/Prod_1?
-sequential_30/dense_209/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_30/dense_209/Tensordot/concat/axis?
(sequential_30/dense_209/Tensordot/concatConcatV2/sequential_30/dense_209/Tensordot/free:output:0/sequential_30/dense_209/Tensordot/axes:output:06sequential_30/dense_209/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_30/dense_209/Tensordot/concat?
'sequential_30/dense_209/Tensordot/stackPack/sequential_30/dense_209/Tensordot/Prod:output:01sequential_30/dense_209/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2)
'sequential_30/dense_209/Tensordot/stack?
+sequential_30/dense_209/Tensordot/transpose	Transpose+sequential_30/dropout_178/Identity:output:01sequential_30/dense_209/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????d2-
+sequential_30/dense_209/Tensordot/transpose?
)sequential_30/dense_209/Tensordot/ReshapeReshape/sequential_30/dense_209/Tensordot/transpose:y:00sequential_30/dense_209/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2+
)sequential_30/dense_209/Tensordot/Reshape?
(sequential_30/dense_209/Tensordot/MatMulMatMul2sequential_30/dense_209/Tensordot/Reshape:output:08sequential_30/dense_209/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22*
(sequential_30/dense_209/Tensordot/MatMul?
)sequential_30/dense_209/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:22+
)sequential_30/dense_209/Tensordot/Const_2?
/sequential_30/dense_209/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_30/dense_209/Tensordot/concat_1/axis?
*sequential_30/dense_209/Tensordot/concat_1ConcatV23sequential_30/dense_209/Tensordot/GatherV2:output:02sequential_30/dense_209/Tensordot/Const_2:output:08sequential_30/dense_209/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2,
*sequential_30/dense_209/Tensordot/concat_1?
!sequential_30/dense_209/TensordotReshape2sequential_30/dense_209/Tensordot/MatMul:product:03sequential_30/dense_209/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????22#
!sequential_30/dense_209/Tensordot?
.sequential_30/dense_209/BiasAdd/ReadVariableOpReadVariableOp7sequential_30_dense_209_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype020
.sequential_30/dense_209/BiasAdd/ReadVariableOp?
sequential_30/dense_209/BiasAddBiasAdd*sequential_30/dense_209/Tensordot:output:06sequential_30/dense_209/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????22!
sequential_30/dense_209/BiasAdd?
>sequential_30/batch_normalization_179/batchnorm/ReadVariableOpReadVariableOpGsequential_30_batch_normalization_179_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype02@
>sequential_30/batch_normalization_179/batchnorm/ReadVariableOp?
5sequential_30/batch_normalization_179/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:27
5sequential_30/batch_normalization_179/batchnorm/add/y?
3sequential_30/batch_normalization_179/batchnorm/addAddV2Fsequential_30/batch_normalization_179/batchnorm/ReadVariableOp:value:0>sequential_30/batch_normalization_179/batchnorm/add/y:output:0*
T0*
_output_shapes
:225
3sequential_30/batch_normalization_179/batchnorm/add?
5sequential_30/batch_normalization_179/batchnorm/RsqrtRsqrt7sequential_30/batch_normalization_179/batchnorm/add:z:0*
T0*
_output_shapes
:227
5sequential_30/batch_normalization_179/batchnorm/Rsqrt?
Bsequential_30/batch_normalization_179/batchnorm/mul/ReadVariableOpReadVariableOpKsequential_30_batch_normalization_179_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype02D
Bsequential_30/batch_normalization_179/batchnorm/mul/ReadVariableOp?
3sequential_30/batch_normalization_179/batchnorm/mulMul9sequential_30/batch_normalization_179/batchnorm/Rsqrt:y:0Jsequential_30/batch_normalization_179/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:225
3sequential_30/batch_normalization_179/batchnorm/mul?
5sequential_30/batch_normalization_179/batchnorm/mul_1Mul(sequential_30/dense_209/BiasAdd:output:07sequential_30/batch_normalization_179/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????227
5sequential_30/batch_normalization_179/batchnorm/mul_1?
@sequential_30/batch_normalization_179/batchnorm/ReadVariableOp_1ReadVariableOpIsequential_30_batch_normalization_179_batchnorm_readvariableop_1_resource*
_output_shapes
:2*
dtype02B
@sequential_30/batch_normalization_179/batchnorm/ReadVariableOp_1?
5sequential_30/batch_normalization_179/batchnorm/mul_2MulHsequential_30/batch_normalization_179/batchnorm/ReadVariableOp_1:value:07sequential_30/batch_normalization_179/batchnorm/mul:z:0*
T0*
_output_shapes
:227
5sequential_30/batch_normalization_179/batchnorm/mul_2?
@sequential_30/batch_normalization_179/batchnorm/ReadVariableOp_2ReadVariableOpIsequential_30_batch_normalization_179_batchnorm_readvariableop_2_resource*
_output_shapes
:2*
dtype02B
@sequential_30/batch_normalization_179/batchnorm/ReadVariableOp_2?
3sequential_30/batch_normalization_179/batchnorm/subSubHsequential_30/batch_normalization_179/batchnorm/ReadVariableOp_2:value:09sequential_30/batch_normalization_179/batchnorm/mul_2:z:0*
T0*
_output_shapes
:225
3sequential_30/batch_normalization_179/batchnorm/sub?
5sequential_30/batch_normalization_179/batchnorm/add_1AddV29sequential_30/batch_normalization_179/batchnorm/mul_1:z:07sequential_30/batch_normalization_179/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????227
5sequential_30/batch_normalization_179/batchnorm/add_1?
"sequential_30/dropout_179/IdentityIdentity9sequential_30/batch_normalization_179/batchnorm/add_1:z:0*
T0*+
_output_shapes
:?????????22$
"sequential_30/dropout_179/Identity?
0sequential_30/dense_210/Tensordot/ReadVariableOpReadVariableOp9sequential_30_dense_210_tensordot_readvariableop_resource*
_output_shapes

:2*
dtype022
0sequential_30/dense_210/Tensordot/ReadVariableOp?
&sequential_30/dense_210/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2(
&sequential_30/dense_210/Tensordot/axes?
&sequential_30/dense_210/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2(
&sequential_30/dense_210/Tensordot/free?
'sequential_30/dense_210/Tensordot/ShapeShape+sequential_30/dropout_179/Identity:output:0*
T0*
_output_shapes
:2)
'sequential_30/dense_210/Tensordot/Shape?
/sequential_30/dense_210/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_30/dense_210/Tensordot/GatherV2/axis?
*sequential_30/dense_210/Tensordot/GatherV2GatherV20sequential_30/dense_210/Tensordot/Shape:output:0/sequential_30/dense_210/Tensordot/free:output:08sequential_30/dense_210/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_30/dense_210/Tensordot/GatherV2?
1sequential_30/dense_210/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1sequential_30/dense_210/Tensordot/GatherV2_1/axis?
,sequential_30/dense_210/Tensordot/GatherV2_1GatherV20sequential_30/dense_210/Tensordot/Shape:output:0/sequential_30/dense_210/Tensordot/axes:output:0:sequential_30/dense_210/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2.
,sequential_30/dense_210/Tensordot/GatherV2_1?
'sequential_30/dense_210/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_30/dense_210/Tensordot/Const?
&sequential_30/dense_210/Tensordot/ProdProd3sequential_30/dense_210/Tensordot/GatherV2:output:00sequential_30/dense_210/Tensordot/Const:output:0*
T0*
_output_shapes
: 2(
&sequential_30/dense_210/Tensordot/Prod?
)sequential_30/dense_210/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_30/dense_210/Tensordot/Const_1?
(sequential_30/dense_210/Tensordot/Prod_1Prod5sequential_30/dense_210/Tensordot/GatherV2_1:output:02sequential_30/dense_210/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2*
(sequential_30/dense_210/Tensordot/Prod_1?
-sequential_30/dense_210/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_30/dense_210/Tensordot/concat/axis?
(sequential_30/dense_210/Tensordot/concatConcatV2/sequential_30/dense_210/Tensordot/free:output:0/sequential_30/dense_210/Tensordot/axes:output:06sequential_30/dense_210/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_30/dense_210/Tensordot/concat?
'sequential_30/dense_210/Tensordot/stackPack/sequential_30/dense_210/Tensordot/Prod:output:01sequential_30/dense_210/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2)
'sequential_30/dense_210/Tensordot/stack?
+sequential_30/dense_210/Tensordot/transpose	Transpose+sequential_30/dropout_179/Identity:output:01sequential_30/dense_210/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????22-
+sequential_30/dense_210/Tensordot/transpose?
)sequential_30/dense_210/Tensordot/ReshapeReshape/sequential_30/dense_210/Tensordot/transpose:y:00sequential_30/dense_210/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2+
)sequential_30/dense_210/Tensordot/Reshape?
(sequential_30/dense_210/Tensordot/MatMulMatMul2sequential_30/dense_210/Tensordot/Reshape:output:08sequential_30/dense_210/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2*
(sequential_30/dense_210/Tensordot/MatMul?
)sequential_30/dense_210/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_30/dense_210/Tensordot/Const_2?
/sequential_30/dense_210/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_30/dense_210/Tensordot/concat_1/axis?
*sequential_30/dense_210/Tensordot/concat_1ConcatV23sequential_30/dense_210/Tensordot/GatherV2:output:02sequential_30/dense_210/Tensordot/Const_2:output:08sequential_30/dense_210/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2,
*sequential_30/dense_210/Tensordot/concat_1?
!sequential_30/dense_210/TensordotReshape2sequential_30/dense_210/Tensordot/MatMul:product:03sequential_30/dense_210/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2#
!sequential_30/dense_210/Tensordot?
.sequential_30/dense_210/BiasAdd/ReadVariableOpReadVariableOp7sequential_30_dense_210_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_30/dense_210/BiasAdd/ReadVariableOp?
sequential_30/dense_210/BiasAddBiasAdd*sequential_30/dense_210/Tensordot:output:06sequential_30/dense_210/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2!
sequential_30/dense_210/BiasAdd?
>sequential_30/batch_normalization_180/batchnorm/ReadVariableOpReadVariableOpGsequential_30_batch_normalization_180_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02@
>sequential_30/batch_normalization_180/batchnorm/ReadVariableOp?
5sequential_30/batch_normalization_180/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:27
5sequential_30/batch_normalization_180/batchnorm/add/y?
3sequential_30/batch_normalization_180/batchnorm/addAddV2Fsequential_30/batch_normalization_180/batchnorm/ReadVariableOp:value:0>sequential_30/batch_normalization_180/batchnorm/add/y:output:0*
T0*
_output_shapes
:25
3sequential_30/batch_normalization_180/batchnorm/add?
5sequential_30/batch_normalization_180/batchnorm/RsqrtRsqrt7sequential_30/batch_normalization_180/batchnorm/add:z:0*
T0*
_output_shapes
:27
5sequential_30/batch_normalization_180/batchnorm/Rsqrt?
Bsequential_30/batch_normalization_180/batchnorm/mul/ReadVariableOpReadVariableOpKsequential_30_batch_normalization_180_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02D
Bsequential_30/batch_normalization_180/batchnorm/mul/ReadVariableOp?
3sequential_30/batch_normalization_180/batchnorm/mulMul9sequential_30/batch_normalization_180/batchnorm/Rsqrt:y:0Jsequential_30/batch_normalization_180/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:25
3sequential_30/batch_normalization_180/batchnorm/mul?
5sequential_30/batch_normalization_180/batchnorm/mul_1Mul(sequential_30/dense_210/BiasAdd:output:07sequential_30/batch_normalization_180/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????27
5sequential_30/batch_normalization_180/batchnorm/mul_1?
@sequential_30/batch_normalization_180/batchnorm/ReadVariableOp_1ReadVariableOpIsequential_30_batch_normalization_180_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02B
@sequential_30/batch_normalization_180/batchnorm/ReadVariableOp_1?
5sequential_30/batch_normalization_180/batchnorm/mul_2MulHsequential_30/batch_normalization_180/batchnorm/ReadVariableOp_1:value:07sequential_30/batch_normalization_180/batchnorm/mul:z:0*
T0*
_output_shapes
:27
5sequential_30/batch_normalization_180/batchnorm/mul_2?
@sequential_30/batch_normalization_180/batchnorm/ReadVariableOp_2ReadVariableOpIsequential_30_batch_normalization_180_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02B
@sequential_30/batch_normalization_180/batchnorm/ReadVariableOp_2?
3sequential_30/batch_normalization_180/batchnorm/subSubHsequential_30/batch_normalization_180/batchnorm/ReadVariableOp_2:value:09sequential_30/batch_normalization_180/batchnorm/mul_2:z:0*
T0*
_output_shapes
:25
3sequential_30/batch_normalization_180/batchnorm/sub?
5sequential_30/batch_normalization_180/batchnorm/add_1AddV29sequential_30/batch_normalization_180/batchnorm/mul_1:z:07sequential_30/batch_normalization_180/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????27
5sequential_30/batch_normalization_180/batchnorm/add_1?
"sequential_30/dropout_180/IdentityIdentity9sequential_30/batch_normalization_180/batchnorm/add_1:z:0*
T0*+
_output_shapes
:?????????2$
"sequential_30/dropout_180/Identity?
0sequential_30/dense_211/Tensordot/ReadVariableOpReadVariableOp9sequential_30_dense_211_tensordot_readvariableop_resource*
_output_shapes

:*
dtype022
0sequential_30/dense_211/Tensordot/ReadVariableOp?
&sequential_30/dense_211/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2(
&sequential_30/dense_211/Tensordot/axes?
&sequential_30/dense_211/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2(
&sequential_30/dense_211/Tensordot/free?
'sequential_30/dense_211/Tensordot/ShapeShape+sequential_30/dropout_180/Identity:output:0*
T0*
_output_shapes
:2)
'sequential_30/dense_211/Tensordot/Shape?
/sequential_30/dense_211/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_30/dense_211/Tensordot/GatherV2/axis?
*sequential_30/dense_211/Tensordot/GatherV2GatherV20sequential_30/dense_211/Tensordot/Shape:output:0/sequential_30/dense_211/Tensordot/free:output:08sequential_30/dense_211/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_30/dense_211/Tensordot/GatherV2?
1sequential_30/dense_211/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1sequential_30/dense_211/Tensordot/GatherV2_1/axis?
,sequential_30/dense_211/Tensordot/GatherV2_1GatherV20sequential_30/dense_211/Tensordot/Shape:output:0/sequential_30/dense_211/Tensordot/axes:output:0:sequential_30/dense_211/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2.
,sequential_30/dense_211/Tensordot/GatherV2_1?
'sequential_30/dense_211/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_30/dense_211/Tensordot/Const?
&sequential_30/dense_211/Tensordot/ProdProd3sequential_30/dense_211/Tensordot/GatherV2:output:00sequential_30/dense_211/Tensordot/Const:output:0*
T0*
_output_shapes
: 2(
&sequential_30/dense_211/Tensordot/Prod?
)sequential_30/dense_211/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_30/dense_211/Tensordot/Const_1?
(sequential_30/dense_211/Tensordot/Prod_1Prod5sequential_30/dense_211/Tensordot/GatherV2_1:output:02sequential_30/dense_211/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2*
(sequential_30/dense_211/Tensordot/Prod_1?
-sequential_30/dense_211/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_30/dense_211/Tensordot/concat/axis?
(sequential_30/dense_211/Tensordot/concatConcatV2/sequential_30/dense_211/Tensordot/free:output:0/sequential_30/dense_211/Tensordot/axes:output:06sequential_30/dense_211/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_30/dense_211/Tensordot/concat?
'sequential_30/dense_211/Tensordot/stackPack/sequential_30/dense_211/Tensordot/Prod:output:01sequential_30/dense_211/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2)
'sequential_30/dense_211/Tensordot/stack?
+sequential_30/dense_211/Tensordot/transpose	Transpose+sequential_30/dropout_180/Identity:output:01sequential_30/dense_211/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????2-
+sequential_30/dense_211/Tensordot/transpose?
)sequential_30/dense_211/Tensordot/ReshapeReshape/sequential_30/dense_211/Tensordot/transpose:y:00sequential_30/dense_211/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2+
)sequential_30/dense_211/Tensordot/Reshape?
(sequential_30/dense_211/Tensordot/MatMulMatMul2sequential_30/dense_211/Tensordot/Reshape:output:08sequential_30/dense_211/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2*
(sequential_30/dense_211/Tensordot/MatMul?
)sequential_30/dense_211/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_30/dense_211/Tensordot/Const_2?
/sequential_30/dense_211/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_30/dense_211/Tensordot/concat_1/axis?
*sequential_30/dense_211/Tensordot/concat_1ConcatV23sequential_30/dense_211/Tensordot/GatherV2:output:02sequential_30/dense_211/Tensordot/Const_2:output:08sequential_30/dense_211/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2,
*sequential_30/dense_211/Tensordot/concat_1?
!sequential_30/dense_211/TensordotReshape2sequential_30/dense_211/Tensordot/MatMul:product:03sequential_30/dense_211/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2#
!sequential_30/dense_211/Tensordot?
.sequential_30/dense_211/BiasAdd/ReadVariableOpReadVariableOp7sequential_30_dense_211_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_30/dense_211/BiasAdd/ReadVariableOp?
sequential_30/dense_211/BiasAddBiasAdd*sequential_30/dense_211/Tensordot:output:06sequential_30/dense_211/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2!
sequential_30/dense_211/BiasAdd?
>sequential_30/batch_normalization_181/batchnorm/ReadVariableOpReadVariableOpGsequential_30_batch_normalization_181_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02@
>sequential_30/batch_normalization_181/batchnorm/ReadVariableOp?
5sequential_30/batch_normalization_181/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:27
5sequential_30/batch_normalization_181/batchnorm/add/y?
3sequential_30/batch_normalization_181/batchnorm/addAddV2Fsequential_30/batch_normalization_181/batchnorm/ReadVariableOp:value:0>sequential_30/batch_normalization_181/batchnorm/add/y:output:0*
T0*
_output_shapes
:25
3sequential_30/batch_normalization_181/batchnorm/add?
5sequential_30/batch_normalization_181/batchnorm/RsqrtRsqrt7sequential_30/batch_normalization_181/batchnorm/add:z:0*
T0*
_output_shapes
:27
5sequential_30/batch_normalization_181/batchnorm/Rsqrt?
Bsequential_30/batch_normalization_181/batchnorm/mul/ReadVariableOpReadVariableOpKsequential_30_batch_normalization_181_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02D
Bsequential_30/batch_normalization_181/batchnorm/mul/ReadVariableOp?
3sequential_30/batch_normalization_181/batchnorm/mulMul9sequential_30/batch_normalization_181/batchnorm/Rsqrt:y:0Jsequential_30/batch_normalization_181/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:25
3sequential_30/batch_normalization_181/batchnorm/mul?
5sequential_30/batch_normalization_181/batchnorm/mul_1Mul(sequential_30/dense_211/BiasAdd:output:07sequential_30/batch_normalization_181/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????27
5sequential_30/batch_normalization_181/batchnorm/mul_1?
@sequential_30/batch_normalization_181/batchnorm/ReadVariableOp_1ReadVariableOpIsequential_30_batch_normalization_181_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02B
@sequential_30/batch_normalization_181/batchnorm/ReadVariableOp_1?
5sequential_30/batch_normalization_181/batchnorm/mul_2MulHsequential_30/batch_normalization_181/batchnorm/ReadVariableOp_1:value:07sequential_30/batch_normalization_181/batchnorm/mul:z:0*
T0*
_output_shapes
:27
5sequential_30/batch_normalization_181/batchnorm/mul_2?
@sequential_30/batch_normalization_181/batchnorm/ReadVariableOp_2ReadVariableOpIsequential_30_batch_normalization_181_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02B
@sequential_30/batch_normalization_181/batchnorm/ReadVariableOp_2?
3sequential_30/batch_normalization_181/batchnorm/subSubHsequential_30/batch_normalization_181/batchnorm/ReadVariableOp_2:value:09sequential_30/batch_normalization_181/batchnorm/mul_2:z:0*
T0*
_output_shapes
:25
3sequential_30/batch_normalization_181/batchnorm/sub?
5sequential_30/batch_normalization_181/batchnorm/add_1AddV29sequential_30/batch_normalization_181/batchnorm/mul_1:z:07sequential_30/batch_normalization_181/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????27
5sequential_30/batch_normalization_181/batchnorm/add_1?
"sequential_30/dropout_181/IdentityIdentity9sequential_30/batch_normalization_181/batchnorm/add_1:z:0*
T0*+
_output_shapes
:?????????2$
"sequential_30/dropout_181/Identity?
0sequential_30/dense_212/Tensordot/ReadVariableOpReadVariableOp9sequential_30_dense_212_tensordot_readvariableop_resource*
_output_shapes

:*
dtype022
0sequential_30/dense_212/Tensordot/ReadVariableOp?
&sequential_30/dense_212/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2(
&sequential_30/dense_212/Tensordot/axes?
&sequential_30/dense_212/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2(
&sequential_30/dense_212/Tensordot/free?
'sequential_30/dense_212/Tensordot/ShapeShape+sequential_30/dropout_181/Identity:output:0*
T0*
_output_shapes
:2)
'sequential_30/dense_212/Tensordot/Shape?
/sequential_30/dense_212/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_30/dense_212/Tensordot/GatherV2/axis?
*sequential_30/dense_212/Tensordot/GatherV2GatherV20sequential_30/dense_212/Tensordot/Shape:output:0/sequential_30/dense_212/Tensordot/free:output:08sequential_30/dense_212/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_30/dense_212/Tensordot/GatherV2?
1sequential_30/dense_212/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1sequential_30/dense_212/Tensordot/GatherV2_1/axis?
,sequential_30/dense_212/Tensordot/GatherV2_1GatherV20sequential_30/dense_212/Tensordot/Shape:output:0/sequential_30/dense_212/Tensordot/axes:output:0:sequential_30/dense_212/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2.
,sequential_30/dense_212/Tensordot/GatherV2_1?
'sequential_30/dense_212/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_30/dense_212/Tensordot/Const?
&sequential_30/dense_212/Tensordot/ProdProd3sequential_30/dense_212/Tensordot/GatherV2:output:00sequential_30/dense_212/Tensordot/Const:output:0*
T0*
_output_shapes
: 2(
&sequential_30/dense_212/Tensordot/Prod?
)sequential_30/dense_212/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_30/dense_212/Tensordot/Const_1?
(sequential_30/dense_212/Tensordot/Prod_1Prod5sequential_30/dense_212/Tensordot/GatherV2_1:output:02sequential_30/dense_212/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2*
(sequential_30/dense_212/Tensordot/Prod_1?
-sequential_30/dense_212/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_30/dense_212/Tensordot/concat/axis?
(sequential_30/dense_212/Tensordot/concatConcatV2/sequential_30/dense_212/Tensordot/free:output:0/sequential_30/dense_212/Tensordot/axes:output:06sequential_30/dense_212/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_30/dense_212/Tensordot/concat?
'sequential_30/dense_212/Tensordot/stackPack/sequential_30/dense_212/Tensordot/Prod:output:01sequential_30/dense_212/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2)
'sequential_30/dense_212/Tensordot/stack?
+sequential_30/dense_212/Tensordot/transpose	Transpose+sequential_30/dropout_181/Identity:output:01sequential_30/dense_212/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????2-
+sequential_30/dense_212/Tensordot/transpose?
)sequential_30/dense_212/Tensordot/ReshapeReshape/sequential_30/dense_212/Tensordot/transpose:y:00sequential_30/dense_212/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2+
)sequential_30/dense_212/Tensordot/Reshape?
(sequential_30/dense_212/Tensordot/MatMulMatMul2sequential_30/dense_212/Tensordot/Reshape:output:08sequential_30/dense_212/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2*
(sequential_30/dense_212/Tensordot/MatMul?
)sequential_30/dense_212/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_30/dense_212/Tensordot/Const_2?
/sequential_30/dense_212/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_30/dense_212/Tensordot/concat_1/axis?
*sequential_30/dense_212/Tensordot/concat_1ConcatV23sequential_30/dense_212/Tensordot/GatherV2:output:02sequential_30/dense_212/Tensordot/Const_2:output:08sequential_30/dense_212/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2,
*sequential_30/dense_212/Tensordot/concat_1?
!sequential_30/dense_212/TensordotReshape2sequential_30/dense_212/Tensordot/MatMul:product:03sequential_30/dense_212/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2#
!sequential_30/dense_212/Tensordot?
.sequential_30/dense_212/BiasAdd/ReadVariableOpReadVariableOp7sequential_30_dense_212_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_30/dense_212/BiasAdd/ReadVariableOp?
sequential_30/dense_212/BiasAddBiasAdd*sequential_30/dense_212/Tensordot:output:06sequential_30/dense_212/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2!
sequential_30/dense_212/BiasAdd?
IdentityIdentity(sequential_30/dense_212/BiasAdd:output:0?^sequential_30/batch_normalization_177/batchnorm/ReadVariableOpA^sequential_30/batch_normalization_177/batchnorm/ReadVariableOp_1A^sequential_30/batch_normalization_177/batchnorm/ReadVariableOp_2C^sequential_30/batch_normalization_177/batchnorm/mul/ReadVariableOp?^sequential_30/batch_normalization_178/batchnorm/ReadVariableOpA^sequential_30/batch_normalization_178/batchnorm/ReadVariableOp_1A^sequential_30/batch_normalization_178/batchnorm/ReadVariableOp_2C^sequential_30/batch_normalization_178/batchnorm/mul/ReadVariableOp?^sequential_30/batch_normalization_179/batchnorm/ReadVariableOpA^sequential_30/batch_normalization_179/batchnorm/ReadVariableOp_1A^sequential_30/batch_normalization_179/batchnorm/ReadVariableOp_2C^sequential_30/batch_normalization_179/batchnorm/mul/ReadVariableOp?^sequential_30/batch_normalization_180/batchnorm/ReadVariableOpA^sequential_30/batch_normalization_180/batchnorm/ReadVariableOp_1A^sequential_30/batch_normalization_180/batchnorm/ReadVariableOp_2C^sequential_30/batch_normalization_180/batchnorm/mul/ReadVariableOp?^sequential_30/batch_normalization_181/batchnorm/ReadVariableOpA^sequential_30/batch_normalization_181/batchnorm/ReadVariableOp_1A^sequential_30/batch_normalization_181/batchnorm/ReadVariableOp_2C^sequential_30/batch_normalization_181/batchnorm/mul/ReadVariableOp/^sequential_30/dense_207/BiasAdd/ReadVariableOp1^sequential_30/dense_207/Tensordot/ReadVariableOp/^sequential_30/dense_208/BiasAdd/ReadVariableOp1^sequential_30/dense_208/Tensordot/ReadVariableOp/^sequential_30/dense_209/BiasAdd/ReadVariableOp1^sequential_30/dense_209/Tensordot/ReadVariableOp/^sequential_30/dense_210/BiasAdd/ReadVariableOp1^sequential_30/dense_210/Tensordot/ReadVariableOp/^sequential_30/dense_211/BiasAdd/ReadVariableOp1^sequential_30/dense_211/Tensordot/ReadVariableOp/^sequential_30/dense_212/BiasAdd/ReadVariableOp1^sequential_30/dense_212/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::2?
>sequential_30/batch_normalization_177/batchnorm/ReadVariableOp>sequential_30/batch_normalization_177/batchnorm/ReadVariableOp2?
@sequential_30/batch_normalization_177/batchnorm/ReadVariableOp_1@sequential_30/batch_normalization_177/batchnorm/ReadVariableOp_12?
@sequential_30/batch_normalization_177/batchnorm/ReadVariableOp_2@sequential_30/batch_normalization_177/batchnorm/ReadVariableOp_22?
Bsequential_30/batch_normalization_177/batchnorm/mul/ReadVariableOpBsequential_30/batch_normalization_177/batchnorm/mul/ReadVariableOp2?
>sequential_30/batch_normalization_178/batchnorm/ReadVariableOp>sequential_30/batch_normalization_178/batchnorm/ReadVariableOp2?
@sequential_30/batch_normalization_178/batchnorm/ReadVariableOp_1@sequential_30/batch_normalization_178/batchnorm/ReadVariableOp_12?
@sequential_30/batch_normalization_178/batchnorm/ReadVariableOp_2@sequential_30/batch_normalization_178/batchnorm/ReadVariableOp_22?
Bsequential_30/batch_normalization_178/batchnorm/mul/ReadVariableOpBsequential_30/batch_normalization_178/batchnorm/mul/ReadVariableOp2?
>sequential_30/batch_normalization_179/batchnorm/ReadVariableOp>sequential_30/batch_normalization_179/batchnorm/ReadVariableOp2?
@sequential_30/batch_normalization_179/batchnorm/ReadVariableOp_1@sequential_30/batch_normalization_179/batchnorm/ReadVariableOp_12?
@sequential_30/batch_normalization_179/batchnorm/ReadVariableOp_2@sequential_30/batch_normalization_179/batchnorm/ReadVariableOp_22?
Bsequential_30/batch_normalization_179/batchnorm/mul/ReadVariableOpBsequential_30/batch_normalization_179/batchnorm/mul/ReadVariableOp2?
>sequential_30/batch_normalization_180/batchnorm/ReadVariableOp>sequential_30/batch_normalization_180/batchnorm/ReadVariableOp2?
@sequential_30/batch_normalization_180/batchnorm/ReadVariableOp_1@sequential_30/batch_normalization_180/batchnorm/ReadVariableOp_12?
@sequential_30/batch_normalization_180/batchnorm/ReadVariableOp_2@sequential_30/batch_normalization_180/batchnorm/ReadVariableOp_22?
Bsequential_30/batch_normalization_180/batchnorm/mul/ReadVariableOpBsequential_30/batch_normalization_180/batchnorm/mul/ReadVariableOp2?
>sequential_30/batch_normalization_181/batchnorm/ReadVariableOp>sequential_30/batch_normalization_181/batchnorm/ReadVariableOp2?
@sequential_30/batch_normalization_181/batchnorm/ReadVariableOp_1@sequential_30/batch_normalization_181/batchnorm/ReadVariableOp_12?
@sequential_30/batch_normalization_181/batchnorm/ReadVariableOp_2@sequential_30/batch_normalization_181/batchnorm/ReadVariableOp_22?
Bsequential_30/batch_normalization_181/batchnorm/mul/ReadVariableOpBsequential_30/batch_normalization_181/batchnorm/mul/ReadVariableOp2`
.sequential_30/dense_207/BiasAdd/ReadVariableOp.sequential_30/dense_207/BiasAdd/ReadVariableOp2d
0sequential_30/dense_207/Tensordot/ReadVariableOp0sequential_30/dense_207/Tensordot/ReadVariableOp2`
.sequential_30/dense_208/BiasAdd/ReadVariableOp.sequential_30/dense_208/BiasAdd/ReadVariableOp2d
0sequential_30/dense_208/Tensordot/ReadVariableOp0sequential_30/dense_208/Tensordot/ReadVariableOp2`
.sequential_30/dense_209/BiasAdd/ReadVariableOp.sequential_30/dense_209/BiasAdd/ReadVariableOp2d
0sequential_30/dense_209/Tensordot/ReadVariableOp0sequential_30/dense_209/Tensordot/ReadVariableOp2`
.sequential_30/dense_210/BiasAdd/ReadVariableOp.sequential_30/dense_210/BiasAdd/ReadVariableOp2d
0sequential_30/dense_210/Tensordot/ReadVariableOp0sequential_30/dense_210/Tensordot/ReadVariableOp2`
.sequential_30/dense_211/BiasAdd/ReadVariableOp.sequential_30/dense_211/BiasAdd/ReadVariableOp2d
0sequential_30/dense_211/Tensordot/ReadVariableOp0sequential_30/dense_211/Tensordot/ReadVariableOp2`
.sequential_30/dense_212/BiasAdd/ReadVariableOp.sequential_30/dense_212/BiasAdd/ReadVariableOp2d
0sequential_30/dense_212/Tensordot/ReadVariableOp0sequential_30/dense_212/Tensordot/ReadVariableOp:\ X
+
_output_shapes
:?????????
)
_user_specified_namedense_207_input
??
?
I__inference_sequential_30_layer_call_and_return_conditional_losses_300583

inputs/
+dense_207_tensordot_readvariableop_resource-
)dense_207_biasadd_readvariableop_resource=
9batch_normalization_177_batchnorm_readvariableop_resourceA
=batch_normalization_177_batchnorm_mul_readvariableop_resource?
;batch_normalization_177_batchnorm_readvariableop_1_resource?
;batch_normalization_177_batchnorm_readvariableop_2_resource/
+dense_208_tensordot_readvariableop_resource-
)dense_208_biasadd_readvariableop_resource=
9batch_normalization_178_batchnorm_readvariableop_resourceA
=batch_normalization_178_batchnorm_mul_readvariableop_resource?
;batch_normalization_178_batchnorm_readvariableop_1_resource?
;batch_normalization_178_batchnorm_readvariableop_2_resource/
+dense_209_tensordot_readvariableop_resource-
)dense_209_biasadd_readvariableop_resource=
9batch_normalization_179_batchnorm_readvariableop_resourceA
=batch_normalization_179_batchnorm_mul_readvariableop_resource?
;batch_normalization_179_batchnorm_readvariableop_1_resource?
;batch_normalization_179_batchnorm_readvariableop_2_resource/
+dense_210_tensordot_readvariableop_resource-
)dense_210_biasadd_readvariableop_resource=
9batch_normalization_180_batchnorm_readvariableop_resourceA
=batch_normalization_180_batchnorm_mul_readvariableop_resource?
;batch_normalization_180_batchnorm_readvariableop_1_resource?
;batch_normalization_180_batchnorm_readvariableop_2_resource/
+dense_211_tensordot_readvariableop_resource-
)dense_211_biasadd_readvariableop_resource=
9batch_normalization_181_batchnorm_readvariableop_resourceA
=batch_normalization_181_batchnorm_mul_readvariableop_resource?
;batch_normalization_181_batchnorm_readvariableop_1_resource?
;batch_normalization_181_batchnorm_readvariableop_2_resource/
+dense_212_tensordot_readvariableop_resource-
)dense_212_biasadd_readvariableop_resource
identity??0batch_normalization_177/batchnorm/ReadVariableOp?2batch_normalization_177/batchnorm/ReadVariableOp_1?2batch_normalization_177/batchnorm/ReadVariableOp_2?4batch_normalization_177/batchnorm/mul/ReadVariableOp?0batch_normalization_178/batchnorm/ReadVariableOp?2batch_normalization_178/batchnorm/ReadVariableOp_1?2batch_normalization_178/batchnorm/ReadVariableOp_2?4batch_normalization_178/batchnorm/mul/ReadVariableOp?0batch_normalization_179/batchnorm/ReadVariableOp?2batch_normalization_179/batchnorm/ReadVariableOp_1?2batch_normalization_179/batchnorm/ReadVariableOp_2?4batch_normalization_179/batchnorm/mul/ReadVariableOp?0batch_normalization_180/batchnorm/ReadVariableOp?2batch_normalization_180/batchnorm/ReadVariableOp_1?2batch_normalization_180/batchnorm/ReadVariableOp_2?4batch_normalization_180/batchnorm/mul/ReadVariableOp?0batch_normalization_181/batchnorm/ReadVariableOp?2batch_normalization_181/batchnorm/ReadVariableOp_1?2batch_normalization_181/batchnorm/ReadVariableOp_2?4batch_normalization_181/batchnorm/mul/ReadVariableOp? dense_207/BiasAdd/ReadVariableOp?"dense_207/Tensordot/ReadVariableOp? dense_208/BiasAdd/ReadVariableOp?"dense_208/Tensordot/ReadVariableOp? dense_209/BiasAdd/ReadVariableOp?"dense_209/Tensordot/ReadVariableOp? dense_210/BiasAdd/ReadVariableOp?"dense_210/Tensordot/ReadVariableOp? dense_211/BiasAdd/ReadVariableOp?"dense_211/Tensordot/ReadVariableOp? dense_212/BiasAdd/ReadVariableOp?"dense_212/Tensordot/ReadVariableOp?
"dense_207/Tensordot/ReadVariableOpReadVariableOp+dense_207_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"dense_207/Tensordot/ReadVariableOp~
dense_207/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_207/Tensordot/axes?
dense_207/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_207/Tensordot/freel
dense_207/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense_207/Tensordot/Shape?
!dense_207/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_207/Tensordot/GatherV2/axis?
dense_207/Tensordot/GatherV2GatherV2"dense_207/Tensordot/Shape:output:0!dense_207/Tensordot/free:output:0*dense_207/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_207/Tensordot/GatherV2?
#dense_207/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_207/Tensordot/GatherV2_1/axis?
dense_207/Tensordot/GatherV2_1GatherV2"dense_207/Tensordot/Shape:output:0!dense_207/Tensordot/axes:output:0,dense_207/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_207/Tensordot/GatherV2_1?
dense_207/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_207/Tensordot/Const?
dense_207/Tensordot/ProdProd%dense_207/Tensordot/GatherV2:output:0"dense_207/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_207/Tensordot/Prod?
dense_207/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_207/Tensordot/Const_1?
dense_207/Tensordot/Prod_1Prod'dense_207/Tensordot/GatherV2_1:output:0$dense_207/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_207/Tensordot/Prod_1?
dense_207/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_207/Tensordot/concat/axis?
dense_207/Tensordot/concatConcatV2!dense_207/Tensordot/free:output:0!dense_207/Tensordot/axes:output:0(dense_207/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_207/Tensordot/concat?
dense_207/Tensordot/stackPack!dense_207/Tensordot/Prod:output:0#dense_207/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_207/Tensordot/stack?
dense_207/Tensordot/transpose	Transposeinputs#dense_207/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????2
dense_207/Tensordot/transpose?
dense_207/Tensordot/ReshapeReshape!dense_207/Tensordot/transpose:y:0"dense_207/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_207/Tensordot/Reshape?
dense_207/Tensordot/MatMulMatMul$dense_207/Tensordot/Reshape:output:0*dense_207/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_207/Tensordot/MatMul?
dense_207/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
dense_207/Tensordot/Const_2?
!dense_207/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_207/Tensordot/concat_1/axis?
dense_207/Tensordot/concat_1ConcatV2%dense_207/Tensordot/GatherV2:output:0$dense_207/Tensordot/Const_2:output:0*dense_207/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_207/Tensordot/concat_1?
dense_207/TensordotReshape$dense_207/Tensordot/MatMul:product:0%dense_207/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
dense_207/Tensordot?
 dense_207/BiasAdd/ReadVariableOpReadVariableOp)dense_207_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_207/BiasAdd/ReadVariableOp?
dense_207/BiasAddBiasAdddense_207/Tensordot:output:0(dense_207/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
dense_207/BiasAdd{
dense_207/ReluReludense_207/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
dense_207/Relu?
0batch_normalization_177/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_177_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_177/batchnorm/ReadVariableOp?
'batch_normalization_177/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2)
'batch_normalization_177/batchnorm/add/y?
%batch_normalization_177/batchnorm/addAddV28batch_normalization_177/batchnorm/ReadVariableOp:value:00batch_normalization_177/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2'
%batch_normalization_177/batchnorm/add?
'batch_normalization_177/batchnorm/RsqrtRsqrt)batch_normalization_177/batchnorm/add:z:0*
T0*
_output_shapes	
:?2)
'batch_normalization_177/batchnorm/Rsqrt?
4batch_normalization_177/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_177_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype026
4batch_normalization_177/batchnorm/mul/ReadVariableOp?
%batch_normalization_177/batchnorm/mulMul+batch_normalization_177/batchnorm/Rsqrt:y:0<batch_normalization_177/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2'
%batch_normalization_177/batchnorm/mul?
'batch_normalization_177/batchnorm/mul_1Muldense_207/Relu:activations:0)batch_normalization_177/batchnorm/mul:z:0*
T0*,
_output_shapes
:??????????2)
'batch_normalization_177/batchnorm/mul_1?
2batch_normalization_177/batchnorm/ReadVariableOp_1ReadVariableOp;batch_normalization_177_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_177/batchnorm/ReadVariableOp_1?
'batch_normalization_177/batchnorm/mul_2Mul:batch_normalization_177/batchnorm/ReadVariableOp_1:value:0)batch_normalization_177/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2)
'batch_normalization_177/batchnorm/mul_2?
2batch_normalization_177/batchnorm/ReadVariableOp_2ReadVariableOp;batch_normalization_177_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_177/batchnorm/ReadVariableOp_2?
%batch_normalization_177/batchnorm/subSub:batch_normalization_177/batchnorm/ReadVariableOp_2:value:0+batch_normalization_177/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_177/batchnorm/sub?
'batch_normalization_177/batchnorm/add_1AddV2+batch_normalization_177/batchnorm/mul_1:z:0)batch_normalization_177/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????2)
'batch_normalization_177/batchnorm/add_1?
dropout_177/IdentityIdentity+batch_normalization_177/batchnorm/add_1:z:0*
T0*,
_output_shapes
:??????????2
dropout_177/Identity?
"dense_208/Tensordot/ReadVariableOpReadVariableOp+dense_208_tensordot_readvariableop_resource*
_output_shapes
:	?d*
dtype02$
"dense_208/Tensordot/ReadVariableOp~
dense_208/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_208/Tensordot/axes?
dense_208/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_208/Tensordot/free?
dense_208/Tensordot/ShapeShapedropout_177/Identity:output:0*
T0*
_output_shapes
:2
dense_208/Tensordot/Shape?
!dense_208/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_208/Tensordot/GatherV2/axis?
dense_208/Tensordot/GatherV2GatherV2"dense_208/Tensordot/Shape:output:0!dense_208/Tensordot/free:output:0*dense_208/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_208/Tensordot/GatherV2?
#dense_208/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_208/Tensordot/GatherV2_1/axis?
dense_208/Tensordot/GatherV2_1GatherV2"dense_208/Tensordot/Shape:output:0!dense_208/Tensordot/axes:output:0,dense_208/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_208/Tensordot/GatherV2_1?
dense_208/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_208/Tensordot/Const?
dense_208/Tensordot/ProdProd%dense_208/Tensordot/GatherV2:output:0"dense_208/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_208/Tensordot/Prod?
dense_208/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_208/Tensordot/Const_1?
dense_208/Tensordot/Prod_1Prod'dense_208/Tensordot/GatherV2_1:output:0$dense_208/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_208/Tensordot/Prod_1?
dense_208/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_208/Tensordot/concat/axis?
dense_208/Tensordot/concatConcatV2!dense_208/Tensordot/free:output:0!dense_208/Tensordot/axes:output:0(dense_208/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_208/Tensordot/concat?
dense_208/Tensordot/stackPack!dense_208/Tensordot/Prod:output:0#dense_208/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_208/Tensordot/stack?
dense_208/Tensordot/transpose	Transposedropout_177/Identity:output:0#dense_208/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
dense_208/Tensordot/transpose?
dense_208/Tensordot/ReshapeReshape!dense_208/Tensordot/transpose:y:0"dense_208/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_208/Tensordot/Reshape?
dense_208/Tensordot/MatMulMatMul$dense_208/Tensordot/Reshape:output:0*dense_208/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_208/Tensordot/MatMul?
dense_208/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
dense_208/Tensordot/Const_2?
!dense_208/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_208/Tensordot/concat_1/axis?
dense_208/Tensordot/concat_1ConcatV2%dense_208/Tensordot/GatherV2:output:0$dense_208/Tensordot/Const_2:output:0*dense_208/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_208/Tensordot/concat_1?
dense_208/TensordotReshape$dense_208/Tensordot/MatMul:product:0%dense_208/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????d2
dense_208/Tensordot?
 dense_208/BiasAdd/ReadVariableOpReadVariableOp)dense_208_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_208/BiasAdd/ReadVariableOp?
dense_208/BiasAddBiasAdddense_208/Tensordot:output:0(dense_208/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d2
dense_208/BiasAdd?
0batch_normalization_178/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_178_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype022
0batch_normalization_178/batchnorm/ReadVariableOp?
'batch_normalization_178/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2)
'batch_normalization_178/batchnorm/add/y?
%batch_normalization_178/batchnorm/addAddV28batch_normalization_178/batchnorm/ReadVariableOp:value:00batch_normalization_178/batchnorm/add/y:output:0*
T0*
_output_shapes
:d2'
%batch_normalization_178/batchnorm/add?
'batch_normalization_178/batchnorm/RsqrtRsqrt)batch_normalization_178/batchnorm/add:z:0*
T0*
_output_shapes
:d2)
'batch_normalization_178/batchnorm/Rsqrt?
4batch_normalization_178/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_178_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype026
4batch_normalization_178/batchnorm/mul/ReadVariableOp?
%batch_normalization_178/batchnorm/mulMul+batch_normalization_178/batchnorm/Rsqrt:y:0<batch_normalization_178/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:d2'
%batch_normalization_178/batchnorm/mul?
'batch_normalization_178/batchnorm/mul_1Muldense_208/BiasAdd:output:0)batch_normalization_178/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????d2)
'batch_normalization_178/batchnorm/mul_1?
2batch_normalization_178/batchnorm/ReadVariableOp_1ReadVariableOp;batch_normalization_178_batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype024
2batch_normalization_178/batchnorm/ReadVariableOp_1?
'batch_normalization_178/batchnorm/mul_2Mul:batch_normalization_178/batchnorm/ReadVariableOp_1:value:0)batch_normalization_178/batchnorm/mul:z:0*
T0*
_output_shapes
:d2)
'batch_normalization_178/batchnorm/mul_2?
2batch_normalization_178/batchnorm/ReadVariableOp_2ReadVariableOp;batch_normalization_178_batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype024
2batch_normalization_178/batchnorm/ReadVariableOp_2?
%batch_normalization_178/batchnorm/subSub:batch_normalization_178/batchnorm/ReadVariableOp_2:value:0+batch_normalization_178/batchnorm/mul_2:z:0*
T0*
_output_shapes
:d2'
%batch_normalization_178/batchnorm/sub?
'batch_normalization_178/batchnorm/add_1AddV2+batch_normalization_178/batchnorm/mul_1:z:0)batch_normalization_178/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????d2)
'batch_normalization_178/batchnorm/add_1?
dropout_178/IdentityIdentity+batch_normalization_178/batchnorm/add_1:z:0*
T0*+
_output_shapes
:?????????d2
dropout_178/Identity?
"dense_209/Tensordot/ReadVariableOpReadVariableOp+dense_209_tensordot_readvariableop_resource*
_output_shapes

:d2*
dtype02$
"dense_209/Tensordot/ReadVariableOp~
dense_209/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_209/Tensordot/axes?
dense_209/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_209/Tensordot/free?
dense_209/Tensordot/ShapeShapedropout_178/Identity:output:0*
T0*
_output_shapes
:2
dense_209/Tensordot/Shape?
!dense_209/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_209/Tensordot/GatherV2/axis?
dense_209/Tensordot/GatherV2GatherV2"dense_209/Tensordot/Shape:output:0!dense_209/Tensordot/free:output:0*dense_209/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_209/Tensordot/GatherV2?
#dense_209/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_209/Tensordot/GatherV2_1/axis?
dense_209/Tensordot/GatherV2_1GatherV2"dense_209/Tensordot/Shape:output:0!dense_209/Tensordot/axes:output:0,dense_209/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_209/Tensordot/GatherV2_1?
dense_209/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_209/Tensordot/Const?
dense_209/Tensordot/ProdProd%dense_209/Tensordot/GatherV2:output:0"dense_209/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_209/Tensordot/Prod?
dense_209/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_209/Tensordot/Const_1?
dense_209/Tensordot/Prod_1Prod'dense_209/Tensordot/GatherV2_1:output:0$dense_209/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_209/Tensordot/Prod_1?
dense_209/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_209/Tensordot/concat/axis?
dense_209/Tensordot/concatConcatV2!dense_209/Tensordot/free:output:0!dense_209/Tensordot/axes:output:0(dense_209/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_209/Tensordot/concat?
dense_209/Tensordot/stackPack!dense_209/Tensordot/Prod:output:0#dense_209/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_209/Tensordot/stack?
dense_209/Tensordot/transpose	Transposedropout_178/Identity:output:0#dense_209/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????d2
dense_209/Tensordot/transpose?
dense_209/Tensordot/ReshapeReshape!dense_209/Tensordot/transpose:y:0"dense_209/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_209/Tensordot/Reshape?
dense_209/Tensordot/MatMulMatMul$dense_209/Tensordot/Reshape:output:0*dense_209/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_209/Tensordot/MatMul?
dense_209/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:22
dense_209/Tensordot/Const_2?
!dense_209/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_209/Tensordot/concat_1/axis?
dense_209/Tensordot/concat_1ConcatV2%dense_209/Tensordot/GatherV2:output:0$dense_209/Tensordot/Const_2:output:0*dense_209/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_209/Tensordot/concat_1?
dense_209/TensordotReshape$dense_209/Tensordot/MatMul:product:0%dense_209/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????22
dense_209/Tensordot?
 dense_209/BiasAdd/ReadVariableOpReadVariableOp)dense_209_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02"
 dense_209/BiasAdd/ReadVariableOp?
dense_209/BiasAddBiasAdddense_209/Tensordot:output:0(dense_209/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????22
dense_209/BiasAdd?
0batch_normalization_179/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_179_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype022
0batch_normalization_179/batchnorm/ReadVariableOp?
'batch_normalization_179/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2)
'batch_normalization_179/batchnorm/add/y?
%batch_normalization_179/batchnorm/addAddV28batch_normalization_179/batchnorm/ReadVariableOp:value:00batch_normalization_179/batchnorm/add/y:output:0*
T0*
_output_shapes
:22'
%batch_normalization_179/batchnorm/add?
'batch_normalization_179/batchnorm/RsqrtRsqrt)batch_normalization_179/batchnorm/add:z:0*
T0*
_output_shapes
:22)
'batch_normalization_179/batchnorm/Rsqrt?
4batch_normalization_179/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_179_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype026
4batch_normalization_179/batchnorm/mul/ReadVariableOp?
%batch_normalization_179/batchnorm/mulMul+batch_normalization_179/batchnorm/Rsqrt:y:0<batch_normalization_179/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:22'
%batch_normalization_179/batchnorm/mul?
'batch_normalization_179/batchnorm/mul_1Muldense_209/BiasAdd:output:0)batch_normalization_179/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????22)
'batch_normalization_179/batchnorm/mul_1?
2batch_normalization_179/batchnorm/ReadVariableOp_1ReadVariableOp;batch_normalization_179_batchnorm_readvariableop_1_resource*
_output_shapes
:2*
dtype024
2batch_normalization_179/batchnorm/ReadVariableOp_1?
'batch_normalization_179/batchnorm/mul_2Mul:batch_normalization_179/batchnorm/ReadVariableOp_1:value:0)batch_normalization_179/batchnorm/mul:z:0*
T0*
_output_shapes
:22)
'batch_normalization_179/batchnorm/mul_2?
2batch_normalization_179/batchnorm/ReadVariableOp_2ReadVariableOp;batch_normalization_179_batchnorm_readvariableop_2_resource*
_output_shapes
:2*
dtype024
2batch_normalization_179/batchnorm/ReadVariableOp_2?
%batch_normalization_179/batchnorm/subSub:batch_normalization_179/batchnorm/ReadVariableOp_2:value:0+batch_normalization_179/batchnorm/mul_2:z:0*
T0*
_output_shapes
:22'
%batch_normalization_179/batchnorm/sub?
'batch_normalization_179/batchnorm/add_1AddV2+batch_normalization_179/batchnorm/mul_1:z:0)batch_normalization_179/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????22)
'batch_normalization_179/batchnorm/add_1?
dropout_179/IdentityIdentity+batch_normalization_179/batchnorm/add_1:z:0*
T0*+
_output_shapes
:?????????22
dropout_179/Identity?
"dense_210/Tensordot/ReadVariableOpReadVariableOp+dense_210_tensordot_readvariableop_resource*
_output_shapes

:2*
dtype02$
"dense_210/Tensordot/ReadVariableOp~
dense_210/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_210/Tensordot/axes?
dense_210/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_210/Tensordot/free?
dense_210/Tensordot/ShapeShapedropout_179/Identity:output:0*
T0*
_output_shapes
:2
dense_210/Tensordot/Shape?
!dense_210/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_210/Tensordot/GatherV2/axis?
dense_210/Tensordot/GatherV2GatherV2"dense_210/Tensordot/Shape:output:0!dense_210/Tensordot/free:output:0*dense_210/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_210/Tensordot/GatherV2?
#dense_210/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_210/Tensordot/GatherV2_1/axis?
dense_210/Tensordot/GatherV2_1GatherV2"dense_210/Tensordot/Shape:output:0!dense_210/Tensordot/axes:output:0,dense_210/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_210/Tensordot/GatherV2_1?
dense_210/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_210/Tensordot/Const?
dense_210/Tensordot/ProdProd%dense_210/Tensordot/GatherV2:output:0"dense_210/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_210/Tensordot/Prod?
dense_210/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_210/Tensordot/Const_1?
dense_210/Tensordot/Prod_1Prod'dense_210/Tensordot/GatherV2_1:output:0$dense_210/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_210/Tensordot/Prod_1?
dense_210/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_210/Tensordot/concat/axis?
dense_210/Tensordot/concatConcatV2!dense_210/Tensordot/free:output:0!dense_210/Tensordot/axes:output:0(dense_210/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_210/Tensordot/concat?
dense_210/Tensordot/stackPack!dense_210/Tensordot/Prod:output:0#dense_210/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_210/Tensordot/stack?
dense_210/Tensordot/transpose	Transposedropout_179/Identity:output:0#dense_210/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????22
dense_210/Tensordot/transpose?
dense_210/Tensordot/ReshapeReshape!dense_210/Tensordot/transpose:y:0"dense_210/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_210/Tensordot/Reshape?
dense_210/Tensordot/MatMulMatMul$dense_210/Tensordot/Reshape:output:0*dense_210/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_210/Tensordot/MatMul?
dense_210/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_210/Tensordot/Const_2?
!dense_210/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_210/Tensordot/concat_1/axis?
dense_210/Tensordot/concat_1ConcatV2%dense_210/Tensordot/GatherV2:output:0$dense_210/Tensordot/Const_2:output:0*dense_210/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_210/Tensordot/concat_1?
dense_210/TensordotReshape$dense_210/Tensordot/MatMul:product:0%dense_210/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
dense_210/Tensordot?
 dense_210/BiasAdd/ReadVariableOpReadVariableOp)dense_210_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_210/BiasAdd/ReadVariableOp?
dense_210/BiasAddBiasAdddense_210/Tensordot:output:0(dense_210/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2
dense_210/BiasAdd?
0batch_normalization_180/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_180_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype022
0batch_normalization_180/batchnorm/ReadVariableOp?
'batch_normalization_180/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2)
'batch_normalization_180/batchnorm/add/y?
%batch_normalization_180/batchnorm/addAddV28batch_normalization_180/batchnorm/ReadVariableOp:value:00batch_normalization_180/batchnorm/add/y:output:0*
T0*
_output_shapes
:2'
%batch_normalization_180/batchnorm/add?
'batch_normalization_180/batchnorm/RsqrtRsqrt)batch_normalization_180/batchnorm/add:z:0*
T0*
_output_shapes
:2)
'batch_normalization_180/batchnorm/Rsqrt?
4batch_normalization_180/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_180_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype026
4batch_normalization_180/batchnorm/mul/ReadVariableOp?
%batch_normalization_180/batchnorm/mulMul+batch_normalization_180/batchnorm/Rsqrt:y:0<batch_normalization_180/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2'
%batch_normalization_180/batchnorm/mul?
'batch_normalization_180/batchnorm/mul_1Muldense_210/BiasAdd:output:0)batch_normalization_180/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????2)
'batch_normalization_180/batchnorm/mul_1?
2batch_normalization_180/batchnorm/ReadVariableOp_1ReadVariableOp;batch_normalization_180_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype024
2batch_normalization_180/batchnorm/ReadVariableOp_1?
'batch_normalization_180/batchnorm/mul_2Mul:batch_normalization_180/batchnorm/ReadVariableOp_1:value:0)batch_normalization_180/batchnorm/mul:z:0*
T0*
_output_shapes
:2)
'batch_normalization_180/batchnorm/mul_2?
2batch_normalization_180/batchnorm/ReadVariableOp_2ReadVariableOp;batch_normalization_180_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype024
2batch_normalization_180/batchnorm/ReadVariableOp_2?
%batch_normalization_180/batchnorm/subSub:batch_normalization_180/batchnorm/ReadVariableOp_2:value:0+batch_normalization_180/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2'
%batch_normalization_180/batchnorm/sub?
'batch_normalization_180/batchnorm/add_1AddV2+batch_normalization_180/batchnorm/mul_1:z:0)batch_normalization_180/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????2)
'batch_normalization_180/batchnorm/add_1?
dropout_180/IdentityIdentity+batch_normalization_180/batchnorm/add_1:z:0*
T0*+
_output_shapes
:?????????2
dropout_180/Identity?
"dense_211/Tensordot/ReadVariableOpReadVariableOp+dense_211_tensordot_readvariableop_resource*
_output_shapes

:*
dtype02$
"dense_211/Tensordot/ReadVariableOp~
dense_211/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_211/Tensordot/axes?
dense_211/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_211/Tensordot/free?
dense_211/Tensordot/ShapeShapedropout_180/Identity:output:0*
T0*
_output_shapes
:2
dense_211/Tensordot/Shape?
!dense_211/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_211/Tensordot/GatherV2/axis?
dense_211/Tensordot/GatherV2GatherV2"dense_211/Tensordot/Shape:output:0!dense_211/Tensordot/free:output:0*dense_211/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_211/Tensordot/GatherV2?
#dense_211/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_211/Tensordot/GatherV2_1/axis?
dense_211/Tensordot/GatherV2_1GatherV2"dense_211/Tensordot/Shape:output:0!dense_211/Tensordot/axes:output:0,dense_211/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_211/Tensordot/GatherV2_1?
dense_211/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_211/Tensordot/Const?
dense_211/Tensordot/ProdProd%dense_211/Tensordot/GatherV2:output:0"dense_211/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_211/Tensordot/Prod?
dense_211/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_211/Tensordot/Const_1?
dense_211/Tensordot/Prod_1Prod'dense_211/Tensordot/GatherV2_1:output:0$dense_211/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_211/Tensordot/Prod_1?
dense_211/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_211/Tensordot/concat/axis?
dense_211/Tensordot/concatConcatV2!dense_211/Tensordot/free:output:0!dense_211/Tensordot/axes:output:0(dense_211/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_211/Tensordot/concat?
dense_211/Tensordot/stackPack!dense_211/Tensordot/Prod:output:0#dense_211/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_211/Tensordot/stack?
dense_211/Tensordot/transpose	Transposedropout_180/Identity:output:0#dense_211/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????2
dense_211/Tensordot/transpose?
dense_211/Tensordot/ReshapeReshape!dense_211/Tensordot/transpose:y:0"dense_211/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_211/Tensordot/Reshape?
dense_211/Tensordot/MatMulMatMul$dense_211/Tensordot/Reshape:output:0*dense_211/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_211/Tensordot/MatMul?
dense_211/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_211/Tensordot/Const_2?
!dense_211/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_211/Tensordot/concat_1/axis?
dense_211/Tensordot/concat_1ConcatV2%dense_211/Tensordot/GatherV2:output:0$dense_211/Tensordot/Const_2:output:0*dense_211/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_211/Tensordot/concat_1?
dense_211/TensordotReshape$dense_211/Tensordot/MatMul:product:0%dense_211/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
dense_211/Tensordot?
 dense_211/BiasAdd/ReadVariableOpReadVariableOp)dense_211_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_211/BiasAdd/ReadVariableOp?
dense_211/BiasAddBiasAdddense_211/Tensordot:output:0(dense_211/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2
dense_211/BiasAdd?
0batch_normalization_181/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_181_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype022
0batch_normalization_181/batchnorm/ReadVariableOp?
'batch_normalization_181/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2)
'batch_normalization_181/batchnorm/add/y?
%batch_normalization_181/batchnorm/addAddV28batch_normalization_181/batchnorm/ReadVariableOp:value:00batch_normalization_181/batchnorm/add/y:output:0*
T0*
_output_shapes
:2'
%batch_normalization_181/batchnorm/add?
'batch_normalization_181/batchnorm/RsqrtRsqrt)batch_normalization_181/batchnorm/add:z:0*
T0*
_output_shapes
:2)
'batch_normalization_181/batchnorm/Rsqrt?
4batch_normalization_181/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_181_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype026
4batch_normalization_181/batchnorm/mul/ReadVariableOp?
%batch_normalization_181/batchnorm/mulMul+batch_normalization_181/batchnorm/Rsqrt:y:0<batch_normalization_181/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2'
%batch_normalization_181/batchnorm/mul?
'batch_normalization_181/batchnorm/mul_1Muldense_211/BiasAdd:output:0)batch_normalization_181/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????2)
'batch_normalization_181/batchnorm/mul_1?
2batch_normalization_181/batchnorm/ReadVariableOp_1ReadVariableOp;batch_normalization_181_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype024
2batch_normalization_181/batchnorm/ReadVariableOp_1?
'batch_normalization_181/batchnorm/mul_2Mul:batch_normalization_181/batchnorm/ReadVariableOp_1:value:0)batch_normalization_181/batchnorm/mul:z:0*
T0*
_output_shapes
:2)
'batch_normalization_181/batchnorm/mul_2?
2batch_normalization_181/batchnorm/ReadVariableOp_2ReadVariableOp;batch_normalization_181_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype024
2batch_normalization_181/batchnorm/ReadVariableOp_2?
%batch_normalization_181/batchnorm/subSub:batch_normalization_181/batchnorm/ReadVariableOp_2:value:0+batch_normalization_181/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2'
%batch_normalization_181/batchnorm/sub?
'batch_normalization_181/batchnorm/add_1AddV2+batch_normalization_181/batchnorm/mul_1:z:0)batch_normalization_181/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????2)
'batch_normalization_181/batchnorm/add_1?
dropout_181/IdentityIdentity+batch_normalization_181/batchnorm/add_1:z:0*
T0*+
_output_shapes
:?????????2
dropout_181/Identity?
"dense_212/Tensordot/ReadVariableOpReadVariableOp+dense_212_tensordot_readvariableop_resource*
_output_shapes

:*
dtype02$
"dense_212/Tensordot/ReadVariableOp~
dense_212/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_212/Tensordot/axes?
dense_212/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_212/Tensordot/free?
dense_212/Tensordot/ShapeShapedropout_181/Identity:output:0*
T0*
_output_shapes
:2
dense_212/Tensordot/Shape?
!dense_212/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_212/Tensordot/GatherV2/axis?
dense_212/Tensordot/GatherV2GatherV2"dense_212/Tensordot/Shape:output:0!dense_212/Tensordot/free:output:0*dense_212/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_212/Tensordot/GatherV2?
#dense_212/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_212/Tensordot/GatherV2_1/axis?
dense_212/Tensordot/GatherV2_1GatherV2"dense_212/Tensordot/Shape:output:0!dense_212/Tensordot/axes:output:0,dense_212/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_212/Tensordot/GatherV2_1?
dense_212/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_212/Tensordot/Const?
dense_212/Tensordot/ProdProd%dense_212/Tensordot/GatherV2:output:0"dense_212/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_212/Tensordot/Prod?
dense_212/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_212/Tensordot/Const_1?
dense_212/Tensordot/Prod_1Prod'dense_212/Tensordot/GatherV2_1:output:0$dense_212/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_212/Tensordot/Prod_1?
dense_212/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_212/Tensordot/concat/axis?
dense_212/Tensordot/concatConcatV2!dense_212/Tensordot/free:output:0!dense_212/Tensordot/axes:output:0(dense_212/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_212/Tensordot/concat?
dense_212/Tensordot/stackPack!dense_212/Tensordot/Prod:output:0#dense_212/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_212/Tensordot/stack?
dense_212/Tensordot/transpose	Transposedropout_181/Identity:output:0#dense_212/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????2
dense_212/Tensordot/transpose?
dense_212/Tensordot/ReshapeReshape!dense_212/Tensordot/transpose:y:0"dense_212/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_212/Tensordot/Reshape?
dense_212/Tensordot/MatMulMatMul$dense_212/Tensordot/Reshape:output:0*dense_212/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_212/Tensordot/MatMul?
dense_212/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_212/Tensordot/Const_2?
!dense_212/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_212/Tensordot/concat_1/axis?
dense_212/Tensordot/concat_1ConcatV2%dense_212/Tensordot/GatherV2:output:0$dense_212/Tensordot/Const_2:output:0*dense_212/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_212/Tensordot/concat_1?
dense_212/TensordotReshape$dense_212/Tensordot/MatMul:product:0%dense_212/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
dense_212/Tensordot?
 dense_212/BiasAdd/ReadVariableOpReadVariableOp)dense_212_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_212/BiasAdd/ReadVariableOp?
dense_212/BiasAddBiasAdddense_212/Tensordot:output:0(dense_212/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2
dense_212/BiasAdd?
IdentityIdentitydense_212/BiasAdd:output:01^batch_normalization_177/batchnorm/ReadVariableOp3^batch_normalization_177/batchnorm/ReadVariableOp_13^batch_normalization_177/batchnorm/ReadVariableOp_25^batch_normalization_177/batchnorm/mul/ReadVariableOp1^batch_normalization_178/batchnorm/ReadVariableOp3^batch_normalization_178/batchnorm/ReadVariableOp_13^batch_normalization_178/batchnorm/ReadVariableOp_25^batch_normalization_178/batchnorm/mul/ReadVariableOp1^batch_normalization_179/batchnorm/ReadVariableOp3^batch_normalization_179/batchnorm/ReadVariableOp_13^batch_normalization_179/batchnorm/ReadVariableOp_25^batch_normalization_179/batchnorm/mul/ReadVariableOp1^batch_normalization_180/batchnorm/ReadVariableOp3^batch_normalization_180/batchnorm/ReadVariableOp_13^batch_normalization_180/batchnorm/ReadVariableOp_25^batch_normalization_180/batchnorm/mul/ReadVariableOp1^batch_normalization_181/batchnorm/ReadVariableOp3^batch_normalization_181/batchnorm/ReadVariableOp_13^batch_normalization_181/batchnorm/ReadVariableOp_25^batch_normalization_181/batchnorm/mul/ReadVariableOp!^dense_207/BiasAdd/ReadVariableOp#^dense_207/Tensordot/ReadVariableOp!^dense_208/BiasAdd/ReadVariableOp#^dense_208/Tensordot/ReadVariableOp!^dense_209/BiasAdd/ReadVariableOp#^dense_209/Tensordot/ReadVariableOp!^dense_210/BiasAdd/ReadVariableOp#^dense_210/Tensordot/ReadVariableOp!^dense_211/BiasAdd/ReadVariableOp#^dense_211/Tensordot/ReadVariableOp!^dense_212/BiasAdd/ReadVariableOp#^dense_212/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::2d
0batch_normalization_177/batchnorm/ReadVariableOp0batch_normalization_177/batchnorm/ReadVariableOp2h
2batch_normalization_177/batchnorm/ReadVariableOp_12batch_normalization_177/batchnorm/ReadVariableOp_12h
2batch_normalization_177/batchnorm/ReadVariableOp_22batch_normalization_177/batchnorm/ReadVariableOp_22l
4batch_normalization_177/batchnorm/mul/ReadVariableOp4batch_normalization_177/batchnorm/mul/ReadVariableOp2d
0batch_normalization_178/batchnorm/ReadVariableOp0batch_normalization_178/batchnorm/ReadVariableOp2h
2batch_normalization_178/batchnorm/ReadVariableOp_12batch_normalization_178/batchnorm/ReadVariableOp_12h
2batch_normalization_178/batchnorm/ReadVariableOp_22batch_normalization_178/batchnorm/ReadVariableOp_22l
4batch_normalization_178/batchnorm/mul/ReadVariableOp4batch_normalization_178/batchnorm/mul/ReadVariableOp2d
0batch_normalization_179/batchnorm/ReadVariableOp0batch_normalization_179/batchnorm/ReadVariableOp2h
2batch_normalization_179/batchnorm/ReadVariableOp_12batch_normalization_179/batchnorm/ReadVariableOp_12h
2batch_normalization_179/batchnorm/ReadVariableOp_22batch_normalization_179/batchnorm/ReadVariableOp_22l
4batch_normalization_179/batchnorm/mul/ReadVariableOp4batch_normalization_179/batchnorm/mul/ReadVariableOp2d
0batch_normalization_180/batchnorm/ReadVariableOp0batch_normalization_180/batchnorm/ReadVariableOp2h
2batch_normalization_180/batchnorm/ReadVariableOp_12batch_normalization_180/batchnorm/ReadVariableOp_12h
2batch_normalization_180/batchnorm/ReadVariableOp_22batch_normalization_180/batchnorm/ReadVariableOp_22l
4batch_normalization_180/batchnorm/mul/ReadVariableOp4batch_normalization_180/batchnorm/mul/ReadVariableOp2d
0batch_normalization_181/batchnorm/ReadVariableOp0batch_normalization_181/batchnorm/ReadVariableOp2h
2batch_normalization_181/batchnorm/ReadVariableOp_12batch_normalization_181/batchnorm/ReadVariableOp_12h
2batch_normalization_181/batchnorm/ReadVariableOp_22batch_normalization_181/batchnorm/ReadVariableOp_22l
4batch_normalization_181/batchnorm/mul/ReadVariableOp4batch_normalization_181/batchnorm/mul/ReadVariableOp2D
 dense_207/BiasAdd/ReadVariableOp dense_207/BiasAdd/ReadVariableOp2H
"dense_207/Tensordot/ReadVariableOp"dense_207/Tensordot/ReadVariableOp2D
 dense_208/BiasAdd/ReadVariableOp dense_208/BiasAdd/ReadVariableOp2H
"dense_208/Tensordot/ReadVariableOp"dense_208/Tensordot/ReadVariableOp2D
 dense_209/BiasAdd/ReadVariableOp dense_209/BiasAdd/ReadVariableOp2H
"dense_209/Tensordot/ReadVariableOp"dense_209/Tensordot/ReadVariableOp2D
 dense_210/BiasAdd/ReadVariableOp dense_210/BiasAdd/ReadVariableOp2H
"dense_210/Tensordot/ReadVariableOp"dense_210/Tensordot/ReadVariableOp2D
 dense_211/BiasAdd/ReadVariableOp dense_211/BiasAdd/ReadVariableOp2H
"dense_211/Tensordot/ReadVariableOp"dense_211/Tensordot/ReadVariableOp2D
 dense_212/BiasAdd/ReadVariableOp dense_212/BiasAdd/ReadVariableOp2H
"dense_212/Tensordot/ReadVariableOp"dense_212/Tensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_298608

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
e
,__inference_dropout_180_layer_call_fn_301637

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_180_layer_call_and_return_conditional_losses_2992742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?0
"__inference__traced_restore_302442
file_prefix%
!assignvariableop_dense_207_kernel%
!assignvariableop_1_dense_207_bias4
0assignvariableop_2_batch_normalization_177_gamma3
/assignvariableop_3_batch_normalization_177_beta:
6assignvariableop_4_batch_normalization_177_moving_mean>
:assignvariableop_5_batch_normalization_177_moving_variance'
#assignvariableop_6_dense_208_kernel%
!assignvariableop_7_dense_208_bias4
0assignvariableop_8_batch_normalization_178_gamma3
/assignvariableop_9_batch_normalization_178_beta;
7assignvariableop_10_batch_normalization_178_moving_mean?
;assignvariableop_11_batch_normalization_178_moving_variance(
$assignvariableop_12_dense_209_kernel&
"assignvariableop_13_dense_209_bias5
1assignvariableop_14_batch_normalization_179_gamma4
0assignvariableop_15_batch_normalization_179_beta;
7assignvariableop_16_batch_normalization_179_moving_mean?
;assignvariableop_17_batch_normalization_179_moving_variance(
$assignvariableop_18_dense_210_kernel&
"assignvariableop_19_dense_210_bias5
1assignvariableop_20_batch_normalization_180_gamma4
0assignvariableop_21_batch_normalization_180_beta;
7assignvariableop_22_batch_normalization_180_moving_mean?
;assignvariableop_23_batch_normalization_180_moving_variance(
$assignvariableop_24_dense_211_kernel&
"assignvariableop_25_dense_211_bias5
1assignvariableop_26_batch_normalization_181_gamma4
0assignvariableop_27_batch_normalization_181_beta;
7assignvariableop_28_batch_normalization_181_moving_mean?
;assignvariableop_29_batch_normalization_181_moving_variance(
$assignvariableop_30_dense_212_kernel&
"assignvariableop_31_dense_212_bias!
assignvariableop_32_adam_iter#
assignvariableop_33_adam_beta_1#
assignvariableop_34_adam_beta_2"
assignvariableop_35_adam_decay*
&assignvariableop_36_adam_learning_rate
assignvariableop_37_total
assignvariableop_38_count/
+assignvariableop_39_adam_dense_207_kernel_m-
)assignvariableop_40_adam_dense_207_bias_m<
8assignvariableop_41_adam_batch_normalization_177_gamma_m;
7assignvariableop_42_adam_batch_normalization_177_beta_m/
+assignvariableop_43_adam_dense_208_kernel_m-
)assignvariableop_44_adam_dense_208_bias_m<
8assignvariableop_45_adam_batch_normalization_178_gamma_m;
7assignvariableop_46_adam_batch_normalization_178_beta_m/
+assignvariableop_47_adam_dense_209_kernel_m-
)assignvariableop_48_adam_dense_209_bias_m<
8assignvariableop_49_adam_batch_normalization_179_gamma_m;
7assignvariableop_50_adam_batch_normalization_179_beta_m/
+assignvariableop_51_adam_dense_210_kernel_m-
)assignvariableop_52_adam_dense_210_bias_m<
8assignvariableop_53_adam_batch_normalization_180_gamma_m;
7assignvariableop_54_adam_batch_normalization_180_beta_m/
+assignvariableop_55_adam_dense_211_kernel_m-
)assignvariableop_56_adam_dense_211_bias_m<
8assignvariableop_57_adam_batch_normalization_181_gamma_m;
7assignvariableop_58_adam_batch_normalization_181_beta_m/
+assignvariableop_59_adam_dense_212_kernel_m-
)assignvariableop_60_adam_dense_212_bias_m/
+assignvariableop_61_adam_dense_207_kernel_v-
)assignvariableop_62_adam_dense_207_bias_v<
8assignvariableop_63_adam_batch_normalization_177_gamma_v;
7assignvariableop_64_adam_batch_normalization_177_beta_v/
+assignvariableop_65_adam_dense_208_kernel_v-
)assignvariableop_66_adam_dense_208_bias_v<
8assignvariableop_67_adam_batch_normalization_178_gamma_v;
7assignvariableop_68_adam_batch_normalization_178_beta_v/
+assignvariableop_69_adam_dense_209_kernel_v-
)assignvariableop_70_adam_dense_209_bias_v<
8assignvariableop_71_adam_batch_normalization_179_gamma_v;
7assignvariableop_72_adam_batch_normalization_179_beta_v/
+assignvariableop_73_adam_dense_210_kernel_v-
)assignvariableop_74_adam_dense_210_bias_v<
8assignvariableop_75_adam_batch_normalization_180_gamma_v;
7assignvariableop_76_adam_batch_normalization_180_beta_v/
+assignvariableop_77_adam_dense_211_kernel_v-
)assignvariableop_78_adam_dense_211_bias_v<
8assignvariableop_79_adam_batch_normalization_181_gamma_v;
7assignvariableop_80_adam_batch_normalization_181_beta_v/
+assignvariableop_81_adam_dense_212_kernel_v-
)assignvariableop_82_adam_dense_212_bias_v
identity_84??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_9?.
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:T*
dtype0*?-
value?-B?-TB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:T*
dtype0*?
value?B?TB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*b
dtypesX
V2T	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_dense_207_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_207_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_177_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_177_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_177_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_177_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_208_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_208_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_178_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_178_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_178_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_178_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp$assignvariableop_12_dense_209_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp"assignvariableop_13_dense_209_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_179_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_179_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_179_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_179_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp$assignvariableop_18_dense_210_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp"assignvariableop_19_dense_210_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_180_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_180_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_180_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_180_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp$assignvariableop_24_dense_211_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp"assignvariableop_25_dense_211_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp1assignvariableop_26_batch_normalization_181_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp0assignvariableop_27_batch_normalization_181_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp7assignvariableop_28_batch_normalization_181_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp;assignvariableop_29_batch_normalization_181_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp$assignvariableop_30_dense_212_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp"assignvariableop_31_dense_212_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOpassignvariableop_32_adam_iterIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOpassignvariableop_33_adam_beta_1Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOpassignvariableop_34_adam_beta_2Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOpassignvariableop_35_adam_decayIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp&assignvariableop_36_adam_learning_rateIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOpassignvariableop_37_totalIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOpassignvariableop_38_countIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_dense_207_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_dense_207_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp8assignvariableop_41_adam_batch_normalization_177_gamma_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp7assignvariableop_42_adam_batch_normalization_177_beta_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_dense_208_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_dense_208_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp8assignvariableop_45_adam_batch_normalization_178_gamma_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp7assignvariableop_46_adam_batch_normalization_178_beta_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_dense_209_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_dense_209_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp8assignvariableop_49_adam_batch_normalization_179_gamma_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp7assignvariableop_50_adam_batch_normalization_179_beta_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp+assignvariableop_51_adam_dense_210_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_dense_210_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp8assignvariableop_53_adam_batch_normalization_180_gamma_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp7assignvariableop_54_adam_batch_normalization_180_beta_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp+assignvariableop_55_adam_dense_211_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp)assignvariableop_56_adam_dense_211_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp8assignvariableop_57_adam_batch_normalization_181_gamma_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp7assignvariableop_58_adam_batch_normalization_181_beta_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp+assignvariableop_59_adam_dense_212_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp)assignvariableop_60_adam_dense_212_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp+assignvariableop_61_adam_dense_207_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp)assignvariableop_62_adam_dense_207_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp8assignvariableop_63_adam_batch_normalization_177_gamma_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp7assignvariableop_64_adam_batch_normalization_177_beta_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp+assignvariableop_65_adam_dense_208_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp)assignvariableop_66_adam_dense_208_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp8assignvariableop_67_adam_batch_normalization_178_gamma_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp7assignvariableop_68_adam_batch_normalization_178_beta_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp+assignvariableop_69_adam_dense_209_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp)assignvariableop_70_adam_dense_209_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOp8assignvariableop_71_adam_batch_normalization_179_gamma_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOp7assignvariableop_72_adam_batch_normalization_179_beta_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOp+assignvariableop_73_adam_dense_210_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOp)assignvariableop_74_adam_dense_210_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75?
AssignVariableOp_75AssignVariableOp8assignvariableop_75_adam_batch_normalization_180_gamma_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76?
AssignVariableOp_76AssignVariableOp7assignvariableop_76_adam_batch_normalization_180_beta_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77?
AssignVariableOp_77AssignVariableOp+assignvariableop_77_adam_dense_211_kernel_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78?
AssignVariableOp_78AssignVariableOp)assignvariableop_78_adam_dense_211_bias_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79?
AssignVariableOp_79AssignVariableOp8assignvariableop_79_adam_batch_normalization_181_gamma_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80?
AssignVariableOp_80AssignVariableOp7assignvariableop_80_adam_batch_normalization_181_beta_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81?
AssignVariableOp_81AssignVariableOp+assignvariableop_81_adam_dense_212_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82?
AssignVariableOp_82AssignVariableOp)assignvariableop_82_adam_dense_212_bias_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_829
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_83Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_83?
Identity_84IdentityIdentity_83:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_84"#
identity_84Identity_84:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?^
?
I__inference_sequential_30_layer_call_and_return_conditional_losses_299677

inputs
dense_207_299596
dense_207_299598"
batch_normalization_177_299601"
batch_normalization_177_299603"
batch_normalization_177_299605"
batch_normalization_177_299607
dense_208_299611
dense_208_299613"
batch_normalization_178_299616"
batch_normalization_178_299618"
batch_normalization_178_299620"
batch_normalization_178_299622
dense_209_299626
dense_209_299628"
batch_normalization_179_299631"
batch_normalization_179_299633"
batch_normalization_179_299635"
batch_normalization_179_299637
dense_210_299641
dense_210_299643"
batch_normalization_180_299646"
batch_normalization_180_299648"
batch_normalization_180_299650"
batch_normalization_180_299652
dense_211_299656
dense_211_299658"
batch_normalization_181_299661"
batch_normalization_181_299663"
batch_normalization_181_299665"
batch_normalization_181_299667
dense_212_299671
dense_212_299673
identity??/batch_normalization_177/StatefulPartitionedCall?/batch_normalization_178/StatefulPartitionedCall?/batch_normalization_179/StatefulPartitionedCall?/batch_normalization_180/StatefulPartitionedCall?/batch_normalization_181/StatefulPartitionedCall?!dense_207/StatefulPartitionedCall?!dense_208/StatefulPartitionedCall?!dense_209/StatefulPartitionedCall?!dense_210/StatefulPartitionedCall?!dense_211/StatefulPartitionedCall?!dense_212/StatefulPartitionedCall?#dropout_177/StatefulPartitionedCall?#dropout_178/StatefulPartitionedCall?#dropout_179/StatefulPartitionedCall?#dropout_180/StatefulPartitionedCall?#dropout_181/StatefulPartitionedCall?
!dense_207/StatefulPartitionedCallStatefulPartitionedCallinputsdense_207_299596dense_207_299598*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_207_layer_call_and_return_conditional_losses_2986542#
!dense_207/StatefulPartitionedCall?
/batch_normalization_177/StatefulPartitionedCallStatefulPartitionedCall*dense_207/StatefulPartitionedCall:output:0batch_normalization_177_299601batch_normalization_177_299603batch_normalization_177_299605batch_normalization_177_299607*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_177_layer_call_and_return_conditional_losses_29870521
/batch_normalization_177/StatefulPartitionedCall?
#dropout_177/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_177/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_177_layer_call_and_return_conditional_losses_2987732%
#dropout_177/StatefulPartitionedCall?
!dense_208/StatefulPartitionedCallStatefulPartitionedCall,dropout_177/StatefulPartitionedCall:output:0dense_208_299611dense_208_299613*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_208_layer_call_and_return_conditional_losses_2988212#
!dense_208/StatefulPartitionedCall?
/batch_normalization_178/StatefulPartitionedCallStatefulPartitionedCall*dense_208/StatefulPartitionedCall:output:0batch_normalization_178_299616batch_normalization_178_299618batch_normalization_178_299620batch_normalization_178_299622*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_178_layer_call_and_return_conditional_losses_29887221
/batch_normalization_178/StatefulPartitionedCall?
#dropout_178/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_178/StatefulPartitionedCall:output:0$^dropout_177/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_178_layer_call_and_return_conditional_losses_2989402%
#dropout_178/StatefulPartitionedCall?
!dense_209/StatefulPartitionedCallStatefulPartitionedCall,dropout_178/StatefulPartitionedCall:output:0dense_209_299626dense_209_299628*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_209_layer_call_and_return_conditional_losses_2989882#
!dense_209/StatefulPartitionedCall?
/batch_normalization_179/StatefulPartitionedCallStatefulPartitionedCall*dense_209/StatefulPartitionedCall:output:0batch_normalization_179_299631batch_normalization_179_299633batch_normalization_179_299635batch_normalization_179_299637*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_179_layer_call_and_return_conditional_losses_29903921
/batch_normalization_179/StatefulPartitionedCall?
#dropout_179/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_179/StatefulPartitionedCall:output:0$^dropout_178/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_179_layer_call_and_return_conditional_losses_2991072%
#dropout_179/StatefulPartitionedCall?
!dense_210/StatefulPartitionedCallStatefulPartitionedCall,dropout_179/StatefulPartitionedCall:output:0dense_210_299641dense_210_299643*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_210_layer_call_and_return_conditional_losses_2991552#
!dense_210/StatefulPartitionedCall?
/batch_normalization_180/StatefulPartitionedCallStatefulPartitionedCall*dense_210/StatefulPartitionedCall:output:0batch_normalization_180_299646batch_normalization_180_299648batch_normalization_180_299650batch_normalization_180_299652*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_29920621
/batch_normalization_180/StatefulPartitionedCall?
#dropout_180/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_180/StatefulPartitionedCall:output:0$^dropout_179/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_180_layer_call_and_return_conditional_losses_2992742%
#dropout_180/StatefulPartitionedCall?
!dense_211/StatefulPartitionedCallStatefulPartitionedCall,dropout_180/StatefulPartitionedCall:output:0dense_211_299656dense_211_299658*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_211_layer_call_and_return_conditional_losses_2993222#
!dense_211/StatefulPartitionedCall?
/batch_normalization_181/StatefulPartitionedCallStatefulPartitionedCall*dense_211/StatefulPartitionedCall:output:0batch_normalization_181_299661batch_normalization_181_299663batch_normalization_181_299665batch_normalization_181_299667*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_29937321
/batch_normalization_181/StatefulPartitionedCall?
#dropout_181/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_181/StatefulPartitionedCall:output:0$^dropout_180/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_181_layer_call_and_return_conditional_losses_2994412%
#dropout_181/StatefulPartitionedCall?
!dense_212/StatefulPartitionedCallStatefulPartitionedCall,dropout_181/StatefulPartitionedCall:output:0dense_212_299671dense_212_299673*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_212_layer_call_and_return_conditional_losses_2994892#
!dense_212/StatefulPartitionedCall?
IdentityIdentity*dense_212/StatefulPartitionedCall:output:00^batch_normalization_177/StatefulPartitionedCall0^batch_normalization_178/StatefulPartitionedCall0^batch_normalization_179/StatefulPartitionedCall0^batch_normalization_180/StatefulPartitionedCall0^batch_normalization_181/StatefulPartitionedCall"^dense_207/StatefulPartitionedCall"^dense_208/StatefulPartitionedCall"^dense_209/StatefulPartitionedCall"^dense_210/StatefulPartitionedCall"^dense_211/StatefulPartitionedCall"^dense_212/StatefulPartitionedCall$^dropout_177/StatefulPartitionedCall$^dropout_178/StatefulPartitionedCall$^dropout_179/StatefulPartitionedCall$^dropout_180/StatefulPartitionedCall$^dropout_181/StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::2b
/batch_normalization_177/StatefulPartitionedCall/batch_normalization_177/StatefulPartitionedCall2b
/batch_normalization_178/StatefulPartitionedCall/batch_normalization_178/StatefulPartitionedCall2b
/batch_normalization_179/StatefulPartitionedCall/batch_normalization_179/StatefulPartitionedCall2b
/batch_normalization_180/StatefulPartitionedCall/batch_normalization_180/StatefulPartitionedCall2b
/batch_normalization_181/StatefulPartitionedCall/batch_normalization_181/StatefulPartitionedCall2F
!dense_207/StatefulPartitionedCall!dense_207/StatefulPartitionedCall2F
!dense_208/StatefulPartitionedCall!dense_208/StatefulPartitionedCall2F
!dense_209/StatefulPartitionedCall!dense_209/StatefulPartitionedCall2F
!dense_210/StatefulPartitionedCall!dense_210/StatefulPartitionedCall2F
!dense_211/StatefulPartitionedCall!dense_211/StatefulPartitionedCall2F
!dense_212/StatefulPartitionedCall!dense_212/StatefulPartitionedCall2J
#dropout_177/StatefulPartitionedCall#dropout_177/StatefulPartitionedCall2J
#dropout_178/StatefulPartitionedCall#dropout_178/StatefulPartitionedCall2J
#dropout_179/StatefulPartitionedCall#dropout_179/StatefulPartitionedCall2J
#dropout_180/StatefulPartitionedCall#dropout_180/StatefulPartitionedCall2J
#dropout_181/StatefulPartitionedCall#dropout_181/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_178_layer_call_and_return_conditional_losses_301172

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????d2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????d2

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
:?????????d:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_299226

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:?????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
f
G__inference_dropout_180_layer_call_and_return_conditional_losses_299274

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?^
?
I__inference_sequential_30_layer_call_and_return_conditional_losses_299506
dense_207_input
dense_207_298665
dense_207_298667"
batch_normalization_177_298752"
batch_normalization_177_298754"
batch_normalization_177_298756"
batch_normalization_177_298758
dense_208_298832
dense_208_298834"
batch_normalization_178_298919"
batch_normalization_178_298921"
batch_normalization_178_298923"
batch_normalization_178_298925
dense_209_298999
dense_209_299001"
batch_normalization_179_299086"
batch_normalization_179_299088"
batch_normalization_179_299090"
batch_normalization_179_299092
dense_210_299166
dense_210_299168"
batch_normalization_180_299253"
batch_normalization_180_299255"
batch_normalization_180_299257"
batch_normalization_180_299259
dense_211_299333
dense_211_299335"
batch_normalization_181_299420"
batch_normalization_181_299422"
batch_normalization_181_299424"
batch_normalization_181_299426
dense_212_299500
dense_212_299502
identity??/batch_normalization_177/StatefulPartitionedCall?/batch_normalization_178/StatefulPartitionedCall?/batch_normalization_179/StatefulPartitionedCall?/batch_normalization_180/StatefulPartitionedCall?/batch_normalization_181/StatefulPartitionedCall?!dense_207/StatefulPartitionedCall?!dense_208/StatefulPartitionedCall?!dense_209/StatefulPartitionedCall?!dense_210/StatefulPartitionedCall?!dense_211/StatefulPartitionedCall?!dense_212/StatefulPartitionedCall?#dropout_177/StatefulPartitionedCall?#dropout_178/StatefulPartitionedCall?#dropout_179/StatefulPartitionedCall?#dropout_180/StatefulPartitionedCall?#dropout_181/StatefulPartitionedCall?
!dense_207/StatefulPartitionedCallStatefulPartitionedCalldense_207_inputdense_207_298665dense_207_298667*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_207_layer_call_and_return_conditional_losses_2986542#
!dense_207/StatefulPartitionedCall?
/batch_normalization_177/StatefulPartitionedCallStatefulPartitionedCall*dense_207/StatefulPartitionedCall:output:0batch_normalization_177_298752batch_normalization_177_298754batch_normalization_177_298756batch_normalization_177_298758*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_177_layer_call_and_return_conditional_losses_29870521
/batch_normalization_177/StatefulPartitionedCall?
#dropout_177/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_177/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_177_layer_call_and_return_conditional_losses_2987732%
#dropout_177/StatefulPartitionedCall?
!dense_208/StatefulPartitionedCallStatefulPartitionedCall,dropout_177/StatefulPartitionedCall:output:0dense_208_298832dense_208_298834*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_208_layer_call_and_return_conditional_losses_2988212#
!dense_208/StatefulPartitionedCall?
/batch_normalization_178/StatefulPartitionedCallStatefulPartitionedCall*dense_208/StatefulPartitionedCall:output:0batch_normalization_178_298919batch_normalization_178_298921batch_normalization_178_298923batch_normalization_178_298925*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_178_layer_call_and_return_conditional_losses_29887221
/batch_normalization_178/StatefulPartitionedCall?
#dropout_178/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_178/StatefulPartitionedCall:output:0$^dropout_177/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_178_layer_call_and_return_conditional_losses_2989402%
#dropout_178/StatefulPartitionedCall?
!dense_209/StatefulPartitionedCallStatefulPartitionedCall,dropout_178/StatefulPartitionedCall:output:0dense_209_298999dense_209_299001*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_209_layer_call_and_return_conditional_losses_2989882#
!dense_209/StatefulPartitionedCall?
/batch_normalization_179/StatefulPartitionedCallStatefulPartitionedCall*dense_209/StatefulPartitionedCall:output:0batch_normalization_179_299086batch_normalization_179_299088batch_normalization_179_299090batch_normalization_179_299092*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_179_layer_call_and_return_conditional_losses_29903921
/batch_normalization_179/StatefulPartitionedCall?
#dropout_179/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_179/StatefulPartitionedCall:output:0$^dropout_178/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_179_layer_call_and_return_conditional_losses_2991072%
#dropout_179/StatefulPartitionedCall?
!dense_210/StatefulPartitionedCallStatefulPartitionedCall,dropout_179/StatefulPartitionedCall:output:0dense_210_299166dense_210_299168*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_210_layer_call_and_return_conditional_losses_2991552#
!dense_210/StatefulPartitionedCall?
/batch_normalization_180/StatefulPartitionedCallStatefulPartitionedCall*dense_210/StatefulPartitionedCall:output:0batch_normalization_180_299253batch_normalization_180_299255batch_normalization_180_299257batch_normalization_180_299259*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_29920621
/batch_normalization_180/StatefulPartitionedCall?
#dropout_180/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_180/StatefulPartitionedCall:output:0$^dropout_179/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_180_layer_call_and_return_conditional_losses_2992742%
#dropout_180/StatefulPartitionedCall?
!dense_211/StatefulPartitionedCallStatefulPartitionedCall,dropout_180/StatefulPartitionedCall:output:0dense_211_299333dense_211_299335*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_211_layer_call_and_return_conditional_losses_2993222#
!dense_211/StatefulPartitionedCall?
/batch_normalization_181/StatefulPartitionedCallStatefulPartitionedCall*dense_211/StatefulPartitionedCall:output:0batch_normalization_181_299420batch_normalization_181_299422batch_normalization_181_299424batch_normalization_181_299426*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_29937321
/batch_normalization_181/StatefulPartitionedCall?
#dropout_181/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_181/StatefulPartitionedCall:output:0$^dropout_180/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_181_layer_call_and_return_conditional_losses_2994412%
#dropout_181/StatefulPartitionedCall?
!dense_212/StatefulPartitionedCallStatefulPartitionedCall,dropout_181/StatefulPartitionedCall:output:0dense_212_299500dense_212_299502*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_212_layer_call_and_return_conditional_losses_2994892#
!dense_212/StatefulPartitionedCall?
IdentityIdentity*dense_212/StatefulPartitionedCall:output:00^batch_normalization_177/StatefulPartitionedCall0^batch_normalization_178/StatefulPartitionedCall0^batch_normalization_179/StatefulPartitionedCall0^batch_normalization_180/StatefulPartitionedCall0^batch_normalization_181/StatefulPartitionedCall"^dense_207/StatefulPartitionedCall"^dense_208/StatefulPartitionedCall"^dense_209/StatefulPartitionedCall"^dense_210/StatefulPartitionedCall"^dense_211/StatefulPartitionedCall"^dense_212/StatefulPartitionedCall$^dropout_177/StatefulPartitionedCall$^dropout_178/StatefulPartitionedCall$^dropout_179/StatefulPartitionedCall$^dropout_180/StatefulPartitionedCall$^dropout_181/StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::2b
/batch_normalization_177/StatefulPartitionedCall/batch_normalization_177/StatefulPartitionedCall2b
/batch_normalization_178/StatefulPartitionedCall/batch_normalization_178/StatefulPartitionedCall2b
/batch_normalization_179/StatefulPartitionedCall/batch_normalization_179/StatefulPartitionedCall2b
/batch_normalization_180/StatefulPartitionedCall/batch_normalization_180/StatefulPartitionedCall2b
/batch_normalization_181/StatefulPartitionedCall/batch_normalization_181/StatefulPartitionedCall2F
!dense_207/StatefulPartitionedCall!dense_207/StatefulPartitionedCall2F
!dense_208/StatefulPartitionedCall!dense_208/StatefulPartitionedCall2F
!dense_209/StatefulPartitionedCall!dense_209/StatefulPartitionedCall2F
!dense_210/StatefulPartitionedCall!dense_210/StatefulPartitionedCall2F
!dense_211/StatefulPartitionedCall!dense_211/StatefulPartitionedCall2F
!dense_212/StatefulPartitionedCall!dense_212/StatefulPartitionedCall2J
#dropout_177/StatefulPartitionedCall#dropout_177/StatefulPartitionedCall2J
#dropout_178/StatefulPartitionedCall#dropout_178/StatefulPartitionedCall2J
#dropout_179/StatefulPartitionedCall#dropout_179/StatefulPartitionedCall2J
#dropout_180/StatefulPartitionedCall#dropout_180/StatefulPartitionedCall2J
#dropout_181/StatefulPartitionedCall#dropout_181/StatefulPartitionedCall:\ X
+
_output_shapes
:?????????
)
_user_specified_namedense_207_input
?

*__inference_dense_211_layer_call_fn_301681

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_211_layer_call_and_return_conditional_losses_2993222
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

*__inference_dense_208_layer_call_fn_300991

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_208_layer_call_and_return_conditional_losses_2988212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
G__inference_dropout_178_layer_call_and_return_conditional_losses_301167

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????d2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????d*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????d2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????d2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????d2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????d:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
H
,__inference_dropout_180_layer_call_fn_301642

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_180_layer_call_and_return_conditional_losses_2992792
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_dense_210_layer_call_and_return_conditional_losses_301442

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:2*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:?????????22
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?0
?
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_299206

inputs
assignmovingavg_299181
assignmovingavg_1_299187)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:?????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/299181*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_299181*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/299181*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/299181*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_299181AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/299181*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/299187*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_299187*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/299187*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/299187*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_299187AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/299187*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:?????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_dense_209_layer_call_and_return_conditional_losses_298988

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:d2*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:?????????d2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:22
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????22
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????22	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????d::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
I__inference_sequential_30_layer_call_and_return_conditional_losses_300337

inputs/
+dense_207_tensordot_readvariableop_resource-
)dense_207_biasadd_readvariableop_resource2
.batch_normalization_177_assignmovingavg_3000144
0batch_normalization_177_assignmovingavg_1_300020A
=batch_normalization_177_batchnorm_mul_readvariableop_resource=
9batch_normalization_177_batchnorm_readvariableop_resource/
+dense_208_tensordot_readvariableop_resource-
)dense_208_biasadd_readvariableop_resource2
.batch_normalization_178_assignmovingavg_3000804
0batch_normalization_178_assignmovingavg_1_300086A
=batch_normalization_178_batchnorm_mul_readvariableop_resource=
9batch_normalization_178_batchnorm_readvariableop_resource/
+dense_209_tensordot_readvariableop_resource-
)dense_209_biasadd_readvariableop_resource2
.batch_normalization_179_assignmovingavg_3001464
0batch_normalization_179_assignmovingavg_1_300152A
=batch_normalization_179_batchnorm_mul_readvariableop_resource=
9batch_normalization_179_batchnorm_readvariableop_resource/
+dense_210_tensordot_readvariableop_resource-
)dense_210_biasadd_readvariableop_resource2
.batch_normalization_180_assignmovingavg_3002124
0batch_normalization_180_assignmovingavg_1_300218A
=batch_normalization_180_batchnorm_mul_readvariableop_resource=
9batch_normalization_180_batchnorm_readvariableop_resource/
+dense_211_tensordot_readvariableop_resource-
)dense_211_biasadd_readvariableop_resource2
.batch_normalization_181_assignmovingavg_3002784
0batch_normalization_181_assignmovingavg_1_300284A
=batch_normalization_181_batchnorm_mul_readvariableop_resource=
9batch_normalization_181_batchnorm_readvariableop_resource/
+dense_212_tensordot_readvariableop_resource-
)dense_212_biasadd_readvariableop_resource
identity??;batch_normalization_177/AssignMovingAvg/AssignSubVariableOp?6batch_normalization_177/AssignMovingAvg/ReadVariableOp?=batch_normalization_177/AssignMovingAvg_1/AssignSubVariableOp?8batch_normalization_177/AssignMovingAvg_1/ReadVariableOp?0batch_normalization_177/batchnorm/ReadVariableOp?4batch_normalization_177/batchnorm/mul/ReadVariableOp?;batch_normalization_178/AssignMovingAvg/AssignSubVariableOp?6batch_normalization_178/AssignMovingAvg/ReadVariableOp?=batch_normalization_178/AssignMovingAvg_1/AssignSubVariableOp?8batch_normalization_178/AssignMovingAvg_1/ReadVariableOp?0batch_normalization_178/batchnorm/ReadVariableOp?4batch_normalization_178/batchnorm/mul/ReadVariableOp?;batch_normalization_179/AssignMovingAvg/AssignSubVariableOp?6batch_normalization_179/AssignMovingAvg/ReadVariableOp?=batch_normalization_179/AssignMovingAvg_1/AssignSubVariableOp?8batch_normalization_179/AssignMovingAvg_1/ReadVariableOp?0batch_normalization_179/batchnorm/ReadVariableOp?4batch_normalization_179/batchnorm/mul/ReadVariableOp?;batch_normalization_180/AssignMovingAvg/AssignSubVariableOp?6batch_normalization_180/AssignMovingAvg/ReadVariableOp?=batch_normalization_180/AssignMovingAvg_1/AssignSubVariableOp?8batch_normalization_180/AssignMovingAvg_1/ReadVariableOp?0batch_normalization_180/batchnorm/ReadVariableOp?4batch_normalization_180/batchnorm/mul/ReadVariableOp?;batch_normalization_181/AssignMovingAvg/AssignSubVariableOp?6batch_normalization_181/AssignMovingAvg/ReadVariableOp?=batch_normalization_181/AssignMovingAvg_1/AssignSubVariableOp?8batch_normalization_181/AssignMovingAvg_1/ReadVariableOp?0batch_normalization_181/batchnorm/ReadVariableOp?4batch_normalization_181/batchnorm/mul/ReadVariableOp? dense_207/BiasAdd/ReadVariableOp?"dense_207/Tensordot/ReadVariableOp? dense_208/BiasAdd/ReadVariableOp?"dense_208/Tensordot/ReadVariableOp? dense_209/BiasAdd/ReadVariableOp?"dense_209/Tensordot/ReadVariableOp? dense_210/BiasAdd/ReadVariableOp?"dense_210/Tensordot/ReadVariableOp? dense_211/BiasAdd/ReadVariableOp?"dense_211/Tensordot/ReadVariableOp? dense_212/BiasAdd/ReadVariableOp?"dense_212/Tensordot/ReadVariableOp?
"dense_207/Tensordot/ReadVariableOpReadVariableOp+dense_207_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"dense_207/Tensordot/ReadVariableOp~
dense_207/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_207/Tensordot/axes?
dense_207/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_207/Tensordot/freel
dense_207/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense_207/Tensordot/Shape?
!dense_207/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_207/Tensordot/GatherV2/axis?
dense_207/Tensordot/GatherV2GatherV2"dense_207/Tensordot/Shape:output:0!dense_207/Tensordot/free:output:0*dense_207/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_207/Tensordot/GatherV2?
#dense_207/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_207/Tensordot/GatherV2_1/axis?
dense_207/Tensordot/GatherV2_1GatherV2"dense_207/Tensordot/Shape:output:0!dense_207/Tensordot/axes:output:0,dense_207/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_207/Tensordot/GatherV2_1?
dense_207/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_207/Tensordot/Const?
dense_207/Tensordot/ProdProd%dense_207/Tensordot/GatherV2:output:0"dense_207/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_207/Tensordot/Prod?
dense_207/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_207/Tensordot/Const_1?
dense_207/Tensordot/Prod_1Prod'dense_207/Tensordot/GatherV2_1:output:0$dense_207/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_207/Tensordot/Prod_1?
dense_207/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_207/Tensordot/concat/axis?
dense_207/Tensordot/concatConcatV2!dense_207/Tensordot/free:output:0!dense_207/Tensordot/axes:output:0(dense_207/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_207/Tensordot/concat?
dense_207/Tensordot/stackPack!dense_207/Tensordot/Prod:output:0#dense_207/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_207/Tensordot/stack?
dense_207/Tensordot/transpose	Transposeinputs#dense_207/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????2
dense_207/Tensordot/transpose?
dense_207/Tensordot/ReshapeReshape!dense_207/Tensordot/transpose:y:0"dense_207/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_207/Tensordot/Reshape?
dense_207/Tensordot/MatMulMatMul$dense_207/Tensordot/Reshape:output:0*dense_207/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_207/Tensordot/MatMul?
dense_207/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
dense_207/Tensordot/Const_2?
!dense_207/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_207/Tensordot/concat_1/axis?
dense_207/Tensordot/concat_1ConcatV2%dense_207/Tensordot/GatherV2:output:0$dense_207/Tensordot/Const_2:output:0*dense_207/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_207/Tensordot/concat_1?
dense_207/TensordotReshape$dense_207/Tensordot/MatMul:product:0%dense_207/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
dense_207/Tensordot?
 dense_207/BiasAdd/ReadVariableOpReadVariableOp)dense_207_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_207/BiasAdd/ReadVariableOp?
dense_207/BiasAddBiasAdddense_207/Tensordot:output:0(dense_207/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
dense_207/BiasAdd{
dense_207/ReluReludense_207/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
dense_207/Relu?
6batch_normalization_177/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       28
6batch_normalization_177/moments/mean/reduction_indices?
$batch_normalization_177/moments/meanMeandense_207/Relu:activations:0?batch_normalization_177/moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:?*
	keep_dims(2&
$batch_normalization_177/moments/mean?
,batch_normalization_177/moments/StopGradientStopGradient-batch_normalization_177/moments/mean:output:0*
T0*#
_output_shapes
:?2.
,batch_normalization_177/moments/StopGradient?
1batch_normalization_177/moments/SquaredDifferenceSquaredDifferencedense_207/Relu:activations:05batch_normalization_177/moments/StopGradient:output:0*
T0*,
_output_shapes
:??????????23
1batch_normalization_177/moments/SquaredDifference?
:batch_normalization_177/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2<
:batch_normalization_177/moments/variance/reduction_indices?
(batch_normalization_177/moments/varianceMean5batch_normalization_177/moments/SquaredDifference:z:0Cbatch_normalization_177/moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:?*
	keep_dims(2*
(batch_normalization_177/moments/variance?
'batch_normalization_177/moments/SqueezeSqueeze-batch_normalization_177/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2)
'batch_normalization_177/moments/Squeeze?
)batch_normalization_177/moments/Squeeze_1Squeeze1batch_normalization_177/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2+
)batch_normalization_177/moments/Squeeze_1?
-batch_normalization_177/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@batch_normalization_177/AssignMovingAvg/300014*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_177/AssignMovingAvg/decay?
6batch_normalization_177/AssignMovingAvg/ReadVariableOpReadVariableOp.batch_normalization_177_assignmovingavg_300014*
_output_shapes	
:?*
dtype028
6batch_normalization_177/AssignMovingAvg/ReadVariableOp?
+batch_normalization_177/AssignMovingAvg/subSub>batch_normalization_177/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_177/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*A
_class7
53loc:@batch_normalization_177/AssignMovingAvg/300014*
_output_shapes	
:?2-
+batch_normalization_177/AssignMovingAvg/sub?
+batch_normalization_177/AssignMovingAvg/mulMul/batch_normalization_177/AssignMovingAvg/sub:z:06batch_normalization_177/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*A
_class7
53loc:@batch_normalization_177/AssignMovingAvg/300014*
_output_shapes	
:?2-
+batch_normalization_177/AssignMovingAvg/mul?
;batch_normalization_177/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp.batch_normalization_177_assignmovingavg_300014/batch_normalization_177/AssignMovingAvg/mul:z:07^batch_normalization_177/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@batch_normalization_177/AssignMovingAvg/300014*
_output_shapes
 *
dtype02=
;batch_normalization_177/AssignMovingAvg/AssignSubVariableOp?
/batch_normalization_177/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*C
_class9
75loc:@batch_normalization_177/AssignMovingAvg_1/300020*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/batch_normalization_177/AssignMovingAvg_1/decay?
8batch_normalization_177/AssignMovingAvg_1/ReadVariableOpReadVariableOp0batch_normalization_177_assignmovingavg_1_300020*
_output_shapes	
:?*
dtype02:
8batch_normalization_177/AssignMovingAvg_1/ReadVariableOp?
-batch_normalization_177/AssignMovingAvg_1/subSub@batch_normalization_177/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_177/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@batch_normalization_177/AssignMovingAvg_1/300020*
_output_shapes	
:?2/
-batch_normalization_177/AssignMovingAvg_1/sub?
-batch_normalization_177/AssignMovingAvg_1/mulMul1batch_normalization_177/AssignMovingAvg_1/sub:z:08batch_normalization_177/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@batch_normalization_177/AssignMovingAvg_1/300020*
_output_shapes	
:?2/
-batch_normalization_177/AssignMovingAvg_1/mul?
=batch_normalization_177/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp0batch_normalization_177_assignmovingavg_1_3000201batch_normalization_177/AssignMovingAvg_1/mul:z:09^batch_normalization_177/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*C
_class9
75loc:@batch_normalization_177/AssignMovingAvg_1/300020*
_output_shapes
 *
dtype02?
=batch_normalization_177/AssignMovingAvg_1/AssignSubVariableOp?
'batch_normalization_177/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2)
'batch_normalization_177/batchnorm/add/y?
%batch_normalization_177/batchnorm/addAddV22batch_normalization_177/moments/Squeeze_1:output:00batch_normalization_177/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2'
%batch_normalization_177/batchnorm/add?
'batch_normalization_177/batchnorm/RsqrtRsqrt)batch_normalization_177/batchnorm/add:z:0*
T0*
_output_shapes	
:?2)
'batch_normalization_177/batchnorm/Rsqrt?
4batch_normalization_177/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_177_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype026
4batch_normalization_177/batchnorm/mul/ReadVariableOp?
%batch_normalization_177/batchnorm/mulMul+batch_normalization_177/batchnorm/Rsqrt:y:0<batch_normalization_177/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2'
%batch_normalization_177/batchnorm/mul?
'batch_normalization_177/batchnorm/mul_1Muldense_207/Relu:activations:0)batch_normalization_177/batchnorm/mul:z:0*
T0*,
_output_shapes
:??????????2)
'batch_normalization_177/batchnorm/mul_1?
'batch_normalization_177/batchnorm/mul_2Mul0batch_normalization_177/moments/Squeeze:output:0)batch_normalization_177/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2)
'batch_normalization_177/batchnorm/mul_2?
0batch_normalization_177/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_177_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_177/batchnorm/ReadVariableOp?
%batch_normalization_177/batchnorm/subSub8batch_normalization_177/batchnorm/ReadVariableOp:value:0+batch_normalization_177/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_177/batchnorm/sub?
'batch_normalization_177/batchnorm/add_1AddV2+batch_normalization_177/batchnorm/mul_1:z:0)batch_normalization_177/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????2)
'batch_normalization_177/batchnorm/add_1{
dropout_177/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_177/dropout/Const?
dropout_177/dropout/MulMul+batch_normalization_177/batchnorm/add_1:z:0"dropout_177/dropout/Const:output:0*
T0*,
_output_shapes
:??????????2
dropout_177/dropout/Mul?
dropout_177/dropout/ShapeShape+batch_normalization_177/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_177/dropout/Shape?
0dropout_177/dropout/random_uniform/RandomUniformRandomUniform"dropout_177/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0*

seed*22
0dropout_177/dropout/random_uniform/RandomUniform?
"dropout_177/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2$
"dropout_177/dropout/GreaterEqual/y?
 dropout_177/dropout/GreaterEqualGreaterEqual9dropout_177/dropout/random_uniform/RandomUniform:output:0+dropout_177/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????2"
 dropout_177/dropout/GreaterEqual?
dropout_177/dropout/CastCast$dropout_177/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
dropout_177/dropout/Cast?
dropout_177/dropout/Mul_1Muldropout_177/dropout/Mul:z:0dropout_177/dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
dropout_177/dropout/Mul_1?
"dense_208/Tensordot/ReadVariableOpReadVariableOp+dense_208_tensordot_readvariableop_resource*
_output_shapes
:	?d*
dtype02$
"dense_208/Tensordot/ReadVariableOp~
dense_208/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_208/Tensordot/axes?
dense_208/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_208/Tensordot/free?
dense_208/Tensordot/ShapeShapedropout_177/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
dense_208/Tensordot/Shape?
!dense_208/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_208/Tensordot/GatherV2/axis?
dense_208/Tensordot/GatherV2GatherV2"dense_208/Tensordot/Shape:output:0!dense_208/Tensordot/free:output:0*dense_208/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_208/Tensordot/GatherV2?
#dense_208/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_208/Tensordot/GatherV2_1/axis?
dense_208/Tensordot/GatherV2_1GatherV2"dense_208/Tensordot/Shape:output:0!dense_208/Tensordot/axes:output:0,dense_208/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_208/Tensordot/GatherV2_1?
dense_208/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_208/Tensordot/Const?
dense_208/Tensordot/ProdProd%dense_208/Tensordot/GatherV2:output:0"dense_208/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_208/Tensordot/Prod?
dense_208/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_208/Tensordot/Const_1?
dense_208/Tensordot/Prod_1Prod'dense_208/Tensordot/GatherV2_1:output:0$dense_208/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_208/Tensordot/Prod_1?
dense_208/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_208/Tensordot/concat/axis?
dense_208/Tensordot/concatConcatV2!dense_208/Tensordot/free:output:0!dense_208/Tensordot/axes:output:0(dense_208/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_208/Tensordot/concat?
dense_208/Tensordot/stackPack!dense_208/Tensordot/Prod:output:0#dense_208/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_208/Tensordot/stack?
dense_208/Tensordot/transpose	Transposedropout_177/dropout/Mul_1:z:0#dense_208/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
dense_208/Tensordot/transpose?
dense_208/Tensordot/ReshapeReshape!dense_208/Tensordot/transpose:y:0"dense_208/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_208/Tensordot/Reshape?
dense_208/Tensordot/MatMulMatMul$dense_208/Tensordot/Reshape:output:0*dense_208/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_208/Tensordot/MatMul?
dense_208/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
dense_208/Tensordot/Const_2?
!dense_208/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_208/Tensordot/concat_1/axis?
dense_208/Tensordot/concat_1ConcatV2%dense_208/Tensordot/GatherV2:output:0$dense_208/Tensordot/Const_2:output:0*dense_208/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_208/Tensordot/concat_1?
dense_208/TensordotReshape$dense_208/Tensordot/MatMul:product:0%dense_208/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????d2
dense_208/Tensordot?
 dense_208/BiasAdd/ReadVariableOpReadVariableOp)dense_208_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_208/BiasAdd/ReadVariableOp?
dense_208/BiasAddBiasAdddense_208/Tensordot:output:0(dense_208/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d2
dense_208/BiasAdd?
6batch_normalization_178/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       28
6batch_normalization_178/moments/mean/reduction_indices?
$batch_normalization_178/moments/meanMeandense_208/BiasAdd:output:0?batch_normalization_178/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:d*
	keep_dims(2&
$batch_normalization_178/moments/mean?
,batch_normalization_178/moments/StopGradientStopGradient-batch_normalization_178/moments/mean:output:0*
T0*"
_output_shapes
:d2.
,batch_normalization_178/moments/StopGradient?
1batch_normalization_178/moments/SquaredDifferenceSquaredDifferencedense_208/BiasAdd:output:05batch_normalization_178/moments/StopGradient:output:0*
T0*+
_output_shapes
:?????????d23
1batch_normalization_178/moments/SquaredDifference?
:batch_normalization_178/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2<
:batch_normalization_178/moments/variance/reduction_indices?
(batch_normalization_178/moments/varianceMean5batch_normalization_178/moments/SquaredDifference:z:0Cbatch_normalization_178/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:d*
	keep_dims(2*
(batch_normalization_178/moments/variance?
'batch_normalization_178/moments/SqueezeSqueeze-batch_normalization_178/moments/mean:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 2)
'batch_normalization_178/moments/Squeeze?
)batch_normalization_178/moments/Squeeze_1Squeeze1batch_normalization_178/moments/variance:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 2+
)batch_normalization_178/moments/Squeeze_1?
-batch_normalization_178/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@batch_normalization_178/AssignMovingAvg/300080*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_178/AssignMovingAvg/decay?
6batch_normalization_178/AssignMovingAvg/ReadVariableOpReadVariableOp.batch_normalization_178_assignmovingavg_300080*
_output_shapes
:d*
dtype028
6batch_normalization_178/AssignMovingAvg/ReadVariableOp?
+batch_normalization_178/AssignMovingAvg/subSub>batch_normalization_178/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_178/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*A
_class7
53loc:@batch_normalization_178/AssignMovingAvg/300080*
_output_shapes
:d2-
+batch_normalization_178/AssignMovingAvg/sub?
+batch_normalization_178/AssignMovingAvg/mulMul/batch_normalization_178/AssignMovingAvg/sub:z:06batch_normalization_178/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*A
_class7
53loc:@batch_normalization_178/AssignMovingAvg/300080*
_output_shapes
:d2-
+batch_normalization_178/AssignMovingAvg/mul?
;batch_normalization_178/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp.batch_normalization_178_assignmovingavg_300080/batch_normalization_178/AssignMovingAvg/mul:z:07^batch_normalization_178/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@batch_normalization_178/AssignMovingAvg/300080*
_output_shapes
 *
dtype02=
;batch_normalization_178/AssignMovingAvg/AssignSubVariableOp?
/batch_normalization_178/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*C
_class9
75loc:@batch_normalization_178/AssignMovingAvg_1/300086*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/batch_normalization_178/AssignMovingAvg_1/decay?
8batch_normalization_178/AssignMovingAvg_1/ReadVariableOpReadVariableOp0batch_normalization_178_assignmovingavg_1_300086*
_output_shapes
:d*
dtype02:
8batch_normalization_178/AssignMovingAvg_1/ReadVariableOp?
-batch_normalization_178/AssignMovingAvg_1/subSub@batch_normalization_178/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_178/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@batch_normalization_178/AssignMovingAvg_1/300086*
_output_shapes
:d2/
-batch_normalization_178/AssignMovingAvg_1/sub?
-batch_normalization_178/AssignMovingAvg_1/mulMul1batch_normalization_178/AssignMovingAvg_1/sub:z:08batch_normalization_178/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@batch_normalization_178/AssignMovingAvg_1/300086*
_output_shapes
:d2/
-batch_normalization_178/AssignMovingAvg_1/mul?
=batch_normalization_178/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp0batch_normalization_178_assignmovingavg_1_3000861batch_normalization_178/AssignMovingAvg_1/mul:z:09^batch_normalization_178/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*C
_class9
75loc:@batch_normalization_178/AssignMovingAvg_1/300086*
_output_shapes
 *
dtype02?
=batch_normalization_178/AssignMovingAvg_1/AssignSubVariableOp?
'batch_normalization_178/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2)
'batch_normalization_178/batchnorm/add/y?
%batch_normalization_178/batchnorm/addAddV22batch_normalization_178/moments/Squeeze_1:output:00batch_normalization_178/batchnorm/add/y:output:0*
T0*
_output_shapes
:d2'
%batch_normalization_178/batchnorm/add?
'batch_normalization_178/batchnorm/RsqrtRsqrt)batch_normalization_178/batchnorm/add:z:0*
T0*
_output_shapes
:d2)
'batch_normalization_178/batchnorm/Rsqrt?
4batch_normalization_178/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_178_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype026
4batch_normalization_178/batchnorm/mul/ReadVariableOp?
%batch_normalization_178/batchnorm/mulMul+batch_normalization_178/batchnorm/Rsqrt:y:0<batch_normalization_178/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:d2'
%batch_normalization_178/batchnorm/mul?
'batch_normalization_178/batchnorm/mul_1Muldense_208/BiasAdd:output:0)batch_normalization_178/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????d2)
'batch_normalization_178/batchnorm/mul_1?
'batch_normalization_178/batchnorm/mul_2Mul0batch_normalization_178/moments/Squeeze:output:0)batch_normalization_178/batchnorm/mul:z:0*
T0*
_output_shapes
:d2)
'batch_normalization_178/batchnorm/mul_2?
0batch_normalization_178/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_178_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype022
0batch_normalization_178/batchnorm/ReadVariableOp?
%batch_normalization_178/batchnorm/subSub8batch_normalization_178/batchnorm/ReadVariableOp:value:0+batch_normalization_178/batchnorm/mul_2:z:0*
T0*
_output_shapes
:d2'
%batch_normalization_178/batchnorm/sub?
'batch_normalization_178/batchnorm/add_1AddV2+batch_normalization_178/batchnorm/mul_1:z:0)batch_normalization_178/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????d2)
'batch_normalization_178/batchnorm/add_1{
dropout_178/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_178/dropout/Const?
dropout_178/dropout/MulMul+batch_normalization_178/batchnorm/add_1:z:0"dropout_178/dropout/Const:output:0*
T0*+
_output_shapes
:?????????d2
dropout_178/dropout/Mul?
dropout_178/dropout/ShapeShape+batch_normalization_178/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_178/dropout/Shape?
0dropout_178/dropout/random_uniform/RandomUniformRandomUniform"dropout_178/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????d*
dtype0*

seed**
seed222
0dropout_178/dropout/random_uniform/RandomUniform?
"dropout_178/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2$
"dropout_178/dropout/GreaterEqual/y?
 dropout_178/dropout/GreaterEqualGreaterEqual9dropout_178/dropout/random_uniform/RandomUniform:output:0+dropout_178/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????d2"
 dropout_178/dropout/GreaterEqual?
dropout_178/dropout/CastCast$dropout_178/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????d2
dropout_178/dropout/Cast?
dropout_178/dropout/Mul_1Muldropout_178/dropout/Mul:z:0dropout_178/dropout/Cast:y:0*
T0*+
_output_shapes
:?????????d2
dropout_178/dropout/Mul_1?
"dense_209/Tensordot/ReadVariableOpReadVariableOp+dense_209_tensordot_readvariableop_resource*
_output_shapes

:d2*
dtype02$
"dense_209/Tensordot/ReadVariableOp~
dense_209/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_209/Tensordot/axes?
dense_209/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_209/Tensordot/free?
dense_209/Tensordot/ShapeShapedropout_178/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
dense_209/Tensordot/Shape?
!dense_209/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_209/Tensordot/GatherV2/axis?
dense_209/Tensordot/GatherV2GatherV2"dense_209/Tensordot/Shape:output:0!dense_209/Tensordot/free:output:0*dense_209/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_209/Tensordot/GatherV2?
#dense_209/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_209/Tensordot/GatherV2_1/axis?
dense_209/Tensordot/GatherV2_1GatherV2"dense_209/Tensordot/Shape:output:0!dense_209/Tensordot/axes:output:0,dense_209/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_209/Tensordot/GatherV2_1?
dense_209/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_209/Tensordot/Const?
dense_209/Tensordot/ProdProd%dense_209/Tensordot/GatherV2:output:0"dense_209/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_209/Tensordot/Prod?
dense_209/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_209/Tensordot/Const_1?
dense_209/Tensordot/Prod_1Prod'dense_209/Tensordot/GatherV2_1:output:0$dense_209/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_209/Tensordot/Prod_1?
dense_209/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_209/Tensordot/concat/axis?
dense_209/Tensordot/concatConcatV2!dense_209/Tensordot/free:output:0!dense_209/Tensordot/axes:output:0(dense_209/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_209/Tensordot/concat?
dense_209/Tensordot/stackPack!dense_209/Tensordot/Prod:output:0#dense_209/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_209/Tensordot/stack?
dense_209/Tensordot/transpose	Transposedropout_178/dropout/Mul_1:z:0#dense_209/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????d2
dense_209/Tensordot/transpose?
dense_209/Tensordot/ReshapeReshape!dense_209/Tensordot/transpose:y:0"dense_209/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_209/Tensordot/Reshape?
dense_209/Tensordot/MatMulMatMul$dense_209/Tensordot/Reshape:output:0*dense_209/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_209/Tensordot/MatMul?
dense_209/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:22
dense_209/Tensordot/Const_2?
!dense_209/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_209/Tensordot/concat_1/axis?
dense_209/Tensordot/concat_1ConcatV2%dense_209/Tensordot/GatherV2:output:0$dense_209/Tensordot/Const_2:output:0*dense_209/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_209/Tensordot/concat_1?
dense_209/TensordotReshape$dense_209/Tensordot/MatMul:product:0%dense_209/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????22
dense_209/Tensordot?
 dense_209/BiasAdd/ReadVariableOpReadVariableOp)dense_209_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02"
 dense_209/BiasAdd/ReadVariableOp?
dense_209/BiasAddBiasAdddense_209/Tensordot:output:0(dense_209/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????22
dense_209/BiasAdd?
6batch_normalization_179/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       28
6batch_normalization_179/moments/mean/reduction_indices?
$batch_normalization_179/moments/meanMeandense_209/BiasAdd:output:0?batch_normalization_179/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:2*
	keep_dims(2&
$batch_normalization_179/moments/mean?
,batch_normalization_179/moments/StopGradientStopGradient-batch_normalization_179/moments/mean:output:0*
T0*"
_output_shapes
:22.
,batch_normalization_179/moments/StopGradient?
1batch_normalization_179/moments/SquaredDifferenceSquaredDifferencedense_209/BiasAdd:output:05batch_normalization_179/moments/StopGradient:output:0*
T0*+
_output_shapes
:?????????223
1batch_normalization_179/moments/SquaredDifference?
:batch_normalization_179/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2<
:batch_normalization_179/moments/variance/reduction_indices?
(batch_normalization_179/moments/varianceMean5batch_normalization_179/moments/SquaredDifference:z:0Cbatch_normalization_179/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:2*
	keep_dims(2*
(batch_normalization_179/moments/variance?
'batch_normalization_179/moments/SqueezeSqueeze-batch_normalization_179/moments/mean:output:0*
T0*
_output_shapes
:2*
squeeze_dims
 2)
'batch_normalization_179/moments/Squeeze?
)batch_normalization_179/moments/Squeeze_1Squeeze1batch_normalization_179/moments/variance:output:0*
T0*
_output_shapes
:2*
squeeze_dims
 2+
)batch_normalization_179/moments/Squeeze_1?
-batch_normalization_179/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@batch_normalization_179/AssignMovingAvg/300146*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_179/AssignMovingAvg/decay?
6batch_normalization_179/AssignMovingAvg/ReadVariableOpReadVariableOp.batch_normalization_179_assignmovingavg_300146*
_output_shapes
:2*
dtype028
6batch_normalization_179/AssignMovingAvg/ReadVariableOp?
+batch_normalization_179/AssignMovingAvg/subSub>batch_normalization_179/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_179/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*A
_class7
53loc:@batch_normalization_179/AssignMovingAvg/300146*
_output_shapes
:22-
+batch_normalization_179/AssignMovingAvg/sub?
+batch_normalization_179/AssignMovingAvg/mulMul/batch_normalization_179/AssignMovingAvg/sub:z:06batch_normalization_179/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*A
_class7
53loc:@batch_normalization_179/AssignMovingAvg/300146*
_output_shapes
:22-
+batch_normalization_179/AssignMovingAvg/mul?
;batch_normalization_179/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp.batch_normalization_179_assignmovingavg_300146/batch_normalization_179/AssignMovingAvg/mul:z:07^batch_normalization_179/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@batch_normalization_179/AssignMovingAvg/300146*
_output_shapes
 *
dtype02=
;batch_normalization_179/AssignMovingAvg/AssignSubVariableOp?
/batch_normalization_179/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*C
_class9
75loc:@batch_normalization_179/AssignMovingAvg_1/300152*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/batch_normalization_179/AssignMovingAvg_1/decay?
8batch_normalization_179/AssignMovingAvg_1/ReadVariableOpReadVariableOp0batch_normalization_179_assignmovingavg_1_300152*
_output_shapes
:2*
dtype02:
8batch_normalization_179/AssignMovingAvg_1/ReadVariableOp?
-batch_normalization_179/AssignMovingAvg_1/subSub@batch_normalization_179/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_179/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@batch_normalization_179/AssignMovingAvg_1/300152*
_output_shapes
:22/
-batch_normalization_179/AssignMovingAvg_1/sub?
-batch_normalization_179/AssignMovingAvg_1/mulMul1batch_normalization_179/AssignMovingAvg_1/sub:z:08batch_normalization_179/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@batch_normalization_179/AssignMovingAvg_1/300152*
_output_shapes
:22/
-batch_normalization_179/AssignMovingAvg_1/mul?
=batch_normalization_179/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp0batch_normalization_179_assignmovingavg_1_3001521batch_normalization_179/AssignMovingAvg_1/mul:z:09^batch_normalization_179/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*C
_class9
75loc:@batch_normalization_179/AssignMovingAvg_1/300152*
_output_shapes
 *
dtype02?
=batch_normalization_179/AssignMovingAvg_1/AssignSubVariableOp?
'batch_normalization_179/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2)
'batch_normalization_179/batchnorm/add/y?
%batch_normalization_179/batchnorm/addAddV22batch_normalization_179/moments/Squeeze_1:output:00batch_normalization_179/batchnorm/add/y:output:0*
T0*
_output_shapes
:22'
%batch_normalization_179/batchnorm/add?
'batch_normalization_179/batchnorm/RsqrtRsqrt)batch_normalization_179/batchnorm/add:z:0*
T0*
_output_shapes
:22)
'batch_normalization_179/batchnorm/Rsqrt?
4batch_normalization_179/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_179_batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype026
4batch_normalization_179/batchnorm/mul/ReadVariableOp?
%batch_normalization_179/batchnorm/mulMul+batch_normalization_179/batchnorm/Rsqrt:y:0<batch_normalization_179/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:22'
%batch_normalization_179/batchnorm/mul?
'batch_normalization_179/batchnorm/mul_1Muldense_209/BiasAdd:output:0)batch_normalization_179/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????22)
'batch_normalization_179/batchnorm/mul_1?
'batch_normalization_179/batchnorm/mul_2Mul0batch_normalization_179/moments/Squeeze:output:0)batch_normalization_179/batchnorm/mul:z:0*
T0*
_output_shapes
:22)
'batch_normalization_179/batchnorm/mul_2?
0batch_normalization_179/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_179_batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype022
0batch_normalization_179/batchnorm/ReadVariableOp?
%batch_normalization_179/batchnorm/subSub8batch_normalization_179/batchnorm/ReadVariableOp:value:0+batch_normalization_179/batchnorm/mul_2:z:0*
T0*
_output_shapes
:22'
%batch_normalization_179/batchnorm/sub?
'batch_normalization_179/batchnorm/add_1AddV2+batch_normalization_179/batchnorm/mul_1:z:0)batch_normalization_179/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????22)
'batch_normalization_179/batchnorm/add_1{
dropout_179/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_179/dropout/Const?
dropout_179/dropout/MulMul+batch_normalization_179/batchnorm/add_1:z:0"dropout_179/dropout/Const:output:0*
T0*+
_output_shapes
:?????????22
dropout_179/dropout/Mul?
dropout_179/dropout/ShapeShape+batch_normalization_179/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_179/dropout/Shape?
0dropout_179/dropout/random_uniform/RandomUniformRandomUniform"dropout_179/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????2*
dtype0*

seed**
seed222
0dropout_179/dropout/random_uniform/RandomUniform?
"dropout_179/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2$
"dropout_179/dropout/GreaterEqual/y?
 dropout_179/dropout/GreaterEqualGreaterEqual9dropout_179/dropout/random_uniform/RandomUniform:output:0+dropout_179/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????22"
 dropout_179/dropout/GreaterEqual?
dropout_179/dropout/CastCast$dropout_179/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????22
dropout_179/dropout/Cast?
dropout_179/dropout/Mul_1Muldropout_179/dropout/Mul:z:0dropout_179/dropout/Cast:y:0*
T0*+
_output_shapes
:?????????22
dropout_179/dropout/Mul_1?
"dense_210/Tensordot/ReadVariableOpReadVariableOp+dense_210_tensordot_readvariableop_resource*
_output_shapes

:2*
dtype02$
"dense_210/Tensordot/ReadVariableOp~
dense_210/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_210/Tensordot/axes?
dense_210/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_210/Tensordot/free?
dense_210/Tensordot/ShapeShapedropout_179/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
dense_210/Tensordot/Shape?
!dense_210/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_210/Tensordot/GatherV2/axis?
dense_210/Tensordot/GatherV2GatherV2"dense_210/Tensordot/Shape:output:0!dense_210/Tensordot/free:output:0*dense_210/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_210/Tensordot/GatherV2?
#dense_210/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_210/Tensordot/GatherV2_1/axis?
dense_210/Tensordot/GatherV2_1GatherV2"dense_210/Tensordot/Shape:output:0!dense_210/Tensordot/axes:output:0,dense_210/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_210/Tensordot/GatherV2_1?
dense_210/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_210/Tensordot/Const?
dense_210/Tensordot/ProdProd%dense_210/Tensordot/GatherV2:output:0"dense_210/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_210/Tensordot/Prod?
dense_210/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_210/Tensordot/Const_1?
dense_210/Tensordot/Prod_1Prod'dense_210/Tensordot/GatherV2_1:output:0$dense_210/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_210/Tensordot/Prod_1?
dense_210/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_210/Tensordot/concat/axis?
dense_210/Tensordot/concatConcatV2!dense_210/Tensordot/free:output:0!dense_210/Tensordot/axes:output:0(dense_210/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_210/Tensordot/concat?
dense_210/Tensordot/stackPack!dense_210/Tensordot/Prod:output:0#dense_210/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_210/Tensordot/stack?
dense_210/Tensordot/transpose	Transposedropout_179/dropout/Mul_1:z:0#dense_210/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????22
dense_210/Tensordot/transpose?
dense_210/Tensordot/ReshapeReshape!dense_210/Tensordot/transpose:y:0"dense_210/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_210/Tensordot/Reshape?
dense_210/Tensordot/MatMulMatMul$dense_210/Tensordot/Reshape:output:0*dense_210/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_210/Tensordot/MatMul?
dense_210/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_210/Tensordot/Const_2?
!dense_210/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_210/Tensordot/concat_1/axis?
dense_210/Tensordot/concat_1ConcatV2%dense_210/Tensordot/GatherV2:output:0$dense_210/Tensordot/Const_2:output:0*dense_210/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_210/Tensordot/concat_1?
dense_210/TensordotReshape$dense_210/Tensordot/MatMul:product:0%dense_210/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
dense_210/Tensordot?
 dense_210/BiasAdd/ReadVariableOpReadVariableOp)dense_210_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_210/BiasAdd/ReadVariableOp?
dense_210/BiasAddBiasAdddense_210/Tensordot:output:0(dense_210/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2
dense_210/BiasAdd?
6batch_normalization_180/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       28
6batch_normalization_180/moments/mean/reduction_indices?
$batch_normalization_180/moments/meanMeandense_210/BiasAdd:output:0?batch_normalization_180/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2&
$batch_normalization_180/moments/mean?
,batch_normalization_180/moments/StopGradientStopGradient-batch_normalization_180/moments/mean:output:0*
T0*"
_output_shapes
:2.
,batch_normalization_180/moments/StopGradient?
1batch_normalization_180/moments/SquaredDifferenceSquaredDifferencedense_210/BiasAdd:output:05batch_normalization_180/moments/StopGradient:output:0*
T0*+
_output_shapes
:?????????23
1batch_normalization_180/moments/SquaredDifference?
:batch_normalization_180/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2<
:batch_normalization_180/moments/variance/reduction_indices?
(batch_normalization_180/moments/varianceMean5batch_normalization_180/moments/SquaredDifference:z:0Cbatch_normalization_180/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2*
(batch_normalization_180/moments/variance?
'batch_normalization_180/moments/SqueezeSqueeze-batch_normalization_180/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2)
'batch_normalization_180/moments/Squeeze?
)batch_normalization_180/moments/Squeeze_1Squeeze1batch_normalization_180/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2+
)batch_normalization_180/moments/Squeeze_1?
-batch_normalization_180/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@batch_normalization_180/AssignMovingAvg/300212*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_180/AssignMovingAvg/decay?
6batch_normalization_180/AssignMovingAvg/ReadVariableOpReadVariableOp.batch_normalization_180_assignmovingavg_300212*
_output_shapes
:*
dtype028
6batch_normalization_180/AssignMovingAvg/ReadVariableOp?
+batch_normalization_180/AssignMovingAvg/subSub>batch_normalization_180/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_180/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*A
_class7
53loc:@batch_normalization_180/AssignMovingAvg/300212*
_output_shapes
:2-
+batch_normalization_180/AssignMovingAvg/sub?
+batch_normalization_180/AssignMovingAvg/mulMul/batch_normalization_180/AssignMovingAvg/sub:z:06batch_normalization_180/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*A
_class7
53loc:@batch_normalization_180/AssignMovingAvg/300212*
_output_shapes
:2-
+batch_normalization_180/AssignMovingAvg/mul?
;batch_normalization_180/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp.batch_normalization_180_assignmovingavg_300212/batch_normalization_180/AssignMovingAvg/mul:z:07^batch_normalization_180/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@batch_normalization_180/AssignMovingAvg/300212*
_output_shapes
 *
dtype02=
;batch_normalization_180/AssignMovingAvg/AssignSubVariableOp?
/batch_normalization_180/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*C
_class9
75loc:@batch_normalization_180/AssignMovingAvg_1/300218*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/batch_normalization_180/AssignMovingAvg_1/decay?
8batch_normalization_180/AssignMovingAvg_1/ReadVariableOpReadVariableOp0batch_normalization_180_assignmovingavg_1_300218*
_output_shapes
:*
dtype02:
8batch_normalization_180/AssignMovingAvg_1/ReadVariableOp?
-batch_normalization_180/AssignMovingAvg_1/subSub@batch_normalization_180/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_180/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@batch_normalization_180/AssignMovingAvg_1/300218*
_output_shapes
:2/
-batch_normalization_180/AssignMovingAvg_1/sub?
-batch_normalization_180/AssignMovingAvg_1/mulMul1batch_normalization_180/AssignMovingAvg_1/sub:z:08batch_normalization_180/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@batch_normalization_180/AssignMovingAvg_1/300218*
_output_shapes
:2/
-batch_normalization_180/AssignMovingAvg_1/mul?
=batch_normalization_180/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp0batch_normalization_180_assignmovingavg_1_3002181batch_normalization_180/AssignMovingAvg_1/mul:z:09^batch_normalization_180/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*C
_class9
75loc:@batch_normalization_180/AssignMovingAvg_1/300218*
_output_shapes
 *
dtype02?
=batch_normalization_180/AssignMovingAvg_1/AssignSubVariableOp?
'batch_normalization_180/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2)
'batch_normalization_180/batchnorm/add/y?
%batch_normalization_180/batchnorm/addAddV22batch_normalization_180/moments/Squeeze_1:output:00batch_normalization_180/batchnorm/add/y:output:0*
T0*
_output_shapes
:2'
%batch_normalization_180/batchnorm/add?
'batch_normalization_180/batchnorm/RsqrtRsqrt)batch_normalization_180/batchnorm/add:z:0*
T0*
_output_shapes
:2)
'batch_normalization_180/batchnorm/Rsqrt?
4batch_normalization_180/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_180_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype026
4batch_normalization_180/batchnorm/mul/ReadVariableOp?
%batch_normalization_180/batchnorm/mulMul+batch_normalization_180/batchnorm/Rsqrt:y:0<batch_normalization_180/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2'
%batch_normalization_180/batchnorm/mul?
'batch_normalization_180/batchnorm/mul_1Muldense_210/BiasAdd:output:0)batch_normalization_180/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????2)
'batch_normalization_180/batchnorm/mul_1?
'batch_normalization_180/batchnorm/mul_2Mul0batch_normalization_180/moments/Squeeze:output:0)batch_normalization_180/batchnorm/mul:z:0*
T0*
_output_shapes
:2)
'batch_normalization_180/batchnorm/mul_2?
0batch_normalization_180/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_180_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype022
0batch_normalization_180/batchnorm/ReadVariableOp?
%batch_normalization_180/batchnorm/subSub8batch_normalization_180/batchnorm/ReadVariableOp:value:0+batch_normalization_180/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2'
%batch_normalization_180/batchnorm/sub?
'batch_normalization_180/batchnorm/add_1AddV2+batch_normalization_180/batchnorm/mul_1:z:0)batch_normalization_180/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????2)
'batch_normalization_180/batchnorm/add_1{
dropout_180/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_180/dropout/Const?
dropout_180/dropout/MulMul+batch_normalization_180/batchnorm/add_1:z:0"dropout_180/dropout/Const:output:0*
T0*+
_output_shapes
:?????????2
dropout_180/dropout/Mul?
dropout_180/dropout/ShapeShape+batch_normalization_180/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_180/dropout/Shape?
0dropout_180/dropout/random_uniform/RandomUniformRandomUniform"dropout_180/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0*

seed**
seed222
0dropout_180/dropout/random_uniform/RandomUniform?
"dropout_180/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2$
"dropout_180/dropout/GreaterEqual/y?
 dropout_180/dropout/GreaterEqualGreaterEqual9dropout_180/dropout/random_uniform/RandomUniform:output:0+dropout_180/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????2"
 dropout_180/dropout/GreaterEqual?
dropout_180/dropout/CastCast$dropout_180/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????2
dropout_180/dropout/Cast?
dropout_180/dropout/Mul_1Muldropout_180/dropout/Mul:z:0dropout_180/dropout/Cast:y:0*
T0*+
_output_shapes
:?????????2
dropout_180/dropout/Mul_1?
"dense_211/Tensordot/ReadVariableOpReadVariableOp+dense_211_tensordot_readvariableop_resource*
_output_shapes

:*
dtype02$
"dense_211/Tensordot/ReadVariableOp~
dense_211/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_211/Tensordot/axes?
dense_211/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_211/Tensordot/free?
dense_211/Tensordot/ShapeShapedropout_180/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
dense_211/Tensordot/Shape?
!dense_211/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_211/Tensordot/GatherV2/axis?
dense_211/Tensordot/GatherV2GatherV2"dense_211/Tensordot/Shape:output:0!dense_211/Tensordot/free:output:0*dense_211/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_211/Tensordot/GatherV2?
#dense_211/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_211/Tensordot/GatherV2_1/axis?
dense_211/Tensordot/GatherV2_1GatherV2"dense_211/Tensordot/Shape:output:0!dense_211/Tensordot/axes:output:0,dense_211/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_211/Tensordot/GatherV2_1?
dense_211/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_211/Tensordot/Const?
dense_211/Tensordot/ProdProd%dense_211/Tensordot/GatherV2:output:0"dense_211/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_211/Tensordot/Prod?
dense_211/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_211/Tensordot/Const_1?
dense_211/Tensordot/Prod_1Prod'dense_211/Tensordot/GatherV2_1:output:0$dense_211/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_211/Tensordot/Prod_1?
dense_211/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_211/Tensordot/concat/axis?
dense_211/Tensordot/concatConcatV2!dense_211/Tensordot/free:output:0!dense_211/Tensordot/axes:output:0(dense_211/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_211/Tensordot/concat?
dense_211/Tensordot/stackPack!dense_211/Tensordot/Prod:output:0#dense_211/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_211/Tensordot/stack?
dense_211/Tensordot/transpose	Transposedropout_180/dropout/Mul_1:z:0#dense_211/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????2
dense_211/Tensordot/transpose?
dense_211/Tensordot/ReshapeReshape!dense_211/Tensordot/transpose:y:0"dense_211/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_211/Tensordot/Reshape?
dense_211/Tensordot/MatMulMatMul$dense_211/Tensordot/Reshape:output:0*dense_211/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_211/Tensordot/MatMul?
dense_211/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_211/Tensordot/Const_2?
!dense_211/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_211/Tensordot/concat_1/axis?
dense_211/Tensordot/concat_1ConcatV2%dense_211/Tensordot/GatherV2:output:0$dense_211/Tensordot/Const_2:output:0*dense_211/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_211/Tensordot/concat_1?
dense_211/TensordotReshape$dense_211/Tensordot/MatMul:product:0%dense_211/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
dense_211/Tensordot?
 dense_211/BiasAdd/ReadVariableOpReadVariableOp)dense_211_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_211/BiasAdd/ReadVariableOp?
dense_211/BiasAddBiasAdddense_211/Tensordot:output:0(dense_211/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2
dense_211/BiasAdd?
6batch_normalization_181/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       28
6batch_normalization_181/moments/mean/reduction_indices?
$batch_normalization_181/moments/meanMeandense_211/BiasAdd:output:0?batch_normalization_181/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2&
$batch_normalization_181/moments/mean?
,batch_normalization_181/moments/StopGradientStopGradient-batch_normalization_181/moments/mean:output:0*
T0*"
_output_shapes
:2.
,batch_normalization_181/moments/StopGradient?
1batch_normalization_181/moments/SquaredDifferenceSquaredDifferencedense_211/BiasAdd:output:05batch_normalization_181/moments/StopGradient:output:0*
T0*+
_output_shapes
:?????????23
1batch_normalization_181/moments/SquaredDifference?
:batch_normalization_181/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2<
:batch_normalization_181/moments/variance/reduction_indices?
(batch_normalization_181/moments/varianceMean5batch_normalization_181/moments/SquaredDifference:z:0Cbatch_normalization_181/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2*
(batch_normalization_181/moments/variance?
'batch_normalization_181/moments/SqueezeSqueeze-batch_normalization_181/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2)
'batch_normalization_181/moments/Squeeze?
)batch_normalization_181/moments/Squeeze_1Squeeze1batch_normalization_181/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2+
)batch_normalization_181/moments/Squeeze_1?
-batch_normalization_181/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@batch_normalization_181/AssignMovingAvg/300278*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_181/AssignMovingAvg/decay?
6batch_normalization_181/AssignMovingAvg/ReadVariableOpReadVariableOp.batch_normalization_181_assignmovingavg_300278*
_output_shapes
:*
dtype028
6batch_normalization_181/AssignMovingAvg/ReadVariableOp?
+batch_normalization_181/AssignMovingAvg/subSub>batch_normalization_181/AssignMovingAvg/ReadVariableOp:value:00batch_normalization_181/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*A
_class7
53loc:@batch_normalization_181/AssignMovingAvg/300278*
_output_shapes
:2-
+batch_normalization_181/AssignMovingAvg/sub?
+batch_normalization_181/AssignMovingAvg/mulMul/batch_normalization_181/AssignMovingAvg/sub:z:06batch_normalization_181/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*A
_class7
53loc:@batch_normalization_181/AssignMovingAvg/300278*
_output_shapes
:2-
+batch_normalization_181/AssignMovingAvg/mul?
;batch_normalization_181/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp.batch_normalization_181_assignmovingavg_300278/batch_normalization_181/AssignMovingAvg/mul:z:07^batch_normalization_181/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@batch_normalization_181/AssignMovingAvg/300278*
_output_shapes
 *
dtype02=
;batch_normalization_181/AssignMovingAvg/AssignSubVariableOp?
/batch_normalization_181/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*C
_class9
75loc:@batch_normalization_181/AssignMovingAvg_1/300284*
_output_shapes
: *
dtype0*
valueB
 *
?#<21
/batch_normalization_181/AssignMovingAvg_1/decay?
8batch_normalization_181/AssignMovingAvg_1/ReadVariableOpReadVariableOp0batch_normalization_181_assignmovingavg_1_300284*
_output_shapes
:*
dtype02:
8batch_normalization_181/AssignMovingAvg_1/ReadVariableOp?
-batch_normalization_181/AssignMovingAvg_1/subSub@batch_normalization_181/AssignMovingAvg_1/ReadVariableOp:value:02batch_normalization_181/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@batch_normalization_181/AssignMovingAvg_1/300284*
_output_shapes
:2/
-batch_normalization_181/AssignMovingAvg_1/sub?
-batch_normalization_181/AssignMovingAvg_1/mulMul1batch_normalization_181/AssignMovingAvg_1/sub:z:08batch_normalization_181/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@batch_normalization_181/AssignMovingAvg_1/300284*
_output_shapes
:2/
-batch_normalization_181/AssignMovingAvg_1/mul?
=batch_normalization_181/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp0batch_normalization_181_assignmovingavg_1_3002841batch_normalization_181/AssignMovingAvg_1/mul:z:09^batch_normalization_181/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*C
_class9
75loc:@batch_normalization_181/AssignMovingAvg_1/300284*
_output_shapes
 *
dtype02?
=batch_normalization_181/AssignMovingAvg_1/AssignSubVariableOp?
'batch_normalization_181/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2)
'batch_normalization_181/batchnorm/add/y?
%batch_normalization_181/batchnorm/addAddV22batch_normalization_181/moments/Squeeze_1:output:00batch_normalization_181/batchnorm/add/y:output:0*
T0*
_output_shapes
:2'
%batch_normalization_181/batchnorm/add?
'batch_normalization_181/batchnorm/RsqrtRsqrt)batch_normalization_181/batchnorm/add:z:0*
T0*
_output_shapes
:2)
'batch_normalization_181/batchnorm/Rsqrt?
4batch_normalization_181/batchnorm/mul/ReadVariableOpReadVariableOp=batch_normalization_181_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype026
4batch_normalization_181/batchnorm/mul/ReadVariableOp?
%batch_normalization_181/batchnorm/mulMul+batch_normalization_181/batchnorm/Rsqrt:y:0<batch_normalization_181/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2'
%batch_normalization_181/batchnorm/mul?
'batch_normalization_181/batchnorm/mul_1Muldense_211/BiasAdd:output:0)batch_normalization_181/batchnorm/mul:z:0*
T0*+
_output_shapes
:?????????2)
'batch_normalization_181/batchnorm/mul_1?
'batch_normalization_181/batchnorm/mul_2Mul0batch_normalization_181/moments/Squeeze:output:0)batch_normalization_181/batchnorm/mul:z:0*
T0*
_output_shapes
:2)
'batch_normalization_181/batchnorm/mul_2?
0batch_normalization_181/batchnorm/ReadVariableOpReadVariableOp9batch_normalization_181_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype022
0batch_normalization_181/batchnorm/ReadVariableOp?
%batch_normalization_181/batchnorm/subSub8batch_normalization_181/batchnorm/ReadVariableOp:value:0+batch_normalization_181/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2'
%batch_normalization_181/batchnorm/sub?
'batch_normalization_181/batchnorm/add_1AddV2+batch_normalization_181/batchnorm/mul_1:z:0)batch_normalization_181/batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????2)
'batch_normalization_181/batchnorm/add_1{
dropout_181/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_181/dropout/Const?
dropout_181/dropout/MulMul+batch_normalization_181/batchnorm/add_1:z:0"dropout_181/dropout/Const:output:0*
T0*+
_output_shapes
:?????????2
dropout_181/dropout/Mul?
dropout_181/dropout/ShapeShape+batch_normalization_181/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_181/dropout/Shape?
0dropout_181/dropout/random_uniform/RandomUniformRandomUniform"dropout_181/dropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0*

seed**
seed222
0dropout_181/dropout/random_uniform/RandomUniform?
"dropout_181/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2$
"dropout_181/dropout/GreaterEqual/y?
 dropout_181/dropout/GreaterEqualGreaterEqual9dropout_181/dropout/random_uniform/RandomUniform:output:0+dropout_181/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????2"
 dropout_181/dropout/GreaterEqual?
dropout_181/dropout/CastCast$dropout_181/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????2
dropout_181/dropout/Cast?
dropout_181/dropout/Mul_1Muldropout_181/dropout/Mul:z:0dropout_181/dropout/Cast:y:0*
T0*+
_output_shapes
:?????????2
dropout_181/dropout/Mul_1?
"dense_212/Tensordot/ReadVariableOpReadVariableOp+dense_212_tensordot_readvariableop_resource*
_output_shapes

:*
dtype02$
"dense_212/Tensordot/ReadVariableOp~
dense_212/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_212/Tensordot/axes?
dense_212/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_212/Tensordot/free?
dense_212/Tensordot/ShapeShapedropout_181/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
dense_212/Tensordot/Shape?
!dense_212/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_212/Tensordot/GatherV2/axis?
dense_212/Tensordot/GatherV2GatherV2"dense_212/Tensordot/Shape:output:0!dense_212/Tensordot/free:output:0*dense_212/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_212/Tensordot/GatherV2?
#dense_212/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_212/Tensordot/GatherV2_1/axis?
dense_212/Tensordot/GatherV2_1GatherV2"dense_212/Tensordot/Shape:output:0!dense_212/Tensordot/axes:output:0,dense_212/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_212/Tensordot/GatherV2_1?
dense_212/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_212/Tensordot/Const?
dense_212/Tensordot/ProdProd%dense_212/Tensordot/GatherV2:output:0"dense_212/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_212/Tensordot/Prod?
dense_212/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_212/Tensordot/Const_1?
dense_212/Tensordot/Prod_1Prod'dense_212/Tensordot/GatherV2_1:output:0$dense_212/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_212/Tensordot/Prod_1?
dense_212/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_212/Tensordot/concat/axis?
dense_212/Tensordot/concatConcatV2!dense_212/Tensordot/free:output:0!dense_212/Tensordot/axes:output:0(dense_212/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_212/Tensordot/concat?
dense_212/Tensordot/stackPack!dense_212/Tensordot/Prod:output:0#dense_212/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_212/Tensordot/stack?
dense_212/Tensordot/transpose	Transposedropout_181/dropout/Mul_1:z:0#dense_212/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????2
dense_212/Tensordot/transpose?
dense_212/Tensordot/ReshapeReshape!dense_212/Tensordot/transpose:y:0"dense_212/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_212/Tensordot/Reshape?
dense_212/Tensordot/MatMulMatMul$dense_212/Tensordot/Reshape:output:0*dense_212/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_212/Tensordot/MatMul?
dense_212/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_212/Tensordot/Const_2?
!dense_212/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_212/Tensordot/concat_1/axis?
dense_212/Tensordot/concat_1ConcatV2%dense_212/Tensordot/GatherV2:output:0$dense_212/Tensordot/Const_2:output:0*dense_212/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_212/Tensordot/concat_1?
dense_212/TensordotReshape$dense_212/Tensordot/MatMul:product:0%dense_212/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
dense_212/Tensordot?
 dense_212/BiasAdd/ReadVariableOpReadVariableOp)dense_212_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_212/BiasAdd/ReadVariableOp?
dense_212/BiasAddBiasAdddense_212/Tensordot:output:0(dense_212/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2
dense_212/BiasAdd?
IdentityIdentitydense_212/BiasAdd:output:0<^batch_normalization_177/AssignMovingAvg/AssignSubVariableOp7^batch_normalization_177/AssignMovingAvg/ReadVariableOp>^batch_normalization_177/AssignMovingAvg_1/AssignSubVariableOp9^batch_normalization_177/AssignMovingAvg_1/ReadVariableOp1^batch_normalization_177/batchnorm/ReadVariableOp5^batch_normalization_177/batchnorm/mul/ReadVariableOp<^batch_normalization_178/AssignMovingAvg/AssignSubVariableOp7^batch_normalization_178/AssignMovingAvg/ReadVariableOp>^batch_normalization_178/AssignMovingAvg_1/AssignSubVariableOp9^batch_normalization_178/AssignMovingAvg_1/ReadVariableOp1^batch_normalization_178/batchnorm/ReadVariableOp5^batch_normalization_178/batchnorm/mul/ReadVariableOp<^batch_normalization_179/AssignMovingAvg/AssignSubVariableOp7^batch_normalization_179/AssignMovingAvg/ReadVariableOp>^batch_normalization_179/AssignMovingAvg_1/AssignSubVariableOp9^batch_normalization_179/AssignMovingAvg_1/ReadVariableOp1^batch_normalization_179/batchnorm/ReadVariableOp5^batch_normalization_179/batchnorm/mul/ReadVariableOp<^batch_normalization_180/AssignMovingAvg/AssignSubVariableOp7^batch_normalization_180/AssignMovingAvg/ReadVariableOp>^batch_normalization_180/AssignMovingAvg_1/AssignSubVariableOp9^batch_normalization_180/AssignMovingAvg_1/ReadVariableOp1^batch_normalization_180/batchnorm/ReadVariableOp5^batch_normalization_180/batchnorm/mul/ReadVariableOp<^batch_normalization_181/AssignMovingAvg/AssignSubVariableOp7^batch_normalization_181/AssignMovingAvg/ReadVariableOp>^batch_normalization_181/AssignMovingAvg_1/AssignSubVariableOp9^batch_normalization_181/AssignMovingAvg_1/ReadVariableOp1^batch_normalization_181/batchnorm/ReadVariableOp5^batch_normalization_181/batchnorm/mul/ReadVariableOp!^dense_207/BiasAdd/ReadVariableOp#^dense_207/Tensordot/ReadVariableOp!^dense_208/BiasAdd/ReadVariableOp#^dense_208/Tensordot/ReadVariableOp!^dense_209/BiasAdd/ReadVariableOp#^dense_209/Tensordot/ReadVariableOp!^dense_210/BiasAdd/ReadVariableOp#^dense_210/Tensordot/ReadVariableOp!^dense_211/BiasAdd/ReadVariableOp#^dense_211/Tensordot/ReadVariableOp!^dense_212/BiasAdd/ReadVariableOp#^dense_212/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::2z
;batch_normalization_177/AssignMovingAvg/AssignSubVariableOp;batch_normalization_177/AssignMovingAvg/AssignSubVariableOp2p
6batch_normalization_177/AssignMovingAvg/ReadVariableOp6batch_normalization_177/AssignMovingAvg/ReadVariableOp2~
=batch_normalization_177/AssignMovingAvg_1/AssignSubVariableOp=batch_normalization_177/AssignMovingAvg_1/AssignSubVariableOp2t
8batch_normalization_177/AssignMovingAvg_1/ReadVariableOp8batch_normalization_177/AssignMovingAvg_1/ReadVariableOp2d
0batch_normalization_177/batchnorm/ReadVariableOp0batch_normalization_177/batchnorm/ReadVariableOp2l
4batch_normalization_177/batchnorm/mul/ReadVariableOp4batch_normalization_177/batchnorm/mul/ReadVariableOp2z
;batch_normalization_178/AssignMovingAvg/AssignSubVariableOp;batch_normalization_178/AssignMovingAvg/AssignSubVariableOp2p
6batch_normalization_178/AssignMovingAvg/ReadVariableOp6batch_normalization_178/AssignMovingAvg/ReadVariableOp2~
=batch_normalization_178/AssignMovingAvg_1/AssignSubVariableOp=batch_normalization_178/AssignMovingAvg_1/AssignSubVariableOp2t
8batch_normalization_178/AssignMovingAvg_1/ReadVariableOp8batch_normalization_178/AssignMovingAvg_1/ReadVariableOp2d
0batch_normalization_178/batchnorm/ReadVariableOp0batch_normalization_178/batchnorm/ReadVariableOp2l
4batch_normalization_178/batchnorm/mul/ReadVariableOp4batch_normalization_178/batchnorm/mul/ReadVariableOp2z
;batch_normalization_179/AssignMovingAvg/AssignSubVariableOp;batch_normalization_179/AssignMovingAvg/AssignSubVariableOp2p
6batch_normalization_179/AssignMovingAvg/ReadVariableOp6batch_normalization_179/AssignMovingAvg/ReadVariableOp2~
=batch_normalization_179/AssignMovingAvg_1/AssignSubVariableOp=batch_normalization_179/AssignMovingAvg_1/AssignSubVariableOp2t
8batch_normalization_179/AssignMovingAvg_1/ReadVariableOp8batch_normalization_179/AssignMovingAvg_1/ReadVariableOp2d
0batch_normalization_179/batchnorm/ReadVariableOp0batch_normalization_179/batchnorm/ReadVariableOp2l
4batch_normalization_179/batchnorm/mul/ReadVariableOp4batch_normalization_179/batchnorm/mul/ReadVariableOp2z
;batch_normalization_180/AssignMovingAvg/AssignSubVariableOp;batch_normalization_180/AssignMovingAvg/AssignSubVariableOp2p
6batch_normalization_180/AssignMovingAvg/ReadVariableOp6batch_normalization_180/AssignMovingAvg/ReadVariableOp2~
=batch_normalization_180/AssignMovingAvg_1/AssignSubVariableOp=batch_normalization_180/AssignMovingAvg_1/AssignSubVariableOp2t
8batch_normalization_180/AssignMovingAvg_1/ReadVariableOp8batch_normalization_180/AssignMovingAvg_1/ReadVariableOp2d
0batch_normalization_180/batchnorm/ReadVariableOp0batch_normalization_180/batchnorm/ReadVariableOp2l
4batch_normalization_180/batchnorm/mul/ReadVariableOp4batch_normalization_180/batchnorm/mul/ReadVariableOp2z
;batch_normalization_181/AssignMovingAvg/AssignSubVariableOp;batch_normalization_181/AssignMovingAvg/AssignSubVariableOp2p
6batch_normalization_181/AssignMovingAvg/ReadVariableOp6batch_normalization_181/AssignMovingAvg/ReadVariableOp2~
=batch_normalization_181/AssignMovingAvg_1/AssignSubVariableOp=batch_normalization_181/AssignMovingAvg_1/AssignSubVariableOp2t
8batch_normalization_181/AssignMovingAvg_1/ReadVariableOp8batch_normalization_181/AssignMovingAvg_1/ReadVariableOp2d
0batch_normalization_181/batchnorm/ReadVariableOp0batch_normalization_181/batchnorm/ReadVariableOp2l
4batch_normalization_181/batchnorm/mul/ReadVariableOp4batch_normalization_181/batchnorm/mul/ReadVariableOp2D
 dense_207/BiasAdd/ReadVariableOp dense_207/BiasAdd/ReadVariableOp2H
"dense_207/Tensordot/ReadVariableOp"dense_207/Tensordot/ReadVariableOp2D
 dense_208/BiasAdd/ReadVariableOp dense_208/BiasAdd/ReadVariableOp2H
"dense_208/Tensordot/ReadVariableOp"dense_208/Tensordot/ReadVariableOp2D
 dense_209/BiasAdd/ReadVariableOp dense_209/BiasAdd/ReadVariableOp2H
"dense_209/Tensordot/ReadVariableOp"dense_209/Tensordot/ReadVariableOp2D
 dense_210/BiasAdd/ReadVariableOp dense_210/BiasAdd/ReadVariableOp2H
"dense_210/Tensordot/ReadVariableOp"dense_210/Tensordot/ReadVariableOp2D
 dense_211/BiasAdd/ReadVariableOp dense_211/BiasAdd/ReadVariableOp2H
"dense_211/Tensordot/ReadVariableOp"dense_211/Tensordot/ReadVariableOp2D
 dense_212/BiasAdd/ReadVariableOp dense_212/BiasAdd/ReadVariableOp2H
"dense_212/Tensordot/ReadVariableOp"dense_212/Tensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_178_layer_call_fn_301060

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_178_layer_call_and_return_conditional_losses_2981552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????d2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????????????d::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_179_layer_call_fn_301385

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_179_layer_call_and_return_conditional_losses_2990592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????2::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
H
,__inference_dropout_178_layer_call_fn_301182

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_178_layer_call_and_return_conditional_losses_2989452
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????d:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
e
,__inference_dropout_177_layer_call_fn_300947

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_177_layer_call_and_return_conditional_losses_2987732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?1
?
S__inference_batch_normalization_177_layer_call_and_return_conditional_losses_298015

inputs
assignmovingavg_297990
assignmovingavg_1_297996)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:?*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*5
_output_shapes#
!:???????????????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/297990*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_297990*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/297990*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/297990*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_297990AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/297990*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/297996*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_297996*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/297996*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/297996*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_297996AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/297996*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:???????????????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:???????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:???????????????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_298468

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
E__inference_dense_211_layer_call_and_return_conditional_losses_301672

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:?????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

*__inference_dense_207_layer_call_fn_300761

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_207_layer_call_and_return_conditional_losses_2986542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_177_layer_call_fn_300830

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_177_layer_call_and_return_conditional_losses_2980152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:???????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_301507

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:?????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
f
G__inference_dropout_181_layer_call_and_return_conditional_losses_301857

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_301737

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_178_layer_call_fn_301073

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_178_layer_call_and_return_conditional_losses_2981882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????d2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????????????d::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_179_layer_call_fn_301372

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_179_layer_call_and_return_conditional_losses_2990392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????2::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
e
,__inference_dropout_178_layer_call_fn_301177

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_178_layer_call_and_return_conditional_losses_2989402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????d22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
f
G__inference_dropout_177_layer_call_and_return_conditional_losses_300937

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_180_layer_call_fn_301520

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_2992062
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_177_layer_call_and_return_conditional_losses_300817

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:???????????????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:???????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:???????????????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
E__inference_dense_209_layer_call_and_return_conditional_losses_301212

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:d2*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:?????????d2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:22
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????22
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????22	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????d::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_301819

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:?????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?V
?
I__inference_sequential_30_layer_call_and_return_conditional_losses_299590
dense_207_input
dense_207_299509
dense_207_299511"
batch_normalization_177_299514"
batch_normalization_177_299516"
batch_normalization_177_299518"
batch_normalization_177_299520
dense_208_299524
dense_208_299526"
batch_normalization_178_299529"
batch_normalization_178_299531"
batch_normalization_178_299533"
batch_normalization_178_299535
dense_209_299539
dense_209_299541"
batch_normalization_179_299544"
batch_normalization_179_299546"
batch_normalization_179_299548"
batch_normalization_179_299550
dense_210_299554
dense_210_299556"
batch_normalization_180_299559"
batch_normalization_180_299561"
batch_normalization_180_299563"
batch_normalization_180_299565
dense_211_299569
dense_211_299571"
batch_normalization_181_299574"
batch_normalization_181_299576"
batch_normalization_181_299578"
batch_normalization_181_299580
dense_212_299584
dense_212_299586
identity??/batch_normalization_177/StatefulPartitionedCall?/batch_normalization_178/StatefulPartitionedCall?/batch_normalization_179/StatefulPartitionedCall?/batch_normalization_180/StatefulPartitionedCall?/batch_normalization_181/StatefulPartitionedCall?!dense_207/StatefulPartitionedCall?!dense_208/StatefulPartitionedCall?!dense_209/StatefulPartitionedCall?!dense_210/StatefulPartitionedCall?!dense_211/StatefulPartitionedCall?!dense_212/StatefulPartitionedCall?
!dense_207/StatefulPartitionedCallStatefulPartitionedCalldense_207_inputdense_207_299509dense_207_299511*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_207_layer_call_and_return_conditional_losses_2986542#
!dense_207/StatefulPartitionedCall?
/batch_normalization_177/StatefulPartitionedCallStatefulPartitionedCall*dense_207/StatefulPartitionedCall:output:0batch_normalization_177_299514batch_normalization_177_299516batch_normalization_177_299518batch_normalization_177_299520*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_177_layer_call_and_return_conditional_losses_29872521
/batch_normalization_177/StatefulPartitionedCall?
dropout_177/PartitionedCallPartitionedCall8batch_normalization_177/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_177_layer_call_and_return_conditional_losses_2987782
dropout_177/PartitionedCall?
!dense_208/StatefulPartitionedCallStatefulPartitionedCall$dropout_177/PartitionedCall:output:0dense_208_299524dense_208_299526*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_208_layer_call_and_return_conditional_losses_2988212#
!dense_208/StatefulPartitionedCall?
/batch_normalization_178/StatefulPartitionedCallStatefulPartitionedCall*dense_208/StatefulPartitionedCall:output:0batch_normalization_178_299529batch_normalization_178_299531batch_normalization_178_299533batch_normalization_178_299535*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_178_layer_call_and_return_conditional_losses_29889221
/batch_normalization_178/StatefulPartitionedCall?
dropout_178/PartitionedCallPartitionedCall8batch_normalization_178/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_178_layer_call_and_return_conditional_losses_2989452
dropout_178/PartitionedCall?
!dense_209/StatefulPartitionedCallStatefulPartitionedCall$dropout_178/PartitionedCall:output:0dense_209_299539dense_209_299541*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_209_layer_call_and_return_conditional_losses_2989882#
!dense_209/StatefulPartitionedCall?
/batch_normalization_179/StatefulPartitionedCallStatefulPartitionedCall*dense_209/StatefulPartitionedCall:output:0batch_normalization_179_299544batch_normalization_179_299546batch_normalization_179_299548batch_normalization_179_299550*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_179_layer_call_and_return_conditional_losses_29905921
/batch_normalization_179/StatefulPartitionedCall?
dropout_179/PartitionedCallPartitionedCall8batch_normalization_179/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_179_layer_call_and_return_conditional_losses_2991122
dropout_179/PartitionedCall?
!dense_210/StatefulPartitionedCallStatefulPartitionedCall$dropout_179/PartitionedCall:output:0dense_210_299554dense_210_299556*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_210_layer_call_and_return_conditional_losses_2991552#
!dense_210/StatefulPartitionedCall?
/batch_normalization_180/StatefulPartitionedCallStatefulPartitionedCall*dense_210/StatefulPartitionedCall:output:0batch_normalization_180_299559batch_normalization_180_299561batch_normalization_180_299563batch_normalization_180_299565*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_29922621
/batch_normalization_180/StatefulPartitionedCall?
dropout_180/PartitionedCallPartitionedCall8batch_normalization_180/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_180_layer_call_and_return_conditional_losses_2992792
dropout_180/PartitionedCall?
!dense_211/StatefulPartitionedCallStatefulPartitionedCall$dropout_180/PartitionedCall:output:0dense_211_299569dense_211_299571*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_211_layer_call_and_return_conditional_losses_2993222#
!dense_211/StatefulPartitionedCall?
/batch_normalization_181/StatefulPartitionedCallStatefulPartitionedCall*dense_211/StatefulPartitionedCall:output:0batch_normalization_181_299574batch_normalization_181_299576batch_normalization_181_299578batch_normalization_181_299580*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_29939321
/batch_normalization_181/StatefulPartitionedCall?
dropout_181/PartitionedCallPartitionedCall8batch_normalization_181/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_181_layer_call_and_return_conditional_losses_2994462
dropout_181/PartitionedCall?
!dense_212/StatefulPartitionedCallStatefulPartitionedCall$dropout_181/PartitionedCall:output:0dense_212_299584dense_212_299586*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_212_layer_call_and_return_conditional_losses_2994892#
!dense_212/StatefulPartitionedCall?
IdentityIdentity*dense_212/StatefulPartitionedCall:output:00^batch_normalization_177/StatefulPartitionedCall0^batch_normalization_178/StatefulPartitionedCall0^batch_normalization_179/StatefulPartitionedCall0^batch_normalization_180/StatefulPartitionedCall0^batch_normalization_181/StatefulPartitionedCall"^dense_207/StatefulPartitionedCall"^dense_208/StatefulPartitionedCall"^dense_209/StatefulPartitionedCall"^dense_210/StatefulPartitionedCall"^dense_211/StatefulPartitionedCall"^dense_212/StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::2b
/batch_normalization_177/StatefulPartitionedCall/batch_normalization_177/StatefulPartitionedCall2b
/batch_normalization_178/StatefulPartitionedCall/batch_normalization_178/StatefulPartitionedCall2b
/batch_normalization_179/StatefulPartitionedCall/batch_normalization_179/StatefulPartitionedCall2b
/batch_normalization_180/StatefulPartitionedCall/batch_normalization_180/StatefulPartitionedCall2b
/batch_normalization_181/StatefulPartitionedCall/batch_normalization_181/StatefulPartitionedCall2F
!dense_207/StatefulPartitionedCall!dense_207/StatefulPartitionedCall2F
!dense_208/StatefulPartitionedCall!dense_208/StatefulPartitionedCall2F
!dense_209/StatefulPartitionedCall!dense_209/StatefulPartitionedCall2F
!dense_210/StatefulPartitionedCall!dense_210/StatefulPartitionedCall2F
!dense_211/StatefulPartitionedCall!dense_211/StatefulPartitionedCall2F
!dense_212/StatefulPartitionedCall!dense_212/StatefulPartitionedCall:\ X
+
_output_shapes
:?????????
)
_user_specified_namedense_207_input
?
e
,__inference_dropout_181_layer_call_fn_301867

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_181_layer_call_and_return_conditional_losses_2994412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?0
?
S__inference_batch_normalization_178_layer_call_and_return_conditional_losses_298872

inputs
assignmovingavg_298847
assignmovingavg_1_298853)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:d*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:d2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:?????????d2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:d*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/298847*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_298847*
_output_shapes
:d*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/298847*
_output_shapes
:d2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/298847*
_output_shapes
:d2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_298847AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/298847*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/298853*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_298853*
_output_shapes
:d*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/298853*
_output_shapes
:d2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/298853*
_output_shapes
:d2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_298853AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/298853*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:d2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:d2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:?????????d2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:d2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:d2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????d2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????d::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
ܦ
?&
__inference__traced_save_302183
file_prefix/
+savev2_dense_207_kernel_read_readvariableop-
)savev2_dense_207_bias_read_readvariableop<
8savev2_batch_normalization_177_gamma_read_readvariableop;
7savev2_batch_normalization_177_beta_read_readvariableopB
>savev2_batch_normalization_177_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_177_moving_variance_read_readvariableop/
+savev2_dense_208_kernel_read_readvariableop-
)savev2_dense_208_bias_read_readvariableop<
8savev2_batch_normalization_178_gamma_read_readvariableop;
7savev2_batch_normalization_178_beta_read_readvariableopB
>savev2_batch_normalization_178_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_178_moving_variance_read_readvariableop/
+savev2_dense_209_kernel_read_readvariableop-
)savev2_dense_209_bias_read_readvariableop<
8savev2_batch_normalization_179_gamma_read_readvariableop;
7savev2_batch_normalization_179_beta_read_readvariableopB
>savev2_batch_normalization_179_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_179_moving_variance_read_readvariableop/
+savev2_dense_210_kernel_read_readvariableop-
)savev2_dense_210_bias_read_readvariableop<
8savev2_batch_normalization_180_gamma_read_readvariableop;
7savev2_batch_normalization_180_beta_read_readvariableopB
>savev2_batch_normalization_180_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_180_moving_variance_read_readvariableop/
+savev2_dense_211_kernel_read_readvariableop-
)savev2_dense_211_bias_read_readvariableop<
8savev2_batch_normalization_181_gamma_read_readvariableop;
7savev2_batch_normalization_181_beta_read_readvariableopB
>savev2_batch_normalization_181_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_181_moving_variance_read_readvariableop/
+savev2_dense_212_kernel_read_readvariableop-
)savev2_dense_212_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_207_kernel_m_read_readvariableop4
0savev2_adam_dense_207_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_177_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_177_beta_m_read_readvariableop6
2savev2_adam_dense_208_kernel_m_read_readvariableop4
0savev2_adam_dense_208_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_178_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_178_beta_m_read_readvariableop6
2savev2_adam_dense_209_kernel_m_read_readvariableop4
0savev2_adam_dense_209_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_179_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_179_beta_m_read_readvariableop6
2savev2_adam_dense_210_kernel_m_read_readvariableop4
0savev2_adam_dense_210_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_180_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_180_beta_m_read_readvariableop6
2savev2_adam_dense_211_kernel_m_read_readvariableop4
0savev2_adam_dense_211_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_181_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_181_beta_m_read_readvariableop6
2savev2_adam_dense_212_kernel_m_read_readvariableop4
0savev2_adam_dense_212_bias_m_read_readvariableop6
2savev2_adam_dense_207_kernel_v_read_readvariableop4
0savev2_adam_dense_207_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_177_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_177_beta_v_read_readvariableop6
2savev2_adam_dense_208_kernel_v_read_readvariableop4
0savev2_adam_dense_208_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_178_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_178_beta_v_read_readvariableop6
2savev2_adam_dense_209_kernel_v_read_readvariableop4
0savev2_adam_dense_209_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_179_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_179_beta_v_read_readvariableop6
2savev2_adam_dense_210_kernel_v_read_readvariableop4
0savev2_adam_dense_210_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_180_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_180_beta_v_read_readvariableop6
2savev2_adam_dense_211_kernel_v_read_readvariableop4
0savev2_adam_dense_211_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_181_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_181_beta_v_read_readvariableop6
2savev2_adam_dense_212_kernel_v_read_readvariableop4
0savev2_adam_dense_212_bias_v_read_readvariableop
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
ShardedFilename?.
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:T*
dtype0*?-
value?-B?-TB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:T*
dtype0*?
value?B?TB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?%
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_207_kernel_read_readvariableop)savev2_dense_207_bias_read_readvariableop8savev2_batch_normalization_177_gamma_read_readvariableop7savev2_batch_normalization_177_beta_read_readvariableop>savev2_batch_normalization_177_moving_mean_read_readvariableopBsavev2_batch_normalization_177_moving_variance_read_readvariableop+savev2_dense_208_kernel_read_readvariableop)savev2_dense_208_bias_read_readvariableop8savev2_batch_normalization_178_gamma_read_readvariableop7savev2_batch_normalization_178_beta_read_readvariableop>savev2_batch_normalization_178_moving_mean_read_readvariableopBsavev2_batch_normalization_178_moving_variance_read_readvariableop+savev2_dense_209_kernel_read_readvariableop)savev2_dense_209_bias_read_readvariableop8savev2_batch_normalization_179_gamma_read_readvariableop7savev2_batch_normalization_179_beta_read_readvariableop>savev2_batch_normalization_179_moving_mean_read_readvariableopBsavev2_batch_normalization_179_moving_variance_read_readvariableop+savev2_dense_210_kernel_read_readvariableop)savev2_dense_210_bias_read_readvariableop8savev2_batch_normalization_180_gamma_read_readvariableop7savev2_batch_normalization_180_beta_read_readvariableop>savev2_batch_normalization_180_moving_mean_read_readvariableopBsavev2_batch_normalization_180_moving_variance_read_readvariableop+savev2_dense_211_kernel_read_readvariableop)savev2_dense_211_bias_read_readvariableop8savev2_batch_normalization_181_gamma_read_readvariableop7savev2_batch_normalization_181_beta_read_readvariableop>savev2_batch_normalization_181_moving_mean_read_readvariableopBsavev2_batch_normalization_181_moving_variance_read_readvariableop+savev2_dense_212_kernel_read_readvariableop)savev2_dense_212_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_207_kernel_m_read_readvariableop0savev2_adam_dense_207_bias_m_read_readvariableop?savev2_adam_batch_normalization_177_gamma_m_read_readvariableop>savev2_adam_batch_normalization_177_beta_m_read_readvariableop2savev2_adam_dense_208_kernel_m_read_readvariableop0savev2_adam_dense_208_bias_m_read_readvariableop?savev2_adam_batch_normalization_178_gamma_m_read_readvariableop>savev2_adam_batch_normalization_178_beta_m_read_readvariableop2savev2_adam_dense_209_kernel_m_read_readvariableop0savev2_adam_dense_209_bias_m_read_readvariableop?savev2_adam_batch_normalization_179_gamma_m_read_readvariableop>savev2_adam_batch_normalization_179_beta_m_read_readvariableop2savev2_adam_dense_210_kernel_m_read_readvariableop0savev2_adam_dense_210_bias_m_read_readvariableop?savev2_adam_batch_normalization_180_gamma_m_read_readvariableop>savev2_adam_batch_normalization_180_beta_m_read_readvariableop2savev2_adam_dense_211_kernel_m_read_readvariableop0savev2_adam_dense_211_bias_m_read_readvariableop?savev2_adam_batch_normalization_181_gamma_m_read_readvariableop>savev2_adam_batch_normalization_181_beta_m_read_readvariableop2savev2_adam_dense_212_kernel_m_read_readvariableop0savev2_adam_dense_212_bias_m_read_readvariableop2savev2_adam_dense_207_kernel_v_read_readvariableop0savev2_adam_dense_207_bias_v_read_readvariableop?savev2_adam_batch_normalization_177_gamma_v_read_readvariableop>savev2_adam_batch_normalization_177_beta_v_read_readvariableop2savev2_adam_dense_208_kernel_v_read_readvariableop0savev2_adam_dense_208_bias_v_read_readvariableop?savev2_adam_batch_normalization_178_gamma_v_read_readvariableop>savev2_adam_batch_normalization_178_beta_v_read_readvariableop2savev2_adam_dense_209_kernel_v_read_readvariableop0savev2_adam_dense_209_bias_v_read_readvariableop?savev2_adam_batch_normalization_179_gamma_v_read_readvariableop>savev2_adam_batch_normalization_179_beta_v_read_readvariableop2savev2_adam_dense_210_kernel_v_read_readvariableop0savev2_adam_dense_210_bias_v_read_readvariableop?savev2_adam_batch_normalization_180_gamma_v_read_readvariableop>savev2_adam_batch_normalization_180_beta_v_read_readvariableop2savev2_adam_dense_211_kernel_v_read_readvariableop0savev2_adam_dense_211_bias_v_read_readvariableop?savev2_adam_batch_normalization_181_gamma_v_read_readvariableop>savev2_adam_batch_normalization_181_beta_v_read_readvariableop2savev2_adam_dense_212_kernel_v_read_readvariableop0savev2_adam_dense_212_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *b
dtypesX
V2T	2
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :	?:?:?:?:?:?:	?d:d:d:d:d:d:d2:2:2:2:2:2:2:::::::::::::: : : : : : : :	?:?:?:?:	?d:d:d:d:d2:2:2:2:2::::::::::	?:?:?:?:	?d:d:d:d:d2:2:2:2:2:::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:%!

_output_shapes
:	?d: 

_output_shapes
:d: 	

_output_shapes
:d: 


_output_shapes
:d: 

_output_shapes
:d: 

_output_shapes
:d:$ 

_output_shapes

:d2: 

_output_shapes
:2: 

_output_shapes
:2: 

_output_shapes
:2: 

_output_shapes
:2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

::  

_output_shapes
::!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :%(!

_output_shapes
:	?:!)

_output_shapes	
:?:!*

_output_shapes	
:?:!+

_output_shapes	
:?:%,!

_output_shapes
:	?d: -

_output_shapes
:d: .

_output_shapes
:d: /

_output_shapes
:d:$0 

_output_shapes

:d2: 1

_output_shapes
:2: 2

_output_shapes
:2: 3

_output_shapes
:2:$4 

_output_shapes

:2: 5

_output_shapes
:: 6

_output_shapes
:: 7

_output_shapes
::$8 

_output_shapes

:: 9

_output_shapes
:: :

_output_shapes
:: ;

_output_shapes
::$< 

_output_shapes

:: =

_output_shapes
::%>!

_output_shapes
:	?:!?

_output_shapes	
:?:!@

_output_shapes	
:?:!A

_output_shapes	
:?:%B!

_output_shapes
:	?d: C

_output_shapes
:d: D

_output_shapes
:d: E

_output_shapes
:d:$F 

_output_shapes

:d2: G

_output_shapes
:2: H

_output_shapes
:2: I

_output_shapes
:2:$J 

_output_shapes

:2: K

_output_shapes
:: L

_output_shapes
:: M

_output_shapes
::$N 

_output_shapes

:: O

_output_shapes
:: P

_output_shapes
:: Q

_output_shapes
::$R 

_output_shapes

:: S

_output_shapes
::T

_output_shapes
: 
?
?
8__inference_batch_normalization_179_layer_call_fn_301290

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_179_layer_call_and_return_conditional_losses_2982952
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????22

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????????????2::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_177_layer_call_and_return_conditional_losses_300899

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mul{
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
G__inference_dropout_179_layer_call_and_return_conditional_losses_301397

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????22
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????2*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????22
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????22
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????22
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????22

Identity"
identityIdentity:output:0**
_input_shapes
:?????????2:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

*__inference_dense_212_layer_call_fn_301911

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_212_layer_call_and_return_conditional_losses_2994892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_178_layer_call_fn_301142

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_178_layer_call_and_return_conditional_losses_2988722
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????d::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
.__inference_sequential_30_layer_call_fn_300721

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_30_layer_call_and_return_conditional_losses_2998302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?0
?
S__inference_batch_normalization_177_layer_call_and_return_conditional_losses_298705

inputs
assignmovingavg_298680
assignmovingavg_1_298686)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:?*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/298680*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_298680*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/298680*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/298680*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_298680AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/298680*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/298686*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_298686*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/298686*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/298686*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_298686AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/298686*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mul{
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_178_layer_call_and_return_conditional_losses_298945

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????d2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????d2

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
:?????????d:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_177_layer_call_fn_300925

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_177_layer_call_and_return_conditional_losses_2987252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_180_layer_call_fn_301615

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_2984682
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
E__inference_dense_208_layer_call_and_return_conditional_losses_298821

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?d*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????d2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?0
?
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_301569

inputs
assignmovingavg_301544
assignmovingavg_1_301550)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/301544*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_301544*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/301544*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/301544*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_301544AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/301544*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/301550*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_301550*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/301550*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/301550*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_301550AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/301550*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_181_layer_call_and_return_conditional_losses_299446

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:?????????2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_181_layer_call_fn_301750

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_2985752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_178_layer_call_fn_301155

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_178_layer_call_and_return_conditional_losses_2988922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????d::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
f
G__inference_dropout_178_layer_call_and_return_conditional_losses_298940

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????d2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????d*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????d2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????d2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????d2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????d:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?0
?
S__inference_batch_normalization_178_layer_call_and_return_conditional_losses_301109

inputs
assignmovingavg_301084
assignmovingavg_1_301090)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:d*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:d2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:?????????d2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:d*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/301084*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_301084*
_output_shapes
:d*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/301084*
_output_shapes
:d2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/301084*
_output_shapes
:d2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_301084AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/301084*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/301090*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_301090*
_output_shapes
:d*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/301090*
_output_shapes
:d2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/301090*
_output_shapes
:d2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_301090AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/301090*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:d2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:d2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:?????????d2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:d2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:d2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????d2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????d::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?0
?
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_298575

inputs
assignmovingavg_298550
assignmovingavg_1_298556)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/298550*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_298550*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/298550*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/298550*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_298550AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/298550*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/298556*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_298556*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/298556*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/298556*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_298556AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/298556*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
H
,__inference_dropout_181_layer_call_fn_301872

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_181_layer_call_and_return_conditional_losses_2994462
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
? 
?
E__inference_dense_207_layer_call_and_return_conditional_losses_300752

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:?????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_177_layer_call_fn_300843

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_177_layer_call_and_return_conditional_losses_2980482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:???????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_177_layer_call_fn_300912

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *\
fWRU
S__inference_batch_normalization_177_layer_call_and_return_conditional_losses_2987052
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_dense_208_layer_call_and_return_conditional_losses_300982

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?d*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????d2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
,__inference_dropout_179_layer_call_fn_301407

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_179_layer_call_and_return_conditional_losses_2991072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????22

Identity"
identityIdentity:output:0**
_input_shapes
:?????????222
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
H
,__inference_dropout_179_layer_call_fn_301412

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_179_layer_call_and_return_conditional_losses_2991122
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????22

Identity"
identityIdentity:output:0**
_input_shapes
:?????????2:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
.__inference_sequential_30_layer_call_fn_299897
dense_207_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_207_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_30_layer_call_and_return_conditional_losses_2998302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:?????????
)
_user_specified_namedense_207_input
?0
?
S__inference_batch_normalization_179_layer_call_and_return_conditional_losses_301257

inputs
assignmovingavg_301232
assignmovingavg_1_301238)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:2*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:22
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????22
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:2*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:2*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:2*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/301232*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_301232*
_output_shapes
:2*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/301232*
_output_shapes
:22
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/301232*
_output_shapes
:22
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_301232AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/301232*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/301238*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_301238*
_output_shapes
:2*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/301238*
_output_shapes
:22
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/301238*
_output_shapes
:22
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_301238AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/301238*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:22
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:22
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:22
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????22
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:22
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:22
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????22
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????22

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????????????2::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?0
?
S__inference_batch_normalization_178_layer_call_and_return_conditional_losses_301027

inputs
assignmovingavg_301002
assignmovingavg_1_301008)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:d*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:d2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????d2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:d*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/301002*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_301002*
_output_shapes
:d*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/301002*
_output_shapes
:d2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/301002*
_output_shapes
:d2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_301002AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/301002*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/301008*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_301008*
_output_shapes
:d*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/301008*
_output_shapes
:d2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/301008*
_output_shapes
:d2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_301008AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/301008*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:d2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:d2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????d2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:d2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:d2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????d2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????d2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????????????d::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
E__inference_dense_210_layer_call_and_return_conditional_losses_299155

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:2*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:?????????22
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*2
_input_shapes!
:?????????2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_179_layer_call_and_return_conditional_losses_299059

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:22
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:22
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:22
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:?????????22
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:2*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:22
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:2*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:22
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????22
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????2::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?0
?
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_301799

inputs
assignmovingavg_301774
assignmovingavg_1_301780)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:?????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/301774*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_301774*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/301774*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/301774*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_301774AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/301774*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/301780*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_301780*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/301780*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/301780*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_301780AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/301780*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:?????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_179_layer_call_and_return_conditional_losses_301277

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:22
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:22
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:22
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????22
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:2*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:22
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:2*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:22
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????22
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????22

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????????????2::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_178_layer_call_and_return_conditional_losses_298892

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:d2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:d2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:?????????d2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:d2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:d2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????d2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????d::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_301589

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:??????????????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?0
?
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_299373

inputs
assignmovingavg_299348
assignmovingavg_1_299354)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:?????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/299348*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_299348*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/299348*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/299348*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_299348AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/299348*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/299354*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_299354*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/299354*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/299354*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_299354AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/299354*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:?????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
H
,__inference_dropout_177_layer_call_fn_300952

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_177_layer_call_and_return_conditional_losses_2987782
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
G__inference_dropout_181_layer_call_and_return_conditional_losses_299441

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:?????????*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:?????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:?????????2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:?????????2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?0
?
S__inference_batch_normalization_179_layer_call_and_return_conditional_losses_301339

inputs
assignmovingavg_301314
assignmovingavg_1_301320)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:2*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:22
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:?????????22
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:2*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:2*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:2*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/301314*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_301314*
_output_shapes
:2*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/301314*
_output_shapes
:22
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/301314*
_output_shapes
:22
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_301314AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/301314*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/301320*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_301320*
_output_shapes
:2*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/301320*
_output_shapes
:22
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/301320*
_output_shapes
:22
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_301320AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/301320*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:22
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:22
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:2*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:22
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:?????????22
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:22
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:2*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:22
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:?????????22
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*:
_input_shapes)
':?????????2::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
O
dense_207_input<
!serving_default_dense_207_input:0?????????A
	dense_2124
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?p
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"?k
_tf_keras_sequential?j{"class_name": "Sequential", "name": "sequential_30", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_30", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 6]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_207_input"}}, {"class_name": "Dense", "config": {"name": "dense_207", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 6]}, "dtype": "float32", "units": 300, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_177", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_177", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_208", "trainable": true, "dtype": "float32", "units": 100, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_178", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_178", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_209", "trainable": true, "dtype": "float32", "units": 50, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_179", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_179", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_210", "trainable": true, "dtype": "float32", "units": 30, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_180", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_180", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_211", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_181", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_181", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_212", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 6}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 6]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_30", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 6]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_207_input"}}, {"class_name": "Dense", "config": {"name": "dense_207", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 6]}, "dtype": "float32", "units": 300, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_177", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_177", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_208", "trainable": true, "dtype": "float32", "units": 100, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_178", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_178", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_209", "trainable": true, "dtype": "float32", "units": 50, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_179", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_179", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_210", "trainable": true, "dtype": "float32", "units": 30, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_180", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_180", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_211", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_181", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_181", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_212", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "mae", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.009999999776482582, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_207", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 6]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_207", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 24, 6]}, "dtype": "float32", "units": 300, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 6}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 6]}}
?	
axis
	gamma
beta
 moving_mean
!moving_variance
"regularization_losses
#trainable_variables
$	variables
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_177", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_177", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"2": 300}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 300]}}
?
&regularization_losses
'trainable_variables
(	variables
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_177", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_177", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
?

*kernel
+bias
,regularization_losses
-trainable_variables
.	variables
/	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_208", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_208", "trainable": true, "dtype": "float32", "units": 100, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 300}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 300]}}
?	
0axis
	1gamma
2beta
3moving_mean
4moving_variance
5regularization_losses
6trainable_variables
7	variables
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_178", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_178", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"2": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 100]}}
?
9regularization_losses
:trainable_variables
;	variables
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_178", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_178", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
?

=kernel
>bias
?regularization_losses
@trainable_variables
A	variables
B	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_209", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_209", "trainable": true, "dtype": "float32", "units": 50, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 100]}}
?	
Caxis
	Dgamma
Ebeta
Fmoving_mean
Gmoving_variance
Hregularization_losses
Itrainable_variables
J	variables
K	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_179", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_179", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"2": 50}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 50]}}
?
Lregularization_losses
Mtrainable_variables
N	variables
O	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_179", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_179", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
?

Pkernel
Qbias
Rregularization_losses
Strainable_variables
T	variables
U	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_210", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_210", "trainable": true, "dtype": "float32", "units": 30, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 50]}}
?	
Vaxis
	Wgamma
Xbeta
Ymoving_mean
Zmoving_variance
[regularization_losses
\trainable_variables
]	variables
^	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_180", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_180", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"2": 30}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 30]}}
?
_regularization_losses
`trainable_variables
a	variables
b	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_180", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_180", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
?

ckernel
dbias
eregularization_losses
ftrainable_variables
g	variables
h	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_211", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_211", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 30}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 30]}}
?	
iaxis
	jgamma
kbeta
lmoving_mean
mmoving_variance
nregularization_losses
otrainable_variables
p	variables
q	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_181", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_181", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"2": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 3]}}
?
rregularization_losses
strainable_variables
t	variables
u	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_181", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_181", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
?

vkernel
wbias
xregularization_losses
ytrainable_variables
z	variables
{	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_212", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_212", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24, 3]}}
?
|iter

}beta_1

~beta_2
	decay
?learning_ratem?m?m?m?*m?+m?1m?2m?=m?>m?Dm?Em?Pm?Qm?Wm?Xm?cm?dm?jm?km?vm?wm?v?v?v?v?*v?+v?1v?2v?=v?>v?Dv?Ev?Pv?Qv?Wv?Xv?cv?dv?jv?kv?vv?wv?"
	optimizer
 "
trackable_list_wrapper
?
0
1
2
3
*4
+5
16
27
=8
>9
D10
E11
P12
Q13
W14
X15
c16
d17
j18
k19
v20
w21"
trackable_list_wrapper
?
0
1
2
3
 4
!5
*6
+7
18
29
310
411
=12
>13
D14
E15
F16
G17
P18
Q19
W20
X21
Y22
Z23
c24
d25
j26
k27
l28
m29
v30
w31"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
regularization_losses
trainable_variables
	variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
#:!	?2dense_207/kernel
:?2dense_207/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
regularization_losses
trainable_variables
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:*?2batch_normalization_177/gamma
+:)?2batch_normalization_177/beta
4:2? (2#batch_normalization_177/moving_mean
8:6? (2'batch_normalization_177/moving_variance
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
<
0
1
 2
!3"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
"regularization_losses
#trainable_variables
$	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
&regularization_losses
'trainable_variables
(	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!	?d2dense_208/kernel
:d2dense_208/bias
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
,regularization_losses
-trainable_variables
.	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)d2batch_normalization_178/gamma
*:(d2batch_normalization_178/beta
3:1d (2#batch_normalization_178/moving_mean
7:5d (2'batch_normalization_178/moving_variance
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
<
10
21
32
43"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
5regularization_losses
6trainable_variables
7	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
9regularization_losses
:trainable_variables
;	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": d22dense_209/kernel
:22dense_209/bias
 "
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?regularization_losses
@trainable_variables
A	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)22batch_normalization_179/gamma
*:(22batch_normalization_179/beta
3:12 (2#batch_normalization_179/moving_mean
7:52 (2'batch_normalization_179/moving_variance
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
<
D0
E1
F2
G3"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Hregularization_losses
Itrainable_variables
J	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Lregularization_losses
Mtrainable_variables
N	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 22dense_210/kernel
:2dense_210/bias
 "
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Rregularization_losses
Strainable_variables
T	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)2batch_normalization_180/gamma
*:(2batch_normalization_180/beta
3:1 (2#batch_normalization_180/moving_mean
7:5 (2'batch_normalization_180/moving_variance
 "
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
<
W0
X1
Y2
Z3"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
[regularization_losses
\trainable_variables
]	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
_regularization_losses
`trainable_variables
a	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 2dense_211/kernel
:2dense_211/bias
 "
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
eregularization_losses
ftrainable_variables
g	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)2batch_normalization_181/gamma
*:(2batch_normalization_181/beta
3:1 (2#batch_normalization_181/moving_mean
7:5 (2'batch_normalization_181/moving_variance
 "
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
<
j0
k1
l2
m3"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
nregularization_losses
otrainable_variables
p	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
rregularization_losses
strainable_variables
t	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 2dense_212/kernel
:2dense_212/bias
 "
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
xregularization_losses
ytrainable_variables
z	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
f
 0
!1
32
43
F4
G5
Y6
Z7
l8
m9"
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15"
trackable_list_wrapper
(
?0"
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
.
 0
!1"
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
.
30
41"
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
.
F0
G1"
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
.
Y0
Z1"
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
.
l0
m1"
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
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
(:&	?2Adam/dense_207/kernel/m
": ?2Adam/dense_207/bias/m
1:/?2$Adam/batch_normalization_177/gamma/m
0:.?2#Adam/batch_normalization_177/beta/m
(:&	?d2Adam/dense_208/kernel/m
!:d2Adam/dense_208/bias/m
0:.d2$Adam/batch_normalization_178/gamma/m
/:-d2#Adam/batch_normalization_178/beta/m
':%d22Adam/dense_209/kernel/m
!:22Adam/dense_209/bias/m
0:.22$Adam/batch_normalization_179/gamma/m
/:-22#Adam/batch_normalization_179/beta/m
':%22Adam/dense_210/kernel/m
!:2Adam/dense_210/bias/m
0:.2$Adam/batch_normalization_180/gamma/m
/:-2#Adam/batch_normalization_180/beta/m
':%2Adam/dense_211/kernel/m
!:2Adam/dense_211/bias/m
0:.2$Adam/batch_normalization_181/gamma/m
/:-2#Adam/batch_normalization_181/beta/m
':%2Adam/dense_212/kernel/m
!:2Adam/dense_212/bias/m
(:&	?2Adam/dense_207/kernel/v
": ?2Adam/dense_207/bias/v
1:/?2$Adam/batch_normalization_177/gamma/v
0:.?2#Adam/batch_normalization_177/beta/v
(:&	?d2Adam/dense_208/kernel/v
!:d2Adam/dense_208/bias/v
0:.d2$Adam/batch_normalization_178/gamma/v
/:-d2#Adam/batch_normalization_178/beta/v
':%d22Adam/dense_209/kernel/v
!:22Adam/dense_209/bias/v
0:.22$Adam/batch_normalization_179/gamma/v
/:-22#Adam/batch_normalization_179/beta/v
':%22Adam/dense_210/kernel/v
!:2Adam/dense_210/bias/v
0:.2$Adam/batch_normalization_180/gamma/v
/:-2#Adam/batch_normalization_180/beta/v
':%2Adam/dense_211/kernel/v
!:2Adam/dense_211/bias/v
0:.2$Adam/batch_normalization_181/gamma/v
/:-2#Adam/batch_normalization_181/beta/v
':%2Adam/dense_212/kernel/v
!:2Adam/dense_212/bias/v
?2?
.__inference_sequential_30_layer_call_fn_299897
.__inference_sequential_30_layer_call_fn_300652
.__inference_sequential_30_layer_call_fn_300721
.__inference_sequential_30_layer_call_fn_299744?
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
?2?
I__inference_sequential_30_layer_call_and_return_conditional_losses_299506
I__inference_sequential_30_layer_call_and_return_conditional_losses_300337
I__inference_sequential_30_layer_call_and_return_conditional_losses_299590
I__inference_sequential_30_layer_call_and_return_conditional_losses_300583?
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
!__inference__wrapped_model_297919?
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
annotations? *2?/
-?*
dense_207_input?????????
?2?
*__inference_dense_207_layer_call_fn_300761?
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
?2?
E__inference_dense_207_layer_call_and_return_conditional_losses_300752?
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
?2?
8__inference_batch_normalization_177_layer_call_fn_300912
8__inference_batch_normalization_177_layer_call_fn_300925
8__inference_batch_normalization_177_layer_call_fn_300830
8__inference_batch_normalization_177_layer_call_fn_300843?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
S__inference_batch_normalization_177_layer_call_and_return_conditional_losses_300797
S__inference_batch_normalization_177_layer_call_and_return_conditional_losses_300879
S__inference_batch_normalization_177_layer_call_and_return_conditional_losses_300817
S__inference_batch_normalization_177_layer_call_and_return_conditional_losses_300899?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_dropout_177_layer_call_fn_300947
,__inference_dropout_177_layer_call_fn_300952?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_177_layer_call_and_return_conditional_losses_300942
G__inference_dropout_177_layer_call_and_return_conditional_losses_300937?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dense_208_layer_call_fn_300991?
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
?2?
E__inference_dense_208_layer_call_and_return_conditional_losses_300982?
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
?2?
8__inference_batch_normalization_178_layer_call_fn_301073
8__inference_batch_normalization_178_layer_call_fn_301060
8__inference_batch_normalization_178_layer_call_fn_301142
8__inference_batch_normalization_178_layer_call_fn_301155?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
S__inference_batch_normalization_178_layer_call_and_return_conditional_losses_301129
S__inference_batch_normalization_178_layer_call_and_return_conditional_losses_301109
S__inference_batch_normalization_178_layer_call_and_return_conditional_losses_301027
S__inference_batch_normalization_178_layer_call_and_return_conditional_losses_301047?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_dropout_178_layer_call_fn_301182
,__inference_dropout_178_layer_call_fn_301177?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_178_layer_call_and_return_conditional_losses_301172
G__inference_dropout_178_layer_call_and_return_conditional_losses_301167?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dense_209_layer_call_fn_301221?
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
?2?
E__inference_dense_209_layer_call_and_return_conditional_losses_301212?
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
?2?
8__inference_batch_normalization_179_layer_call_fn_301290
8__inference_batch_normalization_179_layer_call_fn_301385
8__inference_batch_normalization_179_layer_call_fn_301303
8__inference_batch_normalization_179_layer_call_fn_301372?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
S__inference_batch_normalization_179_layer_call_and_return_conditional_losses_301257
S__inference_batch_normalization_179_layer_call_and_return_conditional_losses_301359
S__inference_batch_normalization_179_layer_call_and_return_conditional_losses_301277
S__inference_batch_normalization_179_layer_call_and_return_conditional_losses_301339?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_dropout_179_layer_call_fn_301412
,__inference_dropout_179_layer_call_fn_301407?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_179_layer_call_and_return_conditional_losses_301402
G__inference_dropout_179_layer_call_and_return_conditional_losses_301397?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dense_210_layer_call_fn_301451?
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
?2?
E__inference_dense_210_layer_call_and_return_conditional_losses_301442?
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
?2?
8__inference_batch_normalization_180_layer_call_fn_301602
8__inference_batch_normalization_180_layer_call_fn_301615
8__inference_batch_normalization_180_layer_call_fn_301520
8__inference_batch_normalization_180_layer_call_fn_301533?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_301569
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_301507
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_301589
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_301487?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_dropout_180_layer_call_fn_301642
,__inference_dropout_180_layer_call_fn_301637?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_180_layer_call_and_return_conditional_losses_301627
G__inference_dropout_180_layer_call_and_return_conditional_losses_301632?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dense_211_layer_call_fn_301681?
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
?2?
E__inference_dense_211_layer_call_and_return_conditional_losses_301672?
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
?2?
8__inference_batch_normalization_181_layer_call_fn_301832
8__inference_batch_normalization_181_layer_call_fn_301845
8__inference_batch_normalization_181_layer_call_fn_301763
8__inference_batch_normalization_181_layer_call_fn_301750?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_301717
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_301819
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_301737
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_301799?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_dropout_181_layer_call_fn_301867
,__inference_dropout_181_layer_call_fn_301872?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_181_layer_call_and_return_conditional_losses_301857
G__inference_dropout_181_layer_call_and_return_conditional_losses_301862?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dense_212_layer_call_fn_301911?
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
?2?
E__inference_dense_212_layer_call_and_return_conditional_losses_301902?
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
?B?
$__inference_signature_wrapper_299976dense_207_input"?
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
 ?
!__inference__wrapped_model_297919? ! *+4132=>GDFEPQZWYXcdmjlkvw<?9
2?/
-?*
dense_207_input?????????
? "9?6
4
	dense_212'?$
	dense_212??????????
S__inference_batch_normalization_177_layer_call_and_return_conditional_losses_300797~ !A?>
7?4
.?+
inputs???????????????????
p
? "3?0
)?&
0???????????????????
? ?
S__inference_batch_normalization_177_layer_call_and_return_conditional_losses_300817~! A?>
7?4
.?+
inputs???????????????????
p 
? "3?0
)?&
0???????????????????
? ?
S__inference_batch_normalization_177_layer_call_and_return_conditional_losses_300879l !8?5
.?+
%?"
inputs??????????
p
? "*?'
 ?
0??????????
? ?
S__inference_batch_normalization_177_layer_call_and_return_conditional_losses_300899l! 8?5
.?+
%?"
inputs??????????
p 
? "*?'
 ?
0??????????
? ?
8__inference_batch_normalization_177_layer_call_fn_300830q !A?>
7?4
.?+
inputs???????????????????
p
? "&?#????????????????????
8__inference_batch_normalization_177_layer_call_fn_300843q! A?>
7?4
.?+
inputs???????????????????
p 
? "&?#????????????????????
8__inference_batch_normalization_177_layer_call_fn_300912_ !8?5
.?+
%?"
inputs??????????
p
? "????????????
8__inference_batch_normalization_177_layer_call_fn_300925_! 8?5
.?+
%?"
inputs??????????
p 
? "????????????
S__inference_batch_normalization_178_layer_call_and_return_conditional_losses_301027|3412@?=
6?3
-?*
inputs??????????????????d
p
? "2?/
(?%
0??????????????????d
? ?
S__inference_batch_normalization_178_layer_call_and_return_conditional_losses_301047|4132@?=
6?3
-?*
inputs??????????????????d
p 
? "2?/
(?%
0??????????????????d
? ?
S__inference_batch_normalization_178_layer_call_and_return_conditional_losses_301109j34127?4
-?*
$?!
inputs?????????d
p
? ")?&
?
0?????????d
? ?
S__inference_batch_normalization_178_layer_call_and_return_conditional_losses_301129j41327?4
-?*
$?!
inputs?????????d
p 
? ")?&
?
0?????????d
? ?
8__inference_batch_normalization_178_layer_call_fn_301060o3412@?=
6?3
-?*
inputs??????????????????d
p
? "%?"??????????????????d?
8__inference_batch_normalization_178_layer_call_fn_301073o4132@?=
6?3
-?*
inputs??????????????????d
p 
? "%?"??????????????????d?
8__inference_batch_normalization_178_layer_call_fn_301142]34127?4
-?*
$?!
inputs?????????d
p
? "??????????d?
8__inference_batch_normalization_178_layer_call_fn_301155]41327?4
-?*
$?!
inputs?????????d
p 
? "??????????d?
S__inference_batch_normalization_179_layer_call_and_return_conditional_losses_301257|FGDE@?=
6?3
-?*
inputs??????????????????2
p
? "2?/
(?%
0??????????????????2
? ?
S__inference_batch_normalization_179_layer_call_and_return_conditional_losses_301277|GDFE@?=
6?3
-?*
inputs??????????????????2
p 
? "2?/
(?%
0??????????????????2
? ?
S__inference_batch_normalization_179_layer_call_and_return_conditional_losses_301339jFGDE7?4
-?*
$?!
inputs?????????2
p
? ")?&
?
0?????????2
? ?
S__inference_batch_normalization_179_layer_call_and_return_conditional_losses_301359jGDFE7?4
-?*
$?!
inputs?????????2
p 
? ")?&
?
0?????????2
? ?
8__inference_batch_normalization_179_layer_call_fn_301290oFGDE@?=
6?3
-?*
inputs??????????????????2
p
? "%?"??????????????????2?
8__inference_batch_normalization_179_layer_call_fn_301303oGDFE@?=
6?3
-?*
inputs??????????????????2
p 
? "%?"??????????????????2?
8__inference_batch_normalization_179_layer_call_fn_301372]FGDE7?4
-?*
$?!
inputs?????????2
p
? "??????????2?
8__inference_batch_normalization_179_layer_call_fn_301385]GDFE7?4
-?*
$?!
inputs?????????2
p 
? "??????????2?
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_301487jYZWX7?4
-?*
$?!
inputs?????????
p
? ")?&
?
0?????????
? ?
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_301507jZWYX7?4
-?*
$?!
inputs?????????
p 
? ")?&
?
0?????????
? ?
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_301569|YZWX@?=
6?3
-?*
inputs??????????????????
p
? "2?/
(?%
0??????????????????
? ?
S__inference_batch_normalization_180_layer_call_and_return_conditional_losses_301589|ZWYX@?=
6?3
-?*
inputs??????????????????
p 
? "2?/
(?%
0??????????????????
? ?
8__inference_batch_normalization_180_layer_call_fn_301520]YZWX7?4
-?*
$?!
inputs?????????
p
? "???????????
8__inference_batch_normalization_180_layer_call_fn_301533]ZWYX7?4
-?*
$?!
inputs?????????
p 
? "???????????
8__inference_batch_normalization_180_layer_call_fn_301602oYZWX@?=
6?3
-?*
inputs??????????????????
p
? "%?"???????????????????
8__inference_batch_normalization_180_layer_call_fn_301615oZWYX@?=
6?3
-?*
inputs??????????????????
p 
? "%?"???????????????????
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_301717|lmjk@?=
6?3
-?*
inputs??????????????????
p
? "2?/
(?%
0??????????????????
? ?
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_301737|mjlk@?=
6?3
-?*
inputs??????????????????
p 
? "2?/
(?%
0??????????????????
? ?
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_301799jlmjk7?4
-?*
$?!
inputs?????????
p
? ")?&
?
0?????????
? ?
S__inference_batch_normalization_181_layer_call_and_return_conditional_losses_301819jmjlk7?4
-?*
$?!
inputs?????????
p 
? ")?&
?
0?????????
? ?
8__inference_batch_normalization_181_layer_call_fn_301750olmjk@?=
6?3
-?*
inputs??????????????????
p
? "%?"???????????????????
8__inference_batch_normalization_181_layer_call_fn_301763omjlk@?=
6?3
-?*
inputs??????????????????
p 
? "%?"???????????????????
8__inference_batch_normalization_181_layer_call_fn_301832]lmjk7?4
-?*
$?!
inputs?????????
p
? "???????????
8__inference_batch_normalization_181_layer_call_fn_301845]mjlk7?4
-?*
$?!
inputs?????????
p 
? "???????????
E__inference_dense_207_layer_call_and_return_conditional_losses_300752e3?0
)?&
$?!
inputs?????????
? "*?'
 ?
0??????????
? ?
*__inference_dense_207_layer_call_fn_300761X3?0
)?&
$?!
inputs?????????
? "????????????
E__inference_dense_208_layer_call_and_return_conditional_losses_300982e*+4?1
*?'
%?"
inputs??????????
? ")?&
?
0?????????d
? ?
*__inference_dense_208_layer_call_fn_300991X*+4?1
*?'
%?"
inputs??????????
? "??????????d?
E__inference_dense_209_layer_call_and_return_conditional_losses_301212d=>3?0
)?&
$?!
inputs?????????d
? ")?&
?
0?????????2
? ?
*__inference_dense_209_layer_call_fn_301221W=>3?0
)?&
$?!
inputs?????????d
? "??????????2?
E__inference_dense_210_layer_call_and_return_conditional_losses_301442dPQ3?0
)?&
$?!
inputs?????????2
? ")?&
?
0?????????
? ?
*__inference_dense_210_layer_call_fn_301451WPQ3?0
)?&
$?!
inputs?????????2
? "???????????
E__inference_dense_211_layer_call_and_return_conditional_losses_301672dcd3?0
)?&
$?!
inputs?????????
? ")?&
?
0?????????
? ?
*__inference_dense_211_layer_call_fn_301681Wcd3?0
)?&
$?!
inputs?????????
? "???????????
E__inference_dense_212_layer_call_and_return_conditional_losses_301902dvw3?0
)?&
$?!
inputs?????????
? ")?&
?
0?????????
? ?
*__inference_dense_212_layer_call_fn_301911Wvw3?0
)?&
$?!
inputs?????????
? "???????????
G__inference_dropout_177_layer_call_and_return_conditional_losses_300937f8?5
.?+
%?"
inputs??????????
p
? "*?'
 ?
0??????????
? ?
G__inference_dropout_177_layer_call_and_return_conditional_losses_300942f8?5
.?+
%?"
inputs??????????
p 
? "*?'
 ?
0??????????
? ?
,__inference_dropout_177_layer_call_fn_300947Y8?5
.?+
%?"
inputs??????????
p
? "????????????
,__inference_dropout_177_layer_call_fn_300952Y8?5
.?+
%?"
inputs??????????
p 
? "????????????
G__inference_dropout_178_layer_call_and_return_conditional_losses_301167d7?4
-?*
$?!
inputs?????????d
p
? ")?&
?
0?????????d
? ?
G__inference_dropout_178_layer_call_and_return_conditional_losses_301172d7?4
-?*
$?!
inputs?????????d
p 
? ")?&
?
0?????????d
? ?
,__inference_dropout_178_layer_call_fn_301177W7?4
-?*
$?!
inputs?????????d
p
? "??????????d?
,__inference_dropout_178_layer_call_fn_301182W7?4
-?*
$?!
inputs?????????d
p 
? "??????????d?
G__inference_dropout_179_layer_call_and_return_conditional_losses_301397d7?4
-?*
$?!
inputs?????????2
p
? ")?&
?
0?????????2
? ?
G__inference_dropout_179_layer_call_and_return_conditional_losses_301402d7?4
-?*
$?!
inputs?????????2
p 
? ")?&
?
0?????????2
? ?
,__inference_dropout_179_layer_call_fn_301407W7?4
-?*
$?!
inputs?????????2
p
? "??????????2?
,__inference_dropout_179_layer_call_fn_301412W7?4
-?*
$?!
inputs?????????2
p 
? "??????????2?
G__inference_dropout_180_layer_call_and_return_conditional_losses_301627d7?4
-?*
$?!
inputs?????????
p
? ")?&
?
0?????????
? ?
G__inference_dropout_180_layer_call_and_return_conditional_losses_301632d7?4
-?*
$?!
inputs?????????
p 
? ")?&
?
0?????????
? ?
,__inference_dropout_180_layer_call_fn_301637W7?4
-?*
$?!
inputs?????????
p
? "???????????
,__inference_dropout_180_layer_call_fn_301642W7?4
-?*
$?!
inputs?????????
p 
? "???????????
G__inference_dropout_181_layer_call_and_return_conditional_losses_301857d7?4
-?*
$?!
inputs?????????
p
? ")?&
?
0?????????
? ?
G__inference_dropout_181_layer_call_and_return_conditional_losses_301862d7?4
-?*
$?!
inputs?????????
p 
? ")?&
?
0?????????
? ?
,__inference_dropout_181_layer_call_fn_301867W7?4
-?*
$?!
inputs?????????
p
? "???????????
,__inference_dropout_181_layer_call_fn_301872W7?4
-?*
$?!
inputs?????????
p 
? "???????????
I__inference_sequential_30_layer_call_and_return_conditional_losses_299506?  !*+3412=>FGDEPQYZWXcdlmjkvwD?A
:?7
-?*
dense_207_input?????????
p

 
? ")?&
?
0?????????
? ?
I__inference_sequential_30_layer_call_and_return_conditional_losses_299590? ! *+4132=>GDFEPQZWYXcdmjlkvwD?A
:?7
-?*
dense_207_input?????????
p 

 
? ")?&
?
0?????????
? ?
I__inference_sequential_30_layer_call_and_return_conditional_losses_300337?  !*+3412=>FGDEPQYZWXcdlmjkvw;?8
1?.
$?!
inputs?????????
p

 
? ")?&
?
0?????????
? ?
I__inference_sequential_30_layer_call_and_return_conditional_losses_300583? ! *+4132=>GDFEPQZWYXcdmjlkvw;?8
1?.
$?!
inputs?????????
p 

 
? ")?&
?
0?????????
? ?
.__inference_sequential_30_layer_call_fn_299744?  !*+3412=>FGDEPQYZWXcdlmjkvwD?A
:?7
-?*
dense_207_input?????????
p

 
? "???????????
.__inference_sequential_30_layer_call_fn_299897? ! *+4132=>GDFEPQZWYXcdmjlkvwD?A
:?7
-?*
dense_207_input?????????
p 

 
? "???????????
.__inference_sequential_30_layer_call_fn_300652}  !*+3412=>FGDEPQYZWXcdlmjkvw;?8
1?.
$?!
inputs?????????
p

 
? "???????????
.__inference_sequential_30_layer_call_fn_300721} ! *+4132=>GDFEPQZWYXcdmjlkvw;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
$__inference_signature_wrapper_299976? ! *+4132=>GDFEPQZWYXcdmjlkvwO?L
? 
E?B
@
dense_207_input-?*
dense_207_input?????????"9?6
4
	dense_212'?$
	dense_212?????????