package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* loaded from: classes2.dex */
public final class zzvl implements Comparator<zzuz> {
    public zzvl(zzvk zzvkVar) {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzuz zzuzVar, zzuz zzuzVar2) {
        zzuz zzuzVar3 = zzuzVar;
        zzuz zzuzVar4 = zzuzVar2;
        if (zzuzVar3.zznb() < zzuzVar4.zznb()) {
            return -1;
        }
        if (zzuzVar3.zznb() > zzuzVar4.zznb()) {
            return 1;
        }
        if (zzuzVar3.zzna() < zzuzVar4.zzna()) {
            return -1;
        }
        if (zzuzVar3.zzna() > zzuzVar4.zzna()) {
            return 1;
        }
        float fZznd = (zzuzVar3.zznd() - zzuzVar3.zznb()) * (zzuzVar3.zznc() - zzuzVar3.zzna());
        float fZznd2 = (zzuzVar4.zznd() - zzuzVar4.zznb()) * (zzuzVar4.zznc() - zzuzVar4.zzna());
        if (fZznd > fZznd2) {
            return -1;
        }
        return fZznd < fZznd2 ? 1 : 0;
    }
}
