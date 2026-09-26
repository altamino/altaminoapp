package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.e4;
import com.google.android.exoplayer2.source.f1;
import com.google.android.exoplayer2.source.h1;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class a0 {
    public static e4 a(u.a aVar, v[] vVarArr) {
        List[] listArr = new List[vVarArr.length];
        for (int i10 = 0; i10 < vVarArr.length; i10++) {
            v vVar = vVarArr[i10];
            listArr[i10] = vVar != null ? com.google.common.collect.a0.y(vVar) : com.google.common.collect.a0.x();
        }
        return b(aVar, listArr);
    }

    public static e4 b(u.a aVar, List<? extends v>[] listArr) {
        boolean z6;
        com.google.common.collect.a0.a aVar2 = new com.google.common.collect.a0.a();
        for (int i10 = 0; i10 < aVar.d(); i10++) {
            h1 h1VarF = aVar.f(i10);
            List<? extends v> list = listArr[i10];
            for (int i11 = 0; i11 < h1VarF.length; i11++) {
                f1 f1VarB = h1VarF.b(i11);
                boolean z10 = aVar.a(i10, i11, false) != 0;
                int i12 = f1VarB.length;
                int[] iArr = new int[i12];
                boolean[] zArr = new boolean[i12];
                for (int i13 = 0; i13 < f1VarB.length; i13++) {
                    iArr[i13] = aVar.g(i10, i11, i13);
                    int i14 = 0;
                    while (true) {
                        if (i14 >= list.size()) {
                            z6 = false;
                            break;
                        }
                        v vVar = list.get(i14);
                        if (vVar.getTrackGroup().equals(f1VarB) && vVar.indexOf(i13) != -1) {
                            z6 = true;
                            break;
                        }
                        i14++;
                    }
                    zArr[i13] = z6;
                }
                aVar2.d(new e4.a(f1VarB, z10, iArr, zArr));
            }
        }
        h1 h1VarH = aVar.h();
        for (int i15 = 0; i15 < h1VarH.length; i15++) {
            f1 f1VarB2 = h1VarH.b(i15);
            int[] iArr2 = new int[f1VarB2.length];
            Arrays.fill(iArr2, 0);
            aVar2.d(new e4.a(f1VarB2, false, iArr2, new boolean[f1VarB2.length]));
        }
        return new e4(aVar2.k());
    }
}
