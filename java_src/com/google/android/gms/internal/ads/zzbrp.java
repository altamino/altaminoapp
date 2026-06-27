package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbrp extends zzbts<zzbrs> implements zzbrs {
    public zzbrp(Set<zzbuz<zzbrs>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzbrs
    public final void zzcs(final int i) {
        zza(new zzbtu(i) { // from class: com.google.android.gms.internal.ads.zzbrq
            private final int zzdyz;

            {
                this.zzdyz = i;
            }

            @Override // com.google.android.gms.internal.ads.zzbtu
            public final void zzr(Object obj) {
                ((zzbrs) obj).zzcs(this.zzdyz);
            }
        });
    }
}
