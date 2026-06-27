package com.google.android.gms.internal.ads;

@zzard
/* loaded from: classes2.dex */
public final class zzbgf extends zzbft {
    public zzbgf(zzbdf zzbdfVar) {
        super(zzbdfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final void abort() {
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final boolean zzex(String str) {
        zzbdf zzbdfVar = this.zzeht.get();
        if (zzbdfVar != null) {
            zzbdfVar.zza(zzey(str), this);
        }
        zzbad.zzep("VideoStreamNoopCache is doing nothing.");
        zza(str, zzey(str), "noop", "Noop cache is a noop.");
        return false;
    }
}
