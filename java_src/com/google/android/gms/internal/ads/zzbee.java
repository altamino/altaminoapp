package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzbee implements zzgh {
    private final /* synthetic */ zzbdq zzegb;

    zzbee(zzbdq zzbdqVar) {
        this.zzegb = zzbdqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgh
    public final void zzdo() {
    }

    @Override // com.google.android.gms.internal.ads.zzgh
    public final void zza(boolean z, int i) {
        if (this.zzegb.zzeft != i) {
            this.zzegb.zzeft = i;
            if (i == 4) {
                this.zzegb.zzyy();
            } else {
                if (i != 5) {
                    return;
                }
                this.zzegb.zzyk();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgh
    public final void zza(zzgd zzgdVar) {
        this.zzegb.zzn("PlayerError", zzgdVar.getMessage());
    }
}
