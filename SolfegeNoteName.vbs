Public Function GetRandNumber(min, max)
	Randomize
	GetRandNumber = Int((max-min+1)*Rnd+min)
End Function
Dim quesArray
Dim keyArray
Dim cycles
Dim counter
Dim randN
keyArray=array("A","B","C","D","E","F","G","Gb","Ab","Bb","Db","Eb","C#","D#","F#","G#","A#","Fb","E#","Cb","B#")
quesArray=array("la","ti","do","re","mi","fa","so","se","le","te","ra","me","di","ri","fi","si","li","fe","mai","de","tai")
cycles=InputBox("�����������Ŀ")
For counter=1to cycles
    randN=GetRandNumber(0,20)
    ans=InputBox(quesArray(randN))
    If ans=keyArray(randN) Then
        MsgBox "��ȷ"
    ElseIf ans="" Or ans=vbEmpty Then
        Exit For
    Else
        MsgBox "������ȷ�𰸣�"&quesArray(randN)&":"&keyArray(randN)
    End If
Next