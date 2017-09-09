program insertionsort;
    var
        angka : array[1..100] of integer;
            a,N,pass,b,j : integer;
        temp: integer;
    begin
        write('Masukkan Banyak Array: ');readln(N);
        for b:=1 to N do
        begin    
            write('Angka ke - ',b,': ');readln(angka[b]);
        end;
        
        for pass:=1 to N-1 do
        begin
            j    := pass+1;
            temp := angka[j];
            while (j>1) and (temp<angka[j-1]) do
            begin
                angka[j]:=angka[j-1];
                j := j-1;
            end;
            angka[j]:=temp;
        end;
        
        writeln('Hasil Pengurutan: ');
        for a:=1 to N do
            writeln(angka[a]);
        readln;
    end.