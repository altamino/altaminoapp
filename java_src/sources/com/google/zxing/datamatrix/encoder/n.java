package com.google.zxing.datamatrix.encoder;

/* JADX INFO: loaded from: classes4.dex */
final class n extends c {
    @Override // com.google.zxing.datamatrix.encoder.c
    public int e() {
        return 3;
    }

    @Override // com.google.zxing.datamatrix.encoder.c, com.google.zxing.datamatrix.encoder.g
    public void a(h hVar) {
        StringBuilder sb = new StringBuilder();
        while (hVar.i()) {
            char c7 = hVar.c();
            hVar.pos++;
            c(c7, sb);
            if (sb.length() % 3 == 0) {
                c.g(hVar, sb);
                if (j.n(hVar.d(), hVar.pos, e()) != e()) {
                    hVar.o(0);
                    break;
                }
            }
        }
        f(hVar, sb);
    }

    @Override // com.google.zxing.datamatrix.encoder.c
    int c(char c7, StringBuilder sb) {
        if (c7 == '\r') {
            sb.append((char) 0);
        } else if (c7 == ' ') {
            sb.append((char) 3);
        } else if (c7 == '*') {
            sb.append((char) 1);
        } else if (c7 == '>') {
            sb.append((char) 2);
        } else if (c7 >= '0' && c7 <= '9') {
            sb.append((char) (c7 - ','));
        } else if (c7 < 'A' || c7 > 'Z') {
            j.e(c7);
        } else {
            sb.append((char) (c7 - '3'));
        }
        return 1;
    }

    n() {
    }

    @Override // com.google.zxing.datamatrix.encoder.c
    void f(h hVar, StringBuilder sb) {
        hVar.p();
        int iA = hVar.g().a() - hVar.a();
        hVar.pos -= sb.length();
        if (hVar.f() > 1 || iA > 1 || hVar.f() != iA) {
            hVar.r((char) 254);
        }
        if (hVar.e() < 0) {
            hVar.o(0);
        }
    }
}
