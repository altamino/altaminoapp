package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbtg extends zzbts<zzbtk> implements zzbtk {
    public zzbtg(Set<zzbuz<zzbtk>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final void zzb(final zzarx zzarxVar) {
        zza(new zzbtu(zzarxVar) { // from class: com.google.android.gms.internal.ads.zzbth
            private final zzarx zzfkk;

            {
                this.zzfkk = zzarxVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbtu
            public final void zzr(Object obj) {
                ((zzbtk) obj).zzb(this.zzfkk);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final void zza(final zzcxu zzcxuVar) {
        zza(new zzbtu(zzcxuVar) { // from class: com.google.android.gms.internal.ads.zzbti
            private final zzcxu zzfkl;

            {
                this.zzfkl = zzcxuVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbtu
            public final void zzr(Object obj) {
                ((zzbtk) obj).zza(this.zzfkl);
            }
        });
    }
}
