program TLGKTin_A3_2;
uses crt;
var soNhapVao, i, soCacSo, tong: word;
    trungBinhCong: extended;

BEGIN
    clrscr;
    write('Nhap so nguyen duong can thuc hien: ');
    readln(soNhapVao);
    while(soNhapVao <= 5000) do 
        begin
            clrscr;
            writeln('Nhap lai so nguyen duong lon hon 5000!');
            write('Nhap so nguyen duong can thuc hien: ');
            readln(soNhapVao); 
        end;
    tong := 0;
    soCacSo := 0;
    for i := 1 to soNhapVao do
        begin
            if (i mod 15 = 0) then
                begin
                    tong := tong + i;
                    soCacSo := soCacSo + 1;
                end;
        end;
    trungBinhCong := tong / soCacSo;
    write('Trung binh cong cac so boi cua 15 tu 1 den ', soNhapVao, ' la: ', trungBinhCong:8:3);
    readkey;
END.
