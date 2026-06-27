package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;

/* loaded from: classes2.dex */
final class zzakd implements Runnable {
    private final /* synthetic */ String zzdbw;
    private final /* synthetic */ zzajy zzdbx;

    zzakd(zzajy zzajyVar, String str) {
        this.zzdbx = zzajyVar;
        this.zzdbw = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdbx.zzdbs.loadData(this.zzdbw, "text/html", C.UTF8_NAME);
    }
}
