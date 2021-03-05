'ソースを読込ます
Private Sub readFile(pFullPath As String, pPath As String, pFile As String, ByRef pRow As Long)

    Dim nFile As Long
    Dim sLine As String
    Dim sStr As String
    Dim sStrs() As String
    Dim i As Long
    Dim rng As Range
    
    Dim dFunction As Scripting.Dictionary
    Dim vKeys As Variant
    
    '取得した関数のリストを作成します
    Set dFunction = New Scripting.Dictionary
    
    'VBAのファイル読込は、↓のパターンで読み込むのが標準です
    nFile = FreeFile
    
    'ファイルをオープンします
    Open pFullPath For Input As #nFile
    
    'ファイルの終端まで読込ます
    Do Until EOF(nFile)
        'ファイルの１行を取得します
        Line Input #nFile, sLine
        
        'ここで、関数名があるかチェックします
        '考え方
        'ソースの１行に関数名があるかを、単純な文字列マッチングにすると、
        '異なる関数もヒットしてしまう
        '⇒例：CALL_FORMとPRO_CALL_FORM
        'これを避けるために、１行を関数単位で分解してチェックすればよい
        '例：xxxx.CALL_FORM(aaa, bbb);
        'この状態で記述されている場合が多いので、
        'xxxx CALL_FORM aaa bbb
        'このような状態にまずはしてみましょう
        
        '共通関数のsetReplace
        '複数の区切り文字を一括で文字列置換します
        '区切り文字を全て" "スペースにまずは置換します
        sStr = setReplace(sLine, Array(vbTab, ".", ",", "(", ")", ";"), " ")
        
        '" "区切りに置換した文字列を、" "でSplitします
        sStrs = Split(sStr, " ")
        
        'Splitで作成した文字列群を１つずつチェックします
        '配列を全てループします
        For i = 0 To UBound(sStrs)
            '空文字は無視します
            If sStrs(i) = "" Then
                GoTo LABEL_CONTINUE1
            'ビルトイン関数コレクションに存在しない場合は無視します
            ElseIf Not mビルトイン関数一覧.Exists(sStrs(i)) Then
                GoTo LABEL_CONTINUE1
            '既に同じ関数がある場合は無視します
            '※イベント内は関数を１つのみにするため
            ElseIf dFunction.Exists(sStrs(i)) Then
                GoTo LABEL_CONTINUE1
            Else
                'コレクションにセットします
                dFunction.Add sStrs(i), ""
            End If
           
LABEL_CONTINUE1:
        Next
    Loop
    
    'ファイルをクローズします
    Close #nFile
    
    '取得した関数のコレクションを読込ます
    '.Keysで、キーの配列を取得できます
    vKeys = dFunction.Keys
    For i = 0 To UBound(vKeys)
        With ThisWorkbook.Worksheets(CON_SHEET_関数取得)
            .Cells(pRow, E_関数取得.E_No).Value = pRow - 1
            .Cells(pRow, E_関数取得.E_パス).Value = pPath
            .Cells(pRow, E_関数取得.E_ファイル名).Value = pFile
            .Cells(pRow, E_関数取得.E_ビルトイン関数).Value = vKeys(i)
            pRow = pRow + 1
        End With
    Next

    Set dFunction = Nothing
End Sub
