package com.google.android.gms.internal.measurement;

import java.util.Comparator;

/* loaded from: classes2.dex */
final class zzdr implements Comparator<zzdp> {
    zzdr() {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzdp zzdpVar, zzdp zzdpVar2) {
        zzdp zzdpVar3 = zzdpVar;
        zzdp zzdpVar4 = zzdpVar2;
        zzdw zzdwVar = (zzdw) zzdpVar3.iterator();
        zzdw zzdwVar2 = (zzdw) zzdpVar4.iterator();
        while (zzdwVar.hasNext() && zzdwVar2.hasNext()) {
            int iCompare = Integer.compare(zzdp.zza(zzdwVar.nextByte()), zzdp.zza(zzdwVar2.nextByte()));
            if (iCompare != 0) {
                return iCompare;
            }
        }
        return Integer.compare(zzdpVar3.size(), zzdpVar4.size());
    }
}
