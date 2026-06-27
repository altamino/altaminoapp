package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

/* loaded from: classes2.dex */
public final class zzmx implements zzlx {
    private boolean zzaxm;
    private zzmw zzays;
    private long zzayu;
    private long zzayv;
    private float zzauh = 1.0f;
    private float zzaui = 1.0f;
    private int zzafu = -1;
    private int zzaxh = -1;
    private ByteBuffer zzaxl = zzlx.zzavh;
    private ShortBuffer zzayt = this.zzaxl.asShortBuffer();
    private ByteBuffer zzaws = zzlx.zzavh;

    @Override // com.google.android.gms.internal.ads.zzlx
    public final int zzhk() {
        return 2;
    }

    public final float zzb(float f) {
        this.zzauh = zzsy.zza(f, 0.1f, 8.0f);
        return this.zzauh;
    }

    public final float zzc(float f) {
        this.zzaui = zzsy.zza(f, 0.1f, 8.0f);
        return f;
    }

    public final long zzhz() {
        return this.zzayu;
    }

    public final long zzia() {
        return this.zzayv;
    }

    @Override // com.google.android.gms.internal.ads.zzlx
    public final boolean zzb(int i, int i2, int i3) throws zzly {
        if (i3 != 2) {
            throw new zzly(i, i2, i3);
        }
        if (this.zzaxh == i && this.zzafu == i2) {
            return false;
        }
        this.zzaxh = i;
        this.zzafu = i2;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzlx
    public final boolean isActive() {
        return Math.abs(this.zzauh - 1.0f) >= 0.01f || Math.abs(this.zzaui - 1.0f) >= 0.01f;
    }

    @Override // com.google.android.gms.internal.ads.zzlx
    public final int zzhj() {
        return this.zzafu;
    }

    @Override // com.google.android.gms.internal.ads.zzlx
    public final void zzi(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.zzayu += iRemaining;
            this.zzays.zza(shortBufferAsShortBuffer);
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
        int iZzhx = (this.zzays.zzhx() * this.zzafu) << 1;
        if (iZzhx > 0) {
            if (this.zzaxl.capacity() < iZzhx) {
                this.zzaxl = ByteBuffer.allocateDirect(iZzhx).order(ByteOrder.nativeOrder());
                this.zzayt = this.zzaxl.asShortBuffer();
            } else {
                this.zzaxl.clear();
                this.zzayt.clear();
            }
            this.zzays.zzb(this.zzayt);
            this.zzayv += iZzhx;
            this.zzaxl.limit(iZzhx);
            this.zzaws = this.zzaxl;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlx
    public final void zzhl() {
        this.zzays.zzhl();
        this.zzaxm = true;
    }

    @Override // com.google.android.gms.internal.ads.zzlx
    public final ByteBuffer zzhm() {
        ByteBuffer byteBuffer = this.zzaws;
        this.zzaws = zzlx.zzavh;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzlx
    public final boolean zzdx() {
        if (!this.zzaxm) {
            return false;
        }
        zzmw zzmwVar = this.zzays;
        return zzmwVar == null || zzmwVar.zzhx() == 0;
    }

    @Override // com.google.android.gms.internal.ads.zzlx
    public final void flush() {
        this.zzays = new zzmw(this.zzaxh, this.zzafu);
        this.zzays.setSpeed(this.zzauh);
        this.zzays.zza(this.zzaui);
        this.zzaws = zzlx.zzavh;
        this.zzayu = 0L;
        this.zzayv = 0L;
        this.zzaxm = false;
    }

    @Override // com.google.android.gms.internal.ads.zzlx
    public final void reset() {
        this.zzays = null;
        this.zzaxl = zzlx.zzavh;
        this.zzayt = this.zzaxl.asShortBuffer();
        this.zzaws = zzlx.zzavh;
        this.zzafu = -1;
        this.zzaxh = -1;
        this.zzayu = 0L;
        this.zzayv = 0L;
        this.zzaxm = false;
    }
}
