package org.bouncycastle.math.ec;

/* JADX INFO: loaded from: classes8.dex */
public class a {
    public static boolean a(c cVar) {
        return b(cVar.i());
    }

    public static boolean b(org.bouncycastle.math.field.a aVar) {
        return aVar.a() > 1 && aVar.b().equals(b.TWO) && (aVar instanceof org.bouncycastle.math.field.f);
    }

    public static boolean c(c cVar) {
        return d(cVar.i());
    }

    public static boolean d(org.bouncycastle.math.field.a aVar) {
        return aVar.a() == 1;
    }

    public static void e(d[] dVarArr, int i10, int i11, d dVar) {
        d[] dVarArr2 = new d[i11];
        int i12 = 0;
        dVarArr2[0] = dVarArr[i10];
        while (true) {
            int i13 = i12 + 1;
            if (i13 >= i11) {
                break;
            }
            dVarArr2[i13] = dVarArr2[i12].i(dVarArr[i10 + i13]);
            i12 = i13;
        }
        if (dVar != null) {
            dVarArr2[i12] = dVarArr2[i12].i(dVar);
        }
        d dVarF = dVarArr2[i12].f();
        while (i12 > 0) {
            int i14 = i12 - 1;
            int i15 = i12 + i10;
            d dVar2 = dVarArr[i15];
            dVarArr[i15] = dVarArr2[i14].i(dVarF);
            dVarF = dVarF.i(dVar2);
            i12 = i14;
        }
        dVarArr[i10] = dVarF;
    }
}
