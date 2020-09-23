VERSION 5.00
Begin VB.Form frmMain 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Base Converter"
   ClientHeight    =   1935
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4335
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1935
   ScaleWidth      =   4335
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdAbout 
      Caption         =   "&About"
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Top             =   1440
      Width           =   1095
   End
   Begin VB.TextBox txtAnswer 
      Height          =   735
      Left            =   840
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   3
      Top             =   600
      Width           =   3375
   End
   Begin VB.TextBox txtToBase 
      BackColor       =   &H80000009&
      Height          =   285
      Left            =   3840
      MaxLength       =   2
      TabIndex        =   2
      Top             =   120
      Width           =   375
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "E&xit"
      Height          =   375
      Left            =   3120
      TabIndex        =   6
      Top             =   1440
      Width           =   1095
   End
   Begin VB.CommandButton cmdConvert 
      Caption         =   "&Convert!"
      Height          =   375
      Left            =   1920
      TabIndex        =   5
      Top             =   1440
      Width           =   1095
   End
   Begin VB.TextBox txtFromBase 
      BackColor       =   &H80000009&
      Height          =   285
      Left            =   2760
      MaxLength       =   2
      TabIndex        =   1
      Top             =   120
      Width           =   375
   End
   Begin VB.TextBox txtNumber 
      BackColor       =   &H80000009&
      Height          =   285
      Left            =   840
      TabIndex        =   0
      Top             =   120
      Width           =   975
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Answer:"
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   600
      Width           =   615
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "from base"
      Height          =   255
      Left            =   1920
      TabIndex        =   9
      Top             =   180
      Width           =   735
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "to base"
      Height          =   255
      Left            =   3240
      TabIndex        =   8
      Top             =   180
      Width           =   615
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Convert"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   180
      Width           =   615
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Thanks for downloading my code. =)
'I would greatly appreciate your comments and/or votes.
'
'For more info check out the readme file, it explains
'the code and alogarithms in more detail =).

Option Explicit
Private Declare Function InitCommonControls Lib "comctl32.dll" () As Long

Private Sub cmdAbout_Click()
MsgBox "Base Converter." & vbCrLf & vbCrLf & "Created by Haydn Fenton." & vbCrLf & "View the ReadMe file for more information.", vbOKOnly + vbInformation, "About"
End Sub

Private Sub cmdConvert_Click()
txtAnswer = BaseConv(StrConv(txtNumber.Text, vbLowerCase), txtFromBase.Text, txtToBase.Text)
End Sub

Private Sub cmdExit_Click()
End
End Sub

Private Sub Form_Initialize()
InitCommonControls
End Sub

Private Sub txtFromBase_KeyPress(KeyAscii As Integer)
If KeyAscii = vbKeyReturn Then txtToBase.SetFocus
End Sub

Private Sub txtNumber_KeyPress(KeyAscii As Integer)
If KeyAscii = vbKeyReturn Then txtFromBase.SetFocus
End Sub

Private Sub txtToBase_KeyPress(KeyAscii As Integer)
If KeyAscii = vbKeyReturn Then Call cmdConvert_Click
End Sub
