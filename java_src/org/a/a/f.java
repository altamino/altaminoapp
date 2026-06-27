package org.a.a;

import java.util.Comparator;

/* loaded from: classes4.dex */
public final class f implements Comparator<d> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(d dVar, d dVar2) {
        d dVar3 = dVar;
        d dVar4 = dVar2;
        int iC = dVar4.c() - dVar3.c();
        return iC == 0 ? dVar3.a() - dVar4.a() : iC;
    }
}
