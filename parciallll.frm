VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Alumnos"
   ClientHeight    =   5730
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   11775
   LinkTopic       =   "Form2"
   Picture         =   "parciallll.frx":0000
   ScaleHeight     =   5730
   ScaleWidth      =   11775
   StartUpPosition =   3  'Windows Default
   Begin VB.Label Label2 
      Caption         =   "SISTEMA ALUMNOS"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4800
      TabIndex        =   1
      Top             =   1200
      Width           =   4215
   End
   Begin VB.Label Label1 
      Caption         =   "INSTITUTO CRISTO OBRERO"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4800
      TabIndex        =   0
      Top             =   240
      Width           =   5415
   End
   Begin VB.Menu Alumnos 
      Caption         =   "Alumnos"
   End
   Begin VB.Menu Calculadora 
      Caption         =   "Calculadora"
   End
   Begin VB.Menu Empleados 
      Caption         =   "Empleados"
   End
   Begin VB.Menu Salir 
      Caption         =   "Salir"
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Alumnos_Click()
Form2.Hide
Form3.Show
End Sub

Private Sub Calculadora_Click()
Form2.Hide
Form5.Show
End Sub

Private Sub Empleados_Click()
Form4.Show
End Sub

Private Sub Salir_Click()
End
End Sub
