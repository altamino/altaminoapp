package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* loaded from: classes2.dex */
final class zzmq implements zzlx {
    private int zzafu;
    private ByteBuffer zzaws;
    private int zzaxh;
    private int[] zzaxi;
    private boolean zzaxj;
    private int[] zzaxk;
    private ByteBuffer zzaxl;
    private boolean zzaxm;

    public zzmq() {
        ByteBuffer byteBuffer = zzlx.zzavh;
        this.zzaxl = byteBuffer;
        this.zzaws = byteBuffer;
        this.zzafu = -1;
        this.zzaxh = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzlx
    public final int zzhk() {
        return 2;
    }

    public final void zzb(int[] iArr) {
        this.zzaxi = iArr;
    }

    @Override // com.google.android.gms.internal.ads.zzlx
    public final boolean zzb(int i, int i2, int i3) throws zzly {
        boolean z = !Arrays.equals(this.zzaxi, this.zzaxk);
        this.zzaxk = this.zzaxi;
        if (this.zzaxk == null) {
            this.zzaxj = false;
            return z;
        }
        if (i3 != 2) {
            throw new zzly(i, i2, i3);
        }
        if (!z && this.zzaxh == i && this.zzafu == i2) {
            return false;
        }
        this.zzaxh = i;
        this.zzafu = i2;
        this.zzaxj = i2 != this.zzaxk.length;
        int i4 = 0;
        while (true) {
            int[] iArr = this.zzaxk;
            if (i4 >= iArr.length) {
                return true;
            }
            int i5 = iArr[i4];
            if (i5 >= i2) {
                throw new zzly(i, i2, i3);
            }
            this.zzaxj = (i5 != i4) | this.zzaxj;
            i4++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlx
    public final boolean isActive() {
        return this.zzaxj;
    }

    @Override // com.google.android.gms.internal.ads.zzlx
    public final int zzhj() {
        int[] iArr = this.zzaxk;
        return iArr == null ? this.zzafu : iArr.length;
    }

    @Override // com.google.android.gms.internal.ads.zzlx
    public final void zzi(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int length = (((iLimit - iPosition) / (this.zzafu * 2)) * this.zzaxk.length) << 1;
        if (this.zzaxl.capacity() < length) {
            this.zzaxl = ByteBuffer.allocateDirect(length).order(ByteOrder.nativeOrder());
        } else {
            this.zzaxl.clear();
        }
        while (iPosition < iLimit) {
            for (int i : this.zzaxk) {
                this.zzaxl.putShort(byteBuffer.getShort((i * 2) + iPosition));
            }
            iPosition += this.zzafu << 1;
        }
        byteBuffer.position(iLimit);
        this.zzaxl.flip();
        this.zzaws = this.zzaxl;
    }

    @Override // com.google.android.gms.internal.ads.zzlx
    public final void zzhl() {
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
        return this.zzaxm && this.zzaws == zzlx.zzavh;
    }

    @Override // com.google.android.gms.internal.ads.zzlx
    public final void flush() {
        this.zzaws = zzlx.zzavh;
        this.zzaxm = false;
    }

    @Override // com.google.android.gms.internal.ads.zzlx
    public final void reset() {
        flush();
        this.zzaxl = zzlx.zzavh;
        this.zzafu = -1;
        this.zzaxh = -1;
        this.zzaxk = null;
        this.zzaxj = false;
    }
}
