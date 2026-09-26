package org.bouncycastle.pqc.math.linearalgebra;

/* JADX INFO: loaded from: classes10.dex */
public class l {
    private b field;
    private j p;
    protected j[] sqMatrix;
    protected j[] sqRootMatrix;

    public l(b bVar, j jVar) {
        this.field = bVar;
        this.p = jVar;
        b();
        a();
    }

    private void a() {
        int iH;
        int i10 = this.p.i();
        j[] jVarArr = new j[i10];
        int i11 = i10 - 1;
        for (int i12 = i11; i12 >= 0; i12--) {
            jVarArr[i12] = new j(this.sqMatrix[i12]);
        }
        this.sqRootMatrix = new j[i10];
        while (i11 >= 0) {
            this.sqRootMatrix[i11] = new j(this.field, i11);
            i11--;
        }
        for (int i13 = 0; i13 < i10; i13++) {
            if (jVarArr[i13].h(i13) == 0) {
                int i14 = i13 + 1;
                boolean z6 = false;
                while (i14 < i10) {
                    if (jVarArr[i14].h(i13) != 0) {
                        d(jVarArr, i13, i14);
                        d(this.sqRootMatrix, i13, i14);
                        i14 = i10;
                        z6 = true;
                    }
                    i14++;
                }
                if (!z6) {
                    throw new ArithmeticException("Squaring matrix is not invertible.");
                }
            }
            int iH2 = this.field.h(jVarArr[i13].h(i13));
            jVarArr[i13].q(iH2);
            this.sqRootMatrix[i13].q(iH2);
            for (int i15 = 0; i15 < i10; i15++) {
                if (i15 != i13 && (iH = jVarArr[i15].h(i13)) != 0) {
                    j jVarR = jVarArr[i13].r(iH);
                    j jVarR2 = this.sqRootMatrix[i13].r(iH);
                    jVarArr[i15].b(jVarR);
                    this.sqRootMatrix[i15].b(jVarR2);
                }
            }
        }
    }

    private void b() {
        int i10;
        int i11 = this.p.i();
        this.sqMatrix = new j[i11];
        int i12 = 0;
        while (true) {
            i10 = i11 >> 1;
            if (i12 >= i10) {
                break;
            }
            int i13 = i12 << 1;
            int[] iArr = new int[i13 + 1];
            iArr[i13] = 1;
            this.sqMatrix[i12] = new j(this.field, iArr);
            i12++;
        }
        while (i10 < i11) {
            int i14 = i10 << 1;
            int[] iArr2 = new int[i14 + 1];
            iArr2[i14] = 1;
            this.sqMatrix[i10] = new j(this.field, iArr2).n(this.p);
            i10++;
        }
    }

    private static void d(j[] jVarArr, int i10, int i11) {
        j jVar = jVarArr[i10];
        jVarArr[i10] = jVarArr[i11];
        jVarArr[i11] = jVar;
    }

    public j[] c() {
        return this.sqRootMatrix;
    }
}
