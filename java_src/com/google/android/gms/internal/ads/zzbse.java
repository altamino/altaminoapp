package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbse extends zzbts<zzbrl> {
    public zzbse(Set<zzbuz<zzbrl>> set) {
        super(set);
    }

    public final void onAdClosed() {
        zza(zzbsf.zzfka);
    }

    public final void onAdLeftApplication() {
        zza(zzbsg.zzfka);
    }

    public final void onAdOpened() {
        zza(zzbsh.zzfka);
    }

    public final void onRewardedVideoStarted() {
        zza(zzbsi.zzfka);
    }

    public final void zzb(final zzasr zzasrVar, final String str, final String str2) {
        zza(new zzbtu(zzasrVar, str, str2) { // from class: com.google.android.gms.internal.ads.zzbsj
            private final String zzdbk;
            private final String zzdsr;
            private final zzasr zzfkd;

            {
                this.zzfkd = zzasrVar;
                this.zzdbk = str;
                this.zzdsr = str2;
            }

            @Override // com.google.android.gms.internal.ads.zzbtu
            public final void zzr(Object obj) {
                ((zzbrl) obj).zzb(this.zzfkd, this.zzdbk, this.zzdsr);
            }
        });
    }

    public final void onRewardedVideoCompleted() {
        zza(zzbsk.zzfka);
    }
}
