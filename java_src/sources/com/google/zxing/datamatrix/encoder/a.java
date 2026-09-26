package com.google.zxing.datamatrix.encoder;

/* JADX INFO: loaded from: classes4.dex */
final class a implements g {
    public int c() {
        return 0;
    }

    a() {
    }

    private static char b(char c7, char c10) {
        if (j.f(c7) && j.f(c10)) {
            return (char) (((c7 - '0') * 10) + (c10 - '0') + 130);
        }
        throw new IllegalArgumentException("not digits: " + c7 + c10);
    }

    @Override // com.google.zxing.datamatrix.encoder.g
    public void a(h hVar) {
        if (j.a(hVar.d(), hVar.pos) >= 2) {
            hVar.r(b(hVar.d().charAt(hVar.pos), hVar.d().charAt(hVar.pos + 1)));
            hVar.pos += 2;
            return;
        }
        char c7 = hVar.c();
        int iN = j.n(hVar.d(), hVar.pos, c());
        if (iN != c()) {
            if (iN != 1) {
                if (iN != 2) {
                    if (iN != 3) {
                        if (iN != 4) {
                            if (iN == 5) {
                                hVar.r((char) 231);
                                hVar.o(5);
                                return;
                            }
                            throw new IllegalStateException("Illegal mode: ".concat(String.valueOf(iN)));
                        }
                        hVar.r((char) 240);
                        hVar.o(4);
                        return;
                    }
                    hVar.r((char) 238);
                    hVar.o(3);
                    return;
                }
                hVar.r((char) 239);
                hVar.o(2);
                return;
            }
            hVar.r((char) 230);
            hVar.o(1);
            return;
        }
        if (j.g(c7)) {
            hVar.r((char) 235);
            hVar.r((char) (c7 - 127));
            hVar.pos++;
        } else {
            hVar.r((char) (c7 + 1));
            hVar.pos++;
        }
    }
}
