package org.bouncycastle.pqc.crypto.lms;

/* JADX INFO: loaded from: classes5.dex */
class q {
    static final short D_MESG = -32383;
    private static final short D_PBLC = -32640;
    private static final int ITER_J = 22;
    private static final int ITER_K = 20;
    private static final int ITER_PREV = 23;
    static final int MAX_HASH = 32;
    static final int SEED_LEN = 32;
    static final int SEED_RANDOMISER_INDEX = -3;

    public static int a(byte[] bArr, int i10, e eVar) {
        int iH = (1 << eVar.h()) - 1;
        int iB = 0;
        for (int i11 = 0; i11 < (i10 * 8) / eVar.h(); i11++) {
            iB = (iB + iH) - b(bArr, i11, eVar.h());
        }
        return iB << eVar.c();
    }

    public static int b(byte[] bArr, int i10, int i11) {
        int i12 = (i10 * i11) / 8;
        return (bArr[i12] >>> (((~i10) & ((8 / i11) - 1)) * i11)) & ((1 << i11) - 1);
    }

    public static h c(f fVar, byte[] bArr, byte[] bArr2) {
        e eVarC = fVar.c();
        int iD = eVarC.d();
        int iE = eVarC.e();
        int iH = eVarC.h();
        byte[] bArr3 = new byte[iE * iD];
        x8.c cVarA = b.a(eVarC.b());
        s sVarA = fVar.a();
        int iA = a(bArr, iD, eVarC);
        bArr[iD] = (byte) ((iA >>> 8) & 255);
        bArr[iD + 1] = (byte) iA;
        int i10 = iD + 23;
        byte[] bArrB = a.f().d(fVar.b()).i(fVar.d()).g(0, i10).b();
        sVarA.d(0);
        int i11 = 0;
        while (i11 < iE) {
            org.bouncycastle.util.f.k((short) i11, bArrB, 20);
            int i12 = 23;
            sVarA.b(bArrB, i11 < iE + (-1), 23);
            int iB = b(bArr, i11, iH);
            for (int i13 = 0; i13 < iB; i13++) {
                bArrB[22] = (byte) i13;
                cVarA.update(bArrB, 0, i10);
                i12 = 23;
                cVarA.a(bArrB, 23);
            }
            System.arraycopy(bArrB, i12, bArr3, iD * i11, iD);
            i11++;
        }
        return new h(eVarC, bArr2, bArr3);
    }

    static byte[] d(e eVar, byte[] bArr, int i10, byte[] bArr2) {
        x8.c cVarA = b.a(eVar.b());
        byte[] bArrB = a.f().d(bArr).i(i10).h(-32640).g(0, 22).b();
        cVarA.update(bArrB, 0, bArrB.length);
        x8.c cVarA2 = b.a(eVar.b());
        byte[] bArrB2 = a.f().d(bArr).i(i10).g(0, cVarA2.e() + 23).b();
        s sVar = new s(bArr, bArr2, b.a(eVar.b()));
        sVar.e(i10);
        sVar.d(0);
        int iE = eVar.e();
        int iD = eVar.d();
        int iH = (1 << eVar.h()) - 1;
        int i11 = 0;
        while (i11 < iE) {
            sVar.b(bArrB2, i11 < iE + (-1), 23);
            org.bouncycastle.util.f.k((short) i11, bArrB2, 20);
            for (int i12 = 0; i12 < iH; i12++) {
                bArrB2[22] = (byte) i12;
                cVarA2.update(bArrB2, 0, bArrB2.length);
                cVarA2.a(bArrB2, 23);
            }
            cVarA.update(bArrB2, 23, iD);
            i11++;
        }
        byte[] bArr3 = new byte[cVarA.e()];
        cVarA.a(bArr3, 0);
        return bArr3;
    }
}
