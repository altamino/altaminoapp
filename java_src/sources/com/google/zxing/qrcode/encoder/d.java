package com.google.zxing.qrcode.encoder;

/* JADX INFO: loaded from: classes6.dex */
final class d {
    private static final int N1 = 3;
    private static final int N2 = 3;
    private static final int N3 = 40;
    private static final int N4 = 10;

    static int a(b bVar) {
        return b(bVar, true) + b(bVar, false);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:16:0x003c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:17:0x003d A[RETURN] */
    static boolean f(int i10, int i11, int i12) {
        int i13;
        int i14;
        switch (i10) {
            case 0:
                i12 += i11;
                i13 = i12 & 1;
                if (i13 == 0) {
                    return true;
                }
                return false;
            case 1:
                i13 = i12 & 1;
                if (i13 == 0) {
                    return true;
                }
                return false;
            case 2:
                i13 = i11 % 3;
                if (i13 == 0) {
                    return true;
                }
                return false;
            case 3:
                i13 = (i12 + i11) % 3;
                if (i13 == 0) {
                    return true;
                }
                return false;
            case 4:
                i12 /= 2;
                i11 /= 3;
                i12 += i11;
                i13 = i12 & 1;
                if (i13 == 0) {
                    return true;
                }
                return false;
            case 5:
                int i15 = i12 * i11;
                i13 = (i15 & 1) + (i15 % 3);
                if (i13 == 0) {
                    return true;
                }
                return false;
            case 6:
                int i16 = i12 * i11;
                i14 = (i16 & 1) + (i16 % 3);
                i13 = i14 & 1;
                if (i13 == 0) {
                    return true;
                }
                return false;
            case 7:
                i14 = ((i12 * i11) % 3) + ((i12 + i11) & 1);
                i13 = i14 & 1;
                if (i13 == 0) {
                    return true;
                }
                return false;
            default:
                throw new IllegalArgumentException("Invalid mask pattern: ".concat(String.valueOf(i10)));
        }
    }

    private static boolean g(byte[] bArr, int i10, int i11) {
        int iMin = Math.min(i11, bArr.length);
        for (int iMax = Math.max(i10, 0); iMax < iMin; iMax++) {
            if (bArr[iMax] == 1) {
                return false;
            }
        }
        return true;
    }

    private static boolean h(byte[][] bArr, int i10, int i11, int i12) {
        int iMin = Math.min(i12, bArr.length);
        for (int iMax = Math.max(i11, 0); iMax < iMin; iMax++) {
            if (bArr[iMax][i10] == 1) {
                return false;
            }
        }
        return true;
    }

    private static int b(b bVar, boolean z6) {
        int iD = z6 ? bVar.d() : bVar.e();
        int iE = z6 ? bVar.e() : bVar.d();
        byte[][] bArrC = bVar.c();
        int i10 = 0;
        for (int i11 = 0; i11 < iD; i11++) {
            byte b7 = -1;
            int i12 = 0;
            for (int i13 = 0; i13 < iE; i13++) {
                byte b10 = z6 ? bArrC[i11][i13] : bArrC[i13][i11];
                if (b10 == b7) {
                    i12++;
                } else {
                    if (i12 >= 5) {
                        i10 += i12 - 2;
                    }
                    i12 = 1;
                    b7 = b10;
                }
            }
            if (i12 >= 5) {
                i10 += i12 - 2;
            }
        }
        return i10;
    }

    static int c(b bVar) {
        byte[][] bArrC = bVar.c();
        int iE = bVar.e();
        int iD = bVar.d();
        int i10 = 0;
        for (int i11 = 0; i11 < iD - 1; i11++) {
            byte[] bArr = bArrC[i11];
            int i12 = 0;
            while (i12 < iE - 1) {
                byte b7 = bArr[i12];
                int i13 = i12 + 1;
                if (b7 == bArr[i13]) {
                    byte[] bArr2 = bArrC[i11 + 1];
                    if (b7 == bArr2[i12] && b7 == bArr2[i13]) {
                        i10++;
                    }
                }
                i12 = i13;
            }
        }
        return i10 * 3;
    }

    static int d(b bVar) {
        byte[][] bArrC = bVar.c();
        int iE = bVar.e();
        int iD = bVar.d();
        int i10 = 0;
        for (int i11 = 0; i11 < iD; i11++) {
            for (int i12 = 0; i12 < iE; i12++) {
                byte[] bArr = bArrC[i11];
                int i13 = i12 + 6;
                if (i13 < iE && bArr[i12] == 1 && bArr[i12 + 1] == 0 && bArr[i12 + 2] == 1 && bArr[i12 + 3] == 1 && bArr[i12 + 4] == 1 && bArr[i12 + 5] == 0 && bArr[i13] == 1 && (g(bArr, i12 - 4, i12) || g(bArr, i12 + 7, i12 + 11))) {
                    i10++;
                }
                int i14 = i11 + 6;
                if (i14 < iD && bArrC[i11][i12] == 1 && bArrC[i11 + 1][i12] == 0 && bArrC[i11 + 2][i12] == 1 && bArrC[i11 + 3][i12] == 1 && bArrC[i11 + 4][i12] == 1 && bArrC[i11 + 5][i12] == 0 && bArrC[i14][i12] == 1 && (h(bArrC, i12, i11 - 4, i11) || h(bArrC, i12, i11 + 7, i11 + 11))) {
                    i10++;
                }
            }
        }
        return i10 * 40;
    }

    static int e(b bVar) {
        byte[][] bArrC = bVar.c();
        int iE = bVar.e();
        int iD = bVar.d();
        int i10 = 0;
        for (int i11 = 0; i11 < iD; i11++) {
            byte[] bArr = bArrC[i11];
            for (int i12 = 0; i12 < iE; i12++) {
                if (bArr[i12] == 1) {
                    i10++;
                }
            }
        }
        int iD2 = bVar.d() * bVar.e();
        return ((Math.abs((i10 << 1) - iD2) * 10) / iD2) * 10;
    }
}
