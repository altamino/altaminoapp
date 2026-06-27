package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;

@zzard
/* loaded from: classes2.dex */
final class zzbfk implements zzdsw {
    private final ByteBuffer zzaxl;

    zzbfk(ByteBuffer byteBuffer) {
        this.zzaxl = byteBuffer.duplicate();
    }

    @Override // com.google.android.gms.internal.ads.zzdsw, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final int read(ByteBuffer byteBuffer) throws IOException {
        if (this.zzaxl.remaining() == 0 && byteBuffer.remaining() > 0) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), this.zzaxl.remaining());
        byte[] bArr = new byte[iMin];
        this.zzaxl.get(bArr);
        byteBuffer.put(bArr);
        return iMin;
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final long size() throws IOException {
        return this.zzaxl.limit();
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final long position() throws IOException {
        return this.zzaxl.position();
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final void zzff(long j) throws IOException {
        this.zzaxl.position((int) j);
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final ByteBuffer zzi(long j, long j2) throws IOException {
        int iPosition = this.zzaxl.position();
        this.zzaxl.position((int) j);
        ByteBuffer byteBufferSlice = this.zzaxl.slice();
        byteBufferSlice.limit((int) j2);
        this.zzaxl.position(iPosition);
        return byteBufferSlice;
    }
}
