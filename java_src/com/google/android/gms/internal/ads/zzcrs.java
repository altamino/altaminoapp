package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes2.dex */
final class zzcrs implements zzcva<zzcuz<Bundle>> {
    private final Set<String> zzggk;

    zzcrs(Set<String> set) {
        this.zzggk = set;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcuz<Bundle>> zzalm() {
        final ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.zzggk.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return zzbar.zzm(new zzcuz(arrayList) { // from class: com.google.android.gms.internal.ads.zzcrt
            private final ArrayList zzggl;

            {
                this.zzggl = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.zzcuz
            public final void zzt(Object obj) {
                ((Bundle) obj).putStringArrayList("ad_types", this.zzggl);
            }
        });
    }
}
