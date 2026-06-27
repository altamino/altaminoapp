package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;

@zzard
/* loaded from: classes2.dex */
public final class zzavf implements zzue {
    private final Object lock;
    private String zzchk;
    private final Context zzcko;
    private boolean zzdsc;

    public zzavf(Context context, String str) {
        this.zzcko = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzchk = str;
        this.zzdsc = false;
        this.lock = new Object();
    }

    public final void zzag(boolean z) {
        if (com.google.android.gms.ads.internal.zzk.zzme().zzx(this.zzcko)) {
            synchronized (this.lock) {
                if (this.zzdsc == z) {
                    return;
                }
                this.zzdsc = z;
                if (TextUtils.isEmpty(this.zzchk)) {
                    return;
                }
                if (this.zzdsc) {
                    com.google.android.gms.ads.internal.zzk.zzme().zzd(this.zzcko, this.zzchk);
                } else {
                    com.google.android.gms.ads.internal.zzk.zzme().zze(this.zzcko, this.zzchk);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzue
    public final void zza(zzud zzudVar) {
        zzag(zzudVar.zzbtk);
    }

    public final String getAdUnitId() {
        return this.zzchk;
    }
}
