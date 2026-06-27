package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer2.C;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzqh implements zzql, zzqm {
    private final Uri uri;
    private final Handler zzabq;
    private zzlr zzary;
    private final zzqi zzbia;
    private zzqm zzbib;
    private final zzrw zzbiz;
    private final zznq zzbja;
    private final int zzbjb;
    private boolean zzbjc;
    private final int zzaig = -1;
    private final String zzbid = null;
    private final zzlt zzart = new zzlt();

    public zzqh(Uri uri, zzrw zzrwVar, zznq zznqVar, int i, Handler handler, zzqi zzqiVar, String str, int i2) {
        this.uri = uri;
        this.zzbiz = zzrwVar;
        this.zzbja = zznqVar;
        this.zzabq = handler;
        this.zzbia = zzqiVar;
        this.zzbjb = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzql
    public final void zzjf() throws IOException {
    }

    @Override // com.google.android.gms.internal.ads.zzql
    public final void zza(zzkv zzkvVar, boolean z, zzqm zzqmVar) {
        this.zzbib = zzqmVar;
        this.zzary = new zzqz(C.TIME_UNSET, false);
        zzqmVar.zzb(this.zzary, null);
    }

    @Override // com.google.android.gms.internal.ads.zzql
    public final zzqj zza(int i, zzrt zzrtVar) {
        zzsk.checkArgument(i == 0);
        return new zzpz(this.uri, this.zzbiz.zzju(), this.zzbja.zzih(), this.zzaig, this.zzabq, this.zzbia, this, zzrtVar, null, this.zzbjb);
    }

    @Override // com.google.android.gms.internal.ads.zzql
    public final void zzb(zzqj zzqjVar) {
        ((zzpz) zzqjVar).release();
    }

    @Override // com.google.android.gms.internal.ads.zzql
    public final void zzjg() {
        this.zzbib = null;
    }

    @Override // com.google.android.gms.internal.ads.zzqm
    public final void zzb(zzlr zzlrVar, Object obj) {
        boolean z = zzlrVar.zza(0, this.zzart, false).zzack != C.TIME_UNSET;
        if (!this.zzbjc || z) {
            this.zzary = zzlrVar;
            this.zzbjc = z;
            this.zzbib.zzb(this.zzary, null);
        }
    }
}
