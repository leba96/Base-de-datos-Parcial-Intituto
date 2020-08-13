VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Ingreso Al Sistema"
   ClientHeight    =   7365
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   14505
   LinkTopic       =   "Form1"
   ScaleHeight     =   7365
   ScaleWidth      =   14505
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "SALIR"
      Height          =   975
      Left            =   360
      TabIndex        =   5
      Top             =   6120
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ACEPTAR"
      Height          =   855
      Left            =   4080
      TabIndex        =   4
      Top             =   5280
      Width           =   5175
   End
   Begin VB.TextBox Text2 
      Height          =   735
      IMEMode         =   3  'DISABLE
      Left            =   4080
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   3960
      Width           =   5295
   End
   Begin VB.TextBox Text1 
      Height          =   735
      Left            =   4080
      TabIndex        =   1
      Top             =   1440
      Width           =   5295
   End
   Begin VB.Label Label2 
      Caption         =   "CLAVE"
      Height          =   735
      Left            =   4080
      TabIndex        =   2
      Top             =   2760
      Width           =   5295
   End
   Begin VB.Label Label1 
      Caption         =   "USUARIO"
      Height          =   735
      Left            =   4200
      TabIndex        =   0
      Top             =   360
      Width           =   5055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Text1.Text = "usuario" And Text2.Text = "clave" Then
Form1.Hide
Form2.Show
End If
End Sub

Private Sub Command2_Click()
End
End Sub
