VERSION 5.00
Begin VB.Form Form3 
   Caption         =   "CLIENTES"
   ClientHeight    =   7935
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   15345
   LinkTopic       =   "Form3"
   ScaleHeight     =   7935
   ScaleWidth      =   15345
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "VOLVER"
      Height          =   735
      Left            =   240
      TabIndex        =   10
      Top             =   6960
      Width           =   3495
   End
   Begin VB.TextBox Text4 
      Height          =   495
      Left            =   3840
      TabIndex        =   9
      Top             =   3480
      Width           =   5055
   End
   Begin VB.TextBox Text3 
      Height          =   495
      Left            =   3840
      TabIndex        =   8
      Top             =   2520
      Width           =   5055
   End
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   3840
      TabIndex        =   7
      Top             =   1560
      Width           =   5055
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   3840
      TabIndex        =   6
      Top             =   600
      Width           =   5055
   End
   Begin VB.CommandButton Command1 
      Caption         =   "INGRESAR"
      Height          =   735
      Left            =   11040
      TabIndex        =   5
      Top             =   1560
      Width           =   3735
   End
   Begin VB.ListBox List1 
      Height          =   3375
      Left            =   4440
      TabIndex        =   4
      Top             =   4320
      Width           =   6015
   End
   Begin VB.Label Label4 
      Caption         =   "TELEFONO"
      Height          =   495
      Left            =   360
      TabIndex        =   3
      Top             =   3360
      Width           =   3015
   End
   Begin VB.Label Label3 
      Caption         =   "CUIT"
      Height          =   495
      Left            =   360
      TabIndex        =   2
      Top             =   2400
      Width           =   3015
   End
   Begin VB.Label Label2 
      Caption         =   "DOMICILIO"
      Height          =   495
      Left            =   360
      TabIndex        =   1
      Top             =   1440
      Width           =   3015
   End
   Begin VB.Label Label1 
      Caption         =   "NOMBRE"
      Height          =   495
      Left            =   360
      TabIndex        =   0
      Top             =   480
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
List1.AddItem Text2.Text
List1.AddItem Text3.Text
List1.AddItem Text4.Text
End If
End Sub

Private Sub Command2_Click()
Form3.Hide
Form2.Show
End Sub
