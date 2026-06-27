package com.google.android.gms.internal.ads;

import java.io.PrintWriter;

/* loaded from: classes2.dex */
final class zzdmg extends zzdmc {
    zzdmg() {
    }

    @Override // com.google.android.gms.internal.ads.zzdmc
    public final void zza(Throwable th, Throwable th2) {
    }

    @Override // com.google.android.gms.internal.ads.zzdmc
    public final void zzg(Throwable th) {
        th.printStackTrace();
    }

    @Override // com.google.android.gms.internal.ads.zzdmc
    public final void zza(Throwable th, PrintWriter printWriter) {
        th.printStackTrace(printWriter);
    }
}
