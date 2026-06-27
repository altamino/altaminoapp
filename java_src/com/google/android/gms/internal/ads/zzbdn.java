package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
final class zzbdn implements zzgh {
    private WeakReference<zzgh> zzefl;
    private final /* synthetic */ zzbdk zzefm;

    private zzbdn(zzbdk zzbdkVar) {
        this.zzefm = zzbdkVar;
        this.zzefl = new WeakReference<>(null);
    }

    public final void zzb(zzgh zzghVar) {
        this.zzefl = new WeakReference<>(zzghVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgh
    public final void zza(boolean z, int i) {
        zzgh zzghVar = this.zzefl.get();
        if (zzghVar != null) {
            zzghVar.zza(z, i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgh
    public final void zzdo() {
        zzgh zzghVar = this.zzefl.get();
        if (zzghVar != null) {
            zzghVar.zzdo();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgh
    public final void zza(zzgd zzgdVar) {
        this.zzefm.zzm("PlayerError", zzgdVar.getMessage());
        zzgh zzghVar = this.zzefl.get();
        if (zzghVar != null) {
            zzghVar.zza(zzgdVar);
        }
    }
}
