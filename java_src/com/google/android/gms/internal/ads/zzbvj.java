package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbvj extends zzbts<zzahy> implements zzahy {
    public zzbvj(Set<zzbuz<zzahy>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzahy
    public final synchronized void zzrq() {
        zza(zzbvk.zzfka);
    }

    @Override // com.google.android.gms.internal.ads.zzahy
    public final void zza(final zzato zzatoVar) {
        zza(new zzbtu(zzatoVar) { // from class: com.google.android.gms.internal.ads.zzbvl
            private final zzato zzflg;

            {
                this.zzflg = zzatoVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbtu
            public final void zzr(Object obj) {
                ((zzahy) obj).zza(this.zzflg);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzahy
    public final void zzrr() {
        zza(zzbvm.zzfka);
    }
}
