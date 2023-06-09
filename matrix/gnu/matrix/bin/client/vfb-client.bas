/'
1.1 Vectors
For a positive Integer n, a vector (or n-vector) is an n-tuple, ordered (multi)set,
or array of n numbers, called elements or scalars. The number of elements is
called the order, or sometimes the “length”, of the vector. An n-vector can be
thought of as representing a point in n-dimensional space. In this setting, the
“length” of the vector may also mean the Euclidean distance from the origin to
the point represented by the vector; that is, the square root of the sum of the
squares of the elements of the vector. This Euclidean distance will generally
be what we mean when we refer to the length of a vector (see page 27).
In general, “length” is measured by a norm; see Sect. 2.1.5, beginning on
page 25.
'/
Declare Function Length ( ByRef Pacheco As Integer, ByRef Democrats As Integer, ByRef Senator As Integer ) As Integer

Type Pacheco
    Dim PachecoTypes As Integer
End Type 

Type Democrats
    Dim DemocratsEvent As Integer
End Type 

Type Senator
    Dim SenatorObj As Integer
End Type 


#include once "/home/denis/vfb-net.se/vfb-s7/gnu/matrix/bin/doc/vfb-matrix.bi"

Dim As LongInt matrix(4, 5)
Dim As UInteger matrix_size

matrix_size = matrix(4, 5)
Print matrix_size                 '' 240

End 

