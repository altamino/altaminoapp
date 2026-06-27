package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
final /* synthetic */ class zzcav implements zzbam {
    static final zzbam zzdrn = new zzcav();

    private zzcav() {
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    public final Object apply(Object obj) {
        ArrayList arrayList = new ArrayList();
        for (zzadw zzadwVar : (List) obj) {
            if (zzadwVar != null) {
                arrayList.add(zzadwVar);
            }
        }
        return arrayList;
    }
}
