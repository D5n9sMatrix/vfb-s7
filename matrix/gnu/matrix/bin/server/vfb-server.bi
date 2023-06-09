/'
We make no distinction between these two notations, although in some con-
texts we think of a vector as a “column”, so the ﬁrst notation may be more
natural. The simplicity of the second notation recommends it for common use.
'/
Declare Function column ( ByRef WebGraphic As Integer, ByRef WebDesign As Integer, ByRef WebForm As Integer) As Integer

Type WebDesign
    Dim WebDesignTypes As Integer
End Type 

Type WebDesign
    Dim WebDesignEvent As Integer
End Type 

Type WebForm
    Dim WebFormObj As Integer
End Type


# If __FB_LANG__ = "fb"
Namespace FBC
# endif

Const FB_MAXDIMENSIONS As Integer = 8

Type FBARRAYDIM
    Dim As UInteger elements     '' number of elements
    Dim As Integer LBound        '' dimension lower bound
    Dim As Integer UBound        '' dimension upper bound
End Type

Const FBARRAY_FLAGS_DIMENSIONS = &h0000000f    '' number of entries allocated in dimTb()
Const FBARRAY_FLAGS_FIXED_DIM  = &h00000010    '' array has fixed number of dimensions
Const FBARRAY_FLAGS_FIXED_LEN  = &h00000020    '' array points to fixed-length memory
Const FBARRAY_FLAGS_RESERVED   = &hffffffc0    '' reserved, do not use

Type FBARRAY
    Dim As Any Ptr index_ptr     '' @array(0, 0, 0, ... )
    Dim As Any Ptr base_ptr      '' start of memory at array lowest bounds
    Dim As UInteger size         '' byte size of allocated contents
    Dim As UInteger element_len  '' byte size of single element
    Dim As UInteger dimensions   '' number of dimensions
    Dim As UInteger flags        '' FBARRAY_FLAGS_*

    '' take care with number of dimensions; fbc may allocate
    '' a smaller descriptor with fewer than FB_MAXDIMENSIONS
    '' in dimTb() if it is known at compile time that they
    '' are never needed.  Always respect number of
    '' dimensions when accessing dimTb()

    Dim As FBARRAYDIM dimTb(0 To FB_MAXDIMENSIONS-1)
End Type

Extern "rtlib"
    Declare Function ArrayDescriptorPtr Alias "fb_ArrayGetDesc" _
        ( array() As Any ) As FBC.FBARRAY Ptr
    Declare Function ArrayConstDescriptorPtr Alias "fb_ArrayGetDesc" _
        ( array() As Const Any ) As Const FBC.FBARRAY Ptr
End Extern

# If __FB_LANG__ = "fb"
End Namespace
# endif
