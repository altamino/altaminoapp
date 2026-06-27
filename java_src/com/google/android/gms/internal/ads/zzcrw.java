package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;

/* loaded from: classes2.dex */
final /* synthetic */ class zzcrw implements zzbam {
    static final zzbam zzdrn = new zzcrw();

    private zzcrw() {
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    public final Object apply(Object obj) {
        final ArrayList arrayList = (ArrayList) obj;
        if (arrayList.isEmpty()) {
            return null;
        }
        return new zzcuz(arrayList) { // from class: com.google.android.gms.internal.ads.zzcrx
            private final ArrayList zzggl;

            {
                this.zzggl = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.zzcuz
            public final void zzt(Object obj2) {
                ((Bundle) obj2).putStringArrayList("android_permissions", this.zzggl);
            }
        };
    }
}
