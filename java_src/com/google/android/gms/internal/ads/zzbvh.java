package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes2.dex */
public final class zzbvh implements zzbvg {
    private final List<String> zzdnl;
    private final zzdae zzffb;
    private boolean zzflf;

    public zzbvh(zzcxm zzcxmVar, zzdae zzdaeVar) {
        this.zzdnl = zzcxmVar.zzdnl;
        this.zzffb = zzdaeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvg
    public final void zzagx() {
        if (this.zzflf) {
            return;
        }
        this.zzffb.zzh(this.zzdnl);
        this.zzflf = true;
    }
}
