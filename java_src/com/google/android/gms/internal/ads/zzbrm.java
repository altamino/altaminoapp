package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbrm extends zzbts<zzbro> implements zzbro {
    public zzbrm(Set<zzbuz<zzbro>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzbro
    public final void onAdFailedToLoad(final int i) {
        zza(new zzbtu(i) { // from class: com.google.android.gms.internal.ads.zzbrn
            private final int zzdyz;

            {
                this.zzdyz = i;
            }

            @Override // com.google.android.gms.internal.ads.zzbtu
            public final void zzr(Object obj) {
                ((zzbro) obj).onAdFailedToLoad(this.zzdyz);
            }
        });
    }
}
