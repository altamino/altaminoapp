package com.google.android.gms.internal.ads;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
final class zzap extends FilterInputStream {
    private final long zzcd;
    private long zzce;

    zzap(InputStream inputStream, long j) {
        super(inputStream);
        this.zzcd = j;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int i = super.read();
        if (i != -1) {
            this.zzce++;
        }
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = super.read(bArr, i, i2);
        if (i3 != -1) {
            this.zzce += i3;
        }
        return i3;
    }

    final long zzo() {
        return this.zzcd - this.zzce;
    }
}
