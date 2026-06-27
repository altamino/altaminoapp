package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* loaded from: classes2.dex */
final class zzdmt implements Comparator<zzdmr> {
    zzdmt() {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzdmr zzdmrVar, zzdmr zzdmrVar2) {
        zzdmr zzdmrVar3 = zzdmrVar;
        zzdmr zzdmrVar4 = zzdmrVar2;
        zzdmy zzdmyVar = (zzdmy) zzdmrVar3.iterator();
        zzdmy zzdmyVar2 = (zzdmy) zzdmrVar4.iterator();
        while (zzdmyVar.hasNext() && zzdmyVar2.hasNext()) {
            int iCompare = Integer.compare(zzdmr.zzb(zzdmyVar.nextByte()), zzdmr.zzb(zzdmyVar2.nextByte()));
            if (iCompare != 0) {
                return iCompare;
            }
        }
        return Integer.compare(zzdmrVar3.size(), zzdmrVar4.size());
    }
}
