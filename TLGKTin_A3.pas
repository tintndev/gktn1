program TLGKTin_A3;
uses crt;
var soNhapVao, i: word;
    tongNam: longint;

BEGIN
    clrscr;
    write('Nhap so nguyen can thuc hien: ');
    readln(soNhapVao);
    while soNhapVao >= 3050 do
        begin
            clrscr;
            writeln('Nhap lai so nguyen duong sao cho nho hon 3050');
            write('Nhap so nguyen can thuc hien: ');
            readln(soNhapVao);
        end;
    tongNam := 0;
    for i := 1 to soNhapVao do
        begin
            if (i mod 400 = 0) or ((i mod 4 = 0) and (i mod 100 <> 0)) then
                begin
                    tongNam := tongNam + i;
                end;
        end;
    write('Tong cac nam nhuan sau Cong Nguyen den nam ', soNhapVao, ' la: ', tongNam);
    readkey;
END.
