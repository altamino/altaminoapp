package h5;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class c {
    private final List<b> cachedGenerators;
    private final a field;

    private b a(int i10) {
        if (i10 >= this.cachedGenerators.size()) {
            List<b> list = this.cachedGenerators;
            b bVarG = list.get(list.size() - 1);
            for (int size = this.cachedGenerators.size(); size <= i10; size++) {
                a aVar = this.field;
                bVarG = bVarG.g(new b(aVar, new int[]{1, aVar.c((size - 1) + aVar.d())}));
                this.cachedGenerators.add(bVarG);
            }
        }
        return this.cachedGenerators.get(i10);
    }

    public void b(int[] iArr, int i10) {
        if (i10 == 0) {
            throw new IllegalArgumentException("No error correction bytes");
        }
        int length = iArr.length - i10;
        if (length <= 0) {
            throw new IllegalArgumentException("No data bytes provided");
        }
        b bVarA = a(i10);
        int[] iArr2 = new int[length];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        int[] iArrD = new b(this.field, iArr2).h(i10, 1).b(bVarA)[1].d();
        int length2 = i10 - iArrD.length;
        for (int i11 = 0; i11 < length2; i11++) {
            iArr[length + i11] = 0;
        }
        System.arraycopy(iArrD, 0, iArr, length + length2, iArrD.length);
    }

    public c(a aVar) {
        this.field = aVar;
        ArrayList arrayList = new ArrayList();
        this.cachedGenerators = arrayList;
        arrayList.add(new b(aVar, new int[]{1}));
    }
}
