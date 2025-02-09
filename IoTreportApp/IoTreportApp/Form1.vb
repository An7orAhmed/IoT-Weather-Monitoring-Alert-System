
Imports System.IO
Imports System.IO.Ports


Public Class Form1
    Dim count As Integer = 0
    Dim path As String = Directory.GetCurrentDirectory()
    Dim lati, longi As String

    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        System.Windows.Forms.Control.CheckForIllegalCrossThreadCalls = False
        Dim ports As Array = IO.Ports.SerialPort.GetPortNames()
        Dim new_port As String

        For Each new_port In ports
            portlist.Items.Add(new_port)
        Next
        If portlist.Items.Count > 0 Then portlist.SelectedIndex = 0
        'send.Enabled = False
        Timer1.Enabled = False
        'write2server()

        WebBrowser2.AllowNavigation = True
        WebBrowser2.ScriptErrorsSuppressed = True
    End Sub

    Private Sub refrsh_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles refrsh.Click, refrsh.Click
        Dim ports As Array = IO.Ports.SerialPort.GetPortNames()
        Dim new_port As String

        portlist.Items.Clear()

        For Each new_port In ports
            portlist.Items.Add(new_port)
        Next
        If portlist.Items.Count > 0 Then portlist.SelectedIndex = 0
    End Sub

    Private Sub connect_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles connect.Click
        Dim read As String = ""

        If connect.Text Is "Disconnect" Then
            If SerialPort1.IsOpen = True Then SerialPort1.Close()
            connect.Text = "Connect"
            status.Text = "Disconnected successfully."
            Timer1.Stop()
            Timer1.Enabled = False
            send.Text = "Send to server"
            send.Enabled = False
            Return
        End If

        Try
            SerialPort1.PortName = portlist.SelectedItem.ToString
            SerialPort1.BaudRate = 9600
            SerialPort1.StopBits = 1
            SerialPort1.Parity = Parity.None
            SerialPort1.Handshake = Handshake.None
            SerialPort1.DataBits = 8
            SerialPort1.ReadTimeout = 1000
            SerialPort1.WriteTimeout = 1000

            SerialPort1.Open()

            connect.Text = "Disconnect"
            send.Enabled = True
            status.Text = "Connected successfully."

        Catch ex As Exception
            MsgBox("Error: " + ex.Message)
        End Try
    End Sub

    Private Sub send_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles send.Click
        If send.Text Is "Stop" Then
            Timer1.Stop()
            Timer1.Enabled = False
            send.Text = "Send to server"
            status.Text = "Send data to server is cancelled."
            Return
        End If

        Timer1.Enabled = True
        Timer1.Start()
        send.Text = "Stop"
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        Dim host = "https://iotweathermonitor.000webhostapp.com/connect.php?"
        Dim values = "g_value=" & smoke_value.Text & "&t_value=" & Temp_value.Text & "&s_value=" & sound_value.Text
        values &= "&r1=" & r1_value.Text & "&r2=" & r2_value.Text & "&r3=" & r3_value.Text
        values &= "&link=https://www.google.com/maps/place/" & lati & "," & longi

        Dim link = host & values
        Debug.Print(link)

        WebBrowser1.Navigate(link)
        WebBrowser2.Navigate("https://mylocation.org/")
    End Sub

    Delegate Sub AddText(ByVal Text As String)

    Private Sub SerialPort1_DataReceived(ByVal sender As Object, ByVal e As SerialDataReceivedEventArgs) Handles SerialPort1.DataReceived
        Dim rxd = SerialPort1.ReadLine
        Dim raw = rxd.Split(",")

        Dim g_value = raw(0)
        Dim t_value = raw(1)
        Dim s_value = raw(2)
        Dim r1 = raw(3)
        Dim r2 = raw(4)
        Dim r3 = raw(5)

        If s_value = "1" Then
            sound_status.Text = "Noise detected."
        Else
            sound_status.Text = "GOOD Condition."
        End If

        sound_value.Text = s_value
        smoke_value.Text = g_value
        Temp_value.Text = t_value
        r1_value.Text = r1
        r2_value.Text = r2
        r3_value.Text = r3
    End Sub

    Private Sub WebBrowser2_DocumentCompleted(sender As Object, e As WebBrowserDocumentCompletedEventArgs) Handles WebBrowser2.DocumentCompleted
        Dim page = WebBrowser2.DocumentText

        Dim i = page.IndexOf("<td>Latitude</td>")
        lati = page.Remove(0, i + 17)
        i = lati.IndexOf("<td>")
        lati = lati.Remove(0, i + 4)
        i = lati.IndexOf("</td>")
        lati = lati.Remove(i, lati.Length - 7)

        i = page.IndexOf("<td>Longitude</td>")
        longi = page.Remove(0, i + 18)
        i = longi.IndexOf("<td>")
        longi = longi.Remove(0, i + 4)
        i = longi.IndexOf("</td>")
        longi = longi.Remove(i, longi.Length - 7)

        Debug.Print("Lati : " + lati)
        Debug.Print("Longi : " + longi)
    End Sub
End Class
