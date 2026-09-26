package com.google.zxing.datamatrix.encoder;

/* JADX INFO: loaded from: classes4.dex */
class c implements g {
    static void g(h hVar, StringBuilder sb) {
        hVar.s(d(sb, 0));
        sb.delete(0, 3);
    }

    int c(char c7, StringBuilder sb) {
        if (c7 == ' ') {
            sb.append((char) 3);
            return 1;
        }
        if (c7 >= '0' && c7 <= '9') {
            sb.append((char) (c7 - ','));
            return 1;
        }
        if (c7 >= 'A' && c7 <= 'Z') {
            sb.append((char) (c7 - '3'));
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
        if (c7 < '`' || c7 > 127) {
            sb.append("\u0001\u001e");
            return c((char) (c7 - 128), sb) + 2;
        }
        sb.append((char) 2);
        sb.append((char) (c7 - '`'));
        return 2;
    }

    public int e() {
        return 1;
    }

    @Override // com.google.zxing.datamatrix.encoder.g
    public void a(h hVar) {
        StringBuilder sb = new StringBuilder();
        while (hVar.i()) {
            char c7 = hVar.c();
            hVar.pos++;
            int iC = c(c7, sb);
            int iA = hVar.a() + ((sb.length() / 3) << 1);
            hVar.q(iA);
            int iA2 = hVar.g().a() - iA;
            if (!hVar.i()) {
                StringBuilder sb2 = new StringBuilder();
                if (sb.length() % 3 == 2 && (iA2 < 2 || iA2 > 2)) {
                    iC = b(hVar, sb, sb2, iC);
                }
                while (sb.length() % 3 == 1 && ((iC <= 3 && iA2 != 1) || iC > 3)) {
                    iC = b(hVar, sb, sb2, iC);
                }
                break;
            }
            if (sb.length() % 3 == 0 && j.n(hVar.d(), hVar.pos, e()) != e()) {
                hVar.o(0);
                break;
            }
        }
        f(hVar, sb);
    }

    c() {
    }

    private int b(h hVar, StringBuilder sb, StringBuilder sb2, int i10) {
        int length = sb.length();
        sb.delete(length - i10, length);
        hVar.pos--;
        int iC = c(hVar.c(), sb2);
        hVar.k();
        return iC;
    }

    private static String d(CharSequence charSequence, int i10) {
        int iCharAt = (charSequence.charAt(i10) * 1600) + (charSequence.charAt(i10 + 1) * '(') + charSequence.charAt(i10 + 2) + 1;
        return new String(new char[]{(char) (iCharAt / 256), (char) (iCharAt % 256)});
    }

    void f(h hVar, StringBuilder sb) {
        int length = (sb.length() / 3) << 1;
        int length2 = sb.length() % 3;
        int iA = hVar.a() + length;
        hVar.q(iA);
        int iA2 = hVar.g().a() - iA;
        if (length2 == 2) {
            sb.append((char) 0);
            while (sb.length() >= 3) {
                g(hVar, sb);
            }
            if (hVar.i()) {
                hVar.r((char) 254);
            }
        } else if (iA2 == 1 && length2 == 1) {
            while (sb.length() >= 3) {
                g(hVar, sb);
            }
            if (hVar.i()) {
                hVar.r((char) 254);
            }
            hVar.pos--;
        } else if (length2 == 0) {
            while (sb.length() >= 3) {
                g(hVar, sb);
            }
            if (iA2 > 0 || hVar.i()) {
                hVar.r((char) 254);
            }
        } else {
            throw new IllegalStateException("Unexpected case. Please report!");
        }
        hVar.o(0);
    }
}
