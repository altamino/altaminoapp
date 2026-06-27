package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzib implements zzie {
    private static final byte[] zzaht = new byte[4096];
    private final zzjp zzahu;
    private long zzahv;
    private long zzcd;

    public zzib(zzjp zzjpVar, long j, long j2) {
        this.zzahu = zzjpVar;
        this.zzahv = j;
        this.zzcd = j2;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    public final boolean zza(byte[] bArr, int i, int i2, boolean z) throws InterruptedException, IOException {
        int i3 = i;
        int i4 = i2;
        while (i4 > 0) {
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            int i5 = this.zzahu.read(bArr, i3, i4);
            if (i5 == -1) {
                if (z && i4 == i2) {
                    return false;
                }
                throw new EOFException();
            }
            i3 += i5;
            i4 -= i5;
        }
        this.zzahv += i2;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    public final void readFully(byte[] bArr, int i, int i2) throws InterruptedException, IOException {
        zza(bArr, i, i2, false);
    }

    @Override // com.google.android.gms.internal.ads.zzie
    public final void zzr(int i) throws InterruptedException, IOException {
        int i2 = i;
        while (i2 > 0) {
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            zzjp zzjpVar = this.zzahu;
            byte[] bArr = zzaht;
            int i3 = zzjpVar.read(bArr, 0, Math.min(bArr.length, i2));
            if (i3 == -1) {
                throw new EOFException();
            }
            i2 -= i3;
        }
        this.zzahv += i;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    public final long getPosition() {
        return this.zzahv;
    }
}
