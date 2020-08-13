VERSION 5.00
Begin VB.Form Form3 
   Caption         =   "Alumnos"
   ClientHeight    =   12300
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   10515
   LinkTopic       =   "Form4"
   ScaleHeight     =   12300
   ScaleWidth      =   10515
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text4 
      Height          =   615
      Left            =   4440
      TabIndex        =   17
      Top             =   2880
      Width           =   4575
   End
   Begin VB.TextBox Text1 
      Height          =   615
      Left            =   4440
      TabIndex        =   16
      Top             =   720
      Width           =   4575
   End
   Begin VB.CommandButton Command6 
      Caption         =   "SALIR"
      Height          =   615
      Left            =   240
      TabIndex        =   15
      Top             =   11520
      Width           =   2655
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Limpiar"
      Height          =   615
      Left            =   7680
      TabIndex        =   14
      Top             =   11520
      Width           =   2655
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Total Ingresado"
      Height          =   615
      Left            =   7680
      TabIndex        =   13
      Top             =   10800
      Width           =   2655
   End
   Begin VB.CommandButton Command3 
      Caption         =   "VOLVER"
      Height          =   495
      Left            =   240
      TabIndex        =   12
      Top             =   10920
      Width           =   2655
   End
   Begin VB.CommandButton Command2 
      Caption         =   "ELIMINAR ITEM"
      Height          =   615
      Left            =   7560
      TabIndex        =   11
      Top             =   9120
      Width           =   2655
   End
   Begin VB.ListBox List4 
      Height          =   2790
      Left            =   7800
      TabIndex        =   10
      Top             =   6120
      Width           =   2055
   End
   Begin VB.ListBox List3 
      Height          =   2790
      Left            =   5400
      TabIndex        =   9
      Top             =   6120
      Width           =   2055
   End
   Begin VB.ListBox List2 
      Height          =   2790
      Left            =   2880
      TabIndex        =   8
      Top             =   6120
      Width           =   2175
   End
   Begin VB.ListBox List1 
      Height          =   2790
      Left            =   360
      TabIndex        =   7
      Top             =   6120
      Width           =   2055
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Cargar"
      Height          =   735
      Left            =   3000
      TabIndex        =   6
      Top             =   4920
      Width           =   4335
   End
   Begin VB.TextBox Text3 
      Height          =   615
      Left            =   4440
      TabIndex        =   5
      Top             =   3960
      Width           =   4575
   End
   Begin VB.TextBox Text2 
      Height          =   615
      Left            =   4440
      TabIndex        =   4
      Top             =   1800
      Width           =   4575
   End
   Begin VB.Label Label8 
      Height          =   375
      Left            =   4320
      TabIndex        =   21
      Top             =   10320
      Width           =   1335
   End
   Begin VB.Label Label7 
      Height          =   375
      Left            =   4320
      TabIndex        =   20
      Top             =   9720
      Width           =   1335
   End
   Begin VB.Label Label6 
      Caption         =   "Importe Total:"
      Height          =   375
      Left            =   360
      TabIndex        =   19
      Top             =   10320
      Width           =   2175
   End
   Begin VB.Label Label5 
      Caption         =   "Cantidad De Alumnos:"
      Height          =   375
      Left            =   360
      TabIndex        =   18
      Top             =   9720
      Width           =   2175
   End
   Begin VB.Label Label4 
      Caption         =   "Importe"
      Height          =   615
      Left            =   960
      TabIndex        =   3
      Top             =   3840
      Width           =   3015
   End
   Begin VB.Label Label3 
      Caption         =   "Curso"
      Height          =   615
      Left            =   960
      TabIndex        =   2
      Top             =   2760
      Width           =   3015
   End
   Begin VB.Label Label2 
      Caption         =   "Carrera"
      Height          =   615
      Left            =   960
      TabIndex        =   1
      Top             =   1680
      Width           =   3015
   End
   Begin VB.Label Label1 
      Caption         =   "Nombre Alumno"
      Height          =   615
      Left            =   960
      TabIndex        =   0
      Top             =   600
      Width           =   3015
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Text1.Text = "" Or Text2.Text = "" Or Text3.Text = "" Or Text4.Text = "" Then
MsgBox "Debe llenar todos los campos obligatorios", vbOKOnly, "Sistema"
Else
List1.AddItem Text1.Text
List2.AddItem Text2.Text
List3.AddItem Text4.Text
List4.AddItem Text3.Text
End If
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Text4.Text = ""
End Sub

Private Sub Command2_Click()
If List1.ListIndex <> -1 Then
List1.RemoveItem List1.ListIndex
Else
MsgBox "No hay elemento"
End If
If List2.ListIndex <> -1 Then
List2.RemoveItem List2.ListIndex
Else
MsgBox "No hay elemento"
End If
If List3.ListIndex <> -1 Then
List3.RemoveItem List3.ListIndex
Else
MsgBox "No hay elemento"
End If
If List4.ListIndex <> -1 Then
List4.RemoveItem List4.ListIndex
Else
MsgBox "No hay elemento"
End If
End Sub

Private Sub Command3_Click()
Form3.Hide
Form2.Show
End Sub

Private Sub Command4_Click()
Label7.Caption = List1.ListCount
Dim i As Integer
Dim total As Long
total = 0
For i = 0 To List2.ListCount - 1
total = total + Val(List4.List(i))
Next i
Label8.Caption = total
End Sub

Private Sub Command5_Click()
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Text4.Text = ""
List1.Clear
List2.Clear
List3.Clear
List4.Clear
End Sub

Private Sub Command6_Click()
End
End Sub

