VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6690
   ClientLeft      =   120
   ClientTop       =   420
   ClientWidth     =   13485
   LinkTopic       =   "Form1"
   ScaleHeight     =   6690
   ScaleWidth      =   13485
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   5655
      Left            =   120
      TabIndex        =   5
      Top             =   840
      Width           =   13095
      ExtentX         =   23098
      ExtentY         =   9975
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   ""
   End
   Begin VB.CommandButton cmdgo 
      Caption         =   "Go"
      Height          =   375
      Left            =   2760
      TabIndex        =   4
      Top             =   360
      Width           =   615
   End
   Begin VB.CommandButton cmdforward 
      Caption         =   "forward>>"
      Height          =   375
      Left            =   1680
      TabIndex        =   3
      Top             =   360
      Width           =   1095
   End
   Begin VB.CommandButton Refresh 
      Caption         =   "refresh"
      Height          =   375
      Left            =   1080
      TabIndex        =   2
      Top             =   360
      Width           =   615
   End
   Begin VB.CommandButton cmdback 
      Caption         =   "<<back"
      Height          =   375
      Left            =   360
      TabIndex        =   1
      Top             =   360
      Width           =   735
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   360
      TabIndex        =   0
      Top             =   120
      Width           =   11415
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdback_Click()
WebBrowser1.GoBack
End Sub

Private Sub cmdforward_Click()
WebBrowser1.GoForward
End Sub

Private Sub cmdgo_Click()
WebBrowser1.Navigate (Text1.Text)
End Sub

Private Sub Form_Load()
WebBrowser1.Navigate ("192.168.43.163/tekdev")
End Sub

Private Sub Refresh_Click()
WebBrowser1.Refresh
End Sub

Private Sub WebBrowser1_StatusTextChange(ByVal Text As String)
Text1.Text = (WebBrowser1.LocationURL)
Form1.Caption = (WebBrowser1.LocationName)


End Sub
