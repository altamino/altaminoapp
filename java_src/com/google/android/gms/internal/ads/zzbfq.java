package com.google.android.gms.internal.ads;

@zzard
/* loaded from: classes2.dex */
public final class zzbfq extends zzawv {
    final zzbdf zzebt;
    private final String zzecf;
    private final String[] zzecg;
    final zzbft zzehq;

    zzbfq(zzbdf zzbdfVar, zzbft zzbftVar, String str, String[] strArr) {
        this.zzebt = zzbdfVar;
        this.zzehq = zzbftVar;
        this.zzecf = str;
        this.zzecg = strArr;
        com.google.android.gms.ads.internal.zzk.zzmc().zza(this);
    }

    @Override // com.google.android.gms.internal.ads.zzawv
    public final void zzto() {
        try {
            this.zzehq.zze(this.zzecf, this.zzecg);
        } finally {
            zzaxi.zzdvv.post(new zzbfr(this));
        }
    }
}
