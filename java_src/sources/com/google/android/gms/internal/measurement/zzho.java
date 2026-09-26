package com.google.android.gms.internal.measurement;

import java.util.Comparator;

/* JADX INFO: loaded from: classes6.dex */
final class zzho implements Comparator<zzhm> {
    zzho() {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzhm zzhmVar, zzhm zzhmVar2) {
        zzhm zzhmVar3 = zzhmVar;
        zzhm zzhmVar4 = zzhmVar2;
        zzhs zzhsVar = (zzhs) zzhmVar3.iterator();
        zzhs zzhsVar2 = (zzhs) zzhmVar4.iterator();
        while (zzhsVar.hasNext() && zzhsVar2.hasNext()) {
            int iCompareTo = Integer.valueOf(zzhm.zza(zzhsVar.zza())).compareTo(Integer.valueOf(zzhm.zza(zzhsVar2.zza())));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        return Integer.valueOf(zzhmVar3.zzb()).compareTo(Integer.valueOf(zzhmVar4.zzb()));
    }
}
