package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.gms.common.util.VisibleForTesting;

@zzard
/* loaded from: classes2.dex */
public final class zzbez implements zzll {
    private long zzaca;
    private int zzbmh;
    private final zzrz zzegt;
    private long zzegu;
    private long zzegv;
    private long zzegw;
    private boolean zzegx;

    zzbez() {
        this(15000, 30000, 2500L, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
    }

    private zzbez(int i, int i2, long j, long j2) {
        this.zzegt = new zzrz(true, 65536);
        this.zzaca = 15000000L;
        this.zzegu = 30000000L;
        this.zzegv = 2500000L;
        this.zzegw = 5000000L;
    }

    @Override // com.google.android.gms.internal.ads.zzll
    public final void zzhd() {
        zzk(false);
    }

    @Override // com.google.android.gms.internal.ads.zzll
    public final void zza(zzlo[] zzloVarArr, zzrb zzrbVar, zzro zzroVar) {
        this.zzbmh = 0;
        for (int i = 0; i < zzloVarArr.length; i++) {
            if (zzroVar.zzbi(i) != null) {
                this.zzbmh += zzsy.zzbt(zzloVarArr[i].getTrackType());
            }
        }
        this.zzegt.zzbl(this.zzbmh);
    }

    @Override // com.google.android.gms.internal.ads.zzll
    public final void onStopped() {
        zzk(true);
    }

    @Override // com.google.android.gms.internal.ads.zzll
    public final void zzee() {
        zzk(true);
    }

    @Override // com.google.android.gms.internal.ads.zzll
    public final zzrt zzhe() {
        return this.zzegt;
    }

    @Override // com.google.android.gms.internal.ads.zzll
    public final synchronized boolean zzf(long j, boolean z) {
        long j2;
        j2 = z ? this.zzegw : this.zzegv;
        return j2 <= 0 || j >= j2;
    }

    @Override // com.google.android.gms.internal.ads.zzll
    public final synchronized boolean zzee(long j) {
        boolean z = false;
        char c = j > this.zzegu ? (char) 0 : j < this.zzaca ? (char) 2 : (char) 1;
        boolean z2 = this.zzegt.zzga() >= this.zzbmh;
        if (c == 2 || (c == 1 && this.zzegx && !z2)) {
            z = true;
        }
        this.zzegx = z;
        return this.zzegx;
    }

    public final synchronized void zzdg(int i) {
        this.zzaca = i * 1000;
    }

    public final synchronized void zzdh(int i) {
        this.zzegu = i * 1000;
    }

    public final synchronized void zzda(int i) {
        this.zzegv = i * 1000;
    }

    public final synchronized void zzdb(int i) {
        this.zzegw = i * 1000;
    }

    @VisibleForTesting
    private final void zzk(boolean z) {
        this.zzbmh = 0;
        this.zzegx = false;
        if (z) {
            this.zzegt.reset();
        }
    }
}
