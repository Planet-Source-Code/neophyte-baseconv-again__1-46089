Attribute VB_Name = "modBaseConv"
Function BaseConv(Value As String, OldBase As Integer, NewBase As Integer) As String
Dim Dec         As Long
Dim Temp        As String
Dim i           As Integer
Dim j           As Integer

Value = StrConv(Value, vbLowerCase)

    For i = 0 To Len(Value)
        If IsNumeric(Mid(StrReverse(Value), i + 1, 1)) = True Then
            Dec = Dec + (Val(Mid(StrReverse(Value), i + 1, 1)) * (OldBase ^ i))
        Else
            For j = 97 To 107
                If Mid(StrReverse(Value), i + 1, 1) = Chr(j) Then Dec = Dec + Val("1" & Chr(j - 49)) * (OldBase ^ i)
            Next j
            For j = 107 To 117
                If Mid(StrReverse(Value), i + 1, 1) = Chr(j) Then Dec = Dec + Val("2" & Chr(j - 49)) * (OldBase ^ i)
            Next j
            For j = 117 To 122
                If Mid(StrReverse(Value), i + 1, 1) = Chr(j) Then Dec = Dec + Val("3" & Chr(j - 49)) * (OldBase ^ i)
            Next j
        End If
    Next i

    If NewBase = 1 Then BaseConv = String(Dec, "1"): Exit Function
    
    Do Until Dec < 1
        If Dec Mod NewBase < 10 Then
            Temp = Temp & Dec Mod NewBase
        Else
            For i = 10 To 35
                If Dec Mod NewBase = i Then Temp = Temp & Chr(i + 87)
            Next i
        End If
        Dec = Dec \ NewBase
    Loop
    
BaseConv = StrReverse(Temp)
End Function
