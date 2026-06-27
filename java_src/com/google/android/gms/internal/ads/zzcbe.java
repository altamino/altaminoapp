package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
final /* synthetic */ class zzcbe implements zzbam {
    static final zzbam zzdrn = new zzcbe();

    private zzcbe() {
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    public final Object apply(Object obj) {
        ArrayList arrayList = new ArrayList();
        for (zzcbg zzcbgVar : (List) obj) {
            if (zzcbgVar != null) {
                arrayList.add(zzcbgVar);
            }
        }
        return arrayList;
    }
}
