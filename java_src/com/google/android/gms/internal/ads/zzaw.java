package com.google.android.gms.internal.ads;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzaw extends ByteArrayOutputStream {
    private final zzal zzbr;

    public zzaw(zzal zzalVar, int i) {
        this.zzbr = zzalVar;
        ((ByteArrayOutputStream) this).buf = this.zzbr.zzc(Math.max(i, 256));
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.zzbr.zza(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = null;
        super.close();
    }

    public final void finalize() {
        this.zzbr.zza(((ByteArrayOutputStream) this).buf);
    }

    private final void zzd(int i) {
        int i2 = ((ByteArrayOutputStream) this).count;
        if (i2 + i <= ((ByteArrayOutputStream) this).buf.length) {
            return;
        }
        byte[] bArrZzc = this.zzbr.zzc((i2 + i) << 1);
        System.arraycopy(((ByteArrayOutputStream) this).buf, 0, bArrZzc, 0, ((ByteArrayOutputStream) this).count);
        this.zzbr.zza(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = bArrZzc;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i, int i2) {
        zzd(i2);
        super.write(bArr, i, i2);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(int i) {
        zzd(1);
        super.write(i);
    }
}
