package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;

/* loaded from: classes2.dex */
final class zzwg extends PushbackInputStream {
    private final /* synthetic */ zzwd zzbxj;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzwg(zzwd zzwdVar, InputStream inputStream, int i) {
        super(inputStream, 1);
        this.zzbxj = zzwdVar;
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() throws IOException {
        this.zzbxj.zzbxa.disconnect();
        super.close();
    }
}
