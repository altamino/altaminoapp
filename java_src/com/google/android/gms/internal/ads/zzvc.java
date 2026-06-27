package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* loaded from: classes2.dex */
final class zzvc implements Comparator<zzvi> {
    zzvc(zzvb zzvbVar) {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzvi zzviVar, zzvi zzviVar2) {
        zzvi zzviVar3 = zzviVar;
        zzvi zzviVar4 = zzviVar2;
        int i = zzviVar3.zzbvw - zzviVar4.zzbvw;
        return i != 0 ? i : (int) (zzviVar3.value - zzviVar4.value);
    }
}
