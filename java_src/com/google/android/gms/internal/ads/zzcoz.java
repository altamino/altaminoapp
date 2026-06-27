package com.google.android.gms.internal.ads;

import android.view.View;

/* loaded from: classes2.dex */
public final class zzcoz implements com.google.android.gms.ads.internal.zzf {
    private com.google.android.gms.ads.internal.zzf zzgdd;

    public final synchronized void zza(com.google.android.gms.ads.internal.zzf zzfVar) {
        this.zzgdd = zzfVar;
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final synchronized void zzg(View view) {
        if (this.zzgdd != null) {
            this.zzgdd.zzg(view);
        }
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final synchronized void zzky() {
        if (this.zzgdd != null) {
            this.zzgdd.zzky();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzf
    public final synchronized void zzkz() {
        if (this.zzgdd != null) {
            this.zzgdd.zzkz();
        }
    }
}
