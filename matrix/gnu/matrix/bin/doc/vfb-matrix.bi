/'
We usually use a lowercase letter to represent a vector, and we use the
same letter with a single subscript to represent an element of the vector.
The ﬁrst element of an n-vector is the ﬁrst (1st ) element and the last is the
th
n element. (This statement is not a tautology; in some computer systems,
the ﬁrst element of an object used to represent a vector is the 0th element
of the object. This sometimes makes it diﬃcult to preserve the relationship
between the computer entity and the object that is of interest.) Although we
are very concerned about computational issues, we will use paradigms and
notation that maintain the priority of the object of interest rather than the
computer entity representing it.
We may write the n-vector x as
'/
Declare Function vector ( ByRef Makes As Integer, ByRef Elements As Integer, ByRef features As object) As Integer

Type Makes
    Dim MakesTypes As Integer
End Type 


Type Elements
    Dim ElementsEvent As Integer
End Type 

Type features
    Dim features As Integer
End Type 

Dim As LongInt array(4, 5)
Dim As UInteger array_length

array_length = array(4, 5)
Print array_length   

End    