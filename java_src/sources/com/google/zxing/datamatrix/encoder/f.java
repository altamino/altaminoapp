package com.google.zxing.datamatrix.encoder;

/* JADX INFO: loaded from: classes4.dex */
final class f implements g {
    /* JADX WARN: Code duplicated, block: B:31:0x007f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x0081 A[Catch: all -> 0x003b, TryCatch #0 {all -> 0x003b, blocks: (B:3:0x0001, B:9:0x000f, B:11:0x0025, B:22:0x0049, B:28:0x005a, B:30:0x0072, B:33:0x008a, B:32:0x0081, B:36:0x0091, B:37:0x0098), top: B:40:0x0001 }] */
    private static void e(h hVar, CharSequence charSequence) {
        try {
            int length = charSequence.length();
            if (length == 0) {
                hVar.o(0);
                return;
            }
            boolean z6 = true;
            if (length == 1) {
                hVar.p();
                int iA = hVar.g().a() - hVar.a();
                int iF = hVar.f();
                if (iF > iA) {
                    hVar.q(hVar.a() + 1);
                    iA = hVar.g().a() - hVar.a();
                }
                if (iF <= iA && iA <= 2) {
                    hVar.o(0);
                    return;
                }
            }
            if (length > 4) {
                throw new IllegalStateException("Count must not exceed 4");
            }
            int i10 = length - 1;
            String strC = c(charSequence, 0);
            if (!(!hVar.i()) || i10 > 2) {
                z6 = false;
            }
            if (i10 <= 2) {
                hVar.q(hVar.a() + i10);
                if (hVar.g().a() - hVar.a() >= 3) {
                    hVar.q(hVar.a() + strC.length());
                } else if (z6) {
                    hVar.k();
                    hVar.pos -= i10;
                }
                hVar.s(strC);
            } else if (z6) {
                hVar.k();
                hVar.pos -= i10;
            } else {
                hVar.s(strC);
            }
            hVar.o(0);
        } catch (Throwable th) {
            hVar.o(0);
            throw th;
        }
    }

    public int d() {
        return 4;
    }

    private static void b(char c7, StringBuilder sb) {
        if (c7 >= ' ' && c7 <= '?') {
            sb.append(c7);
        } else if (c7 < '@' || c7 > '^') {
            j.e(c7);
        } else {
            sb.append((char) (c7 - '@'));
        }
    }

    @Override // com.google.zxing.datamatrix.encoder.g
    public void a(h hVar) {
        StringBuilder sb = new StringBuilder();
        while (hVar.i()) {
            b(hVar.c(), sb);
            hVar.pos++;
            if (sb.length() >= 4) {
                hVar.s(c(sb, 0));
                sb.delete(0, 4);
                if (j.n(hVar.d(), hVar.pos, d()) != d()) {
                    hVar.o(0);
                    break;
                }
            }
        }
        sb.append((char) 31);
        e(hVar, sb);
    }

    f() {
    }

    private static String c(CharSequence charSequence, int i10) {
        char cCharAt;
        char cCharAt2;
        int length = charSequence.length() - i10;
        if (length != 0) {
            char cCharAt3 = charSequence.charAt(i10);
            char cCharAt4 = 0;
            if (length >= 2) {
                cCharAt = charSequence.charAt(i10 + 1);
            } else {
                cCharAt = 0;
            }
            if (length >= 3) {
                cCharAt2 = charSequence.charAt(i10 + 2);
            } else {
                cCharAt2 = 0;
            }
            if (length >= 4) {
                cCharAt4 = charSequence.charAt(i10 + 3);
            }
            int i11 = (cCharAt3 << 18) + (cCharAt << '\f') + (cCharAt2 << 6) + cCharAt4;
            char c7 = (char) ((i11 >> 16) & 255);
            char c10 = (char) ((i11 >> 8) & 255);
            char c11 = (char) (i11 & 255);
            StringBuilder sb = new StringBuilder(3);
            sb.append(c7);
            if (length >= 2) {
                sb.append(c10);
            }
            if (length >= 3) {
                sb.append(c11);
            }
            return sb.toString();
        }
        throw new IllegalStateException("StringBuilder must not be empty");
    }
}
