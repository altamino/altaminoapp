package com.google.zxing.datamatrix.encoder;

/* JADX INFO: loaded from: classes4.dex */
final class m extends c {
    @Override // com.google.zxing.datamatrix.encoder.c
    int c(char c7, StringBuilder sb) {
        if (c7 == ' ') {
            sb.append((char) 3);
            return 1;
        }
        if (c7 >= '0' && c7 <= '9') {
            sb.append((char) (c7 - ','));
            return 1;
        }
        if (c7 >= 'a' && c7 <= 'z') {
            sb.append((char) (c7 - 'S'));
            return 1;
        }
        if (c7 < ' ') {
            sb.append((char) 0);
            sb.append(c7);
            return 2;
        }
        if (c7 >= '!' && c7 <= '/') {
            sb.append((char) 1);
            sb.append((char) (c7 - '!'));
            return 2;
        }
        if (c7 >= ':' && c7 <= '@') {
            sb.append((char) 1);
            sb.append((char) (c7 - '+'));
            return 2;
        }
        if (c7 >= '[' && c7 <= '_') {
            sb.append((char) 1);
            sb.append((char) (c7 - 'E'));
            return 2;
        }
        if (c7 == '`') {
            sb.append((char) 2);
            sb.append((char) (c7 - '`'));
            return 2;
        }
        if (c7 >= 'A' && c7 <= 'Z') {
            sb.append((char) 2);
            sb.append((char) (c7 - '@'));
            return 2;
        }
        if (c7 < '{' || c7 > 127) {
            sb.append("\u0001\u001e");
            return c((char) (c7 - 128), sb) + 2;
        }
        sb.append((char) 2);
        sb.append((char) (c7 - '`'));
        return 2;
    }

    @Override // com.google.zxing.datamatrix.encoder.c
    public int e() {
        return 2;
    }

    m() {
    }
}
