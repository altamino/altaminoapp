package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes2.dex */
final class zzqd implements Runnable {
    private final /* synthetic */ zzpz zzbis;
    private final /* synthetic */ IOException zzbiu;

    zzqd(zzpz zzpzVar, IOException iOException) {
        this.zzbis = zzpzVar;
        this.zzbiu = iOException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbis.zzbia.zzb(this.zzbiu);
    }
}
