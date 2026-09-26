package com.google.android.gms.internal.play_billing;

import java.io.Closeable;

/* JADX INFO: loaded from: classes10.dex */
public final class zzdc implements Closeable {
    private static final ThreadLocal zza = new zzdb();
    private int zzb = 0;

    public static int zza() {
        return ((zzdc) zza.get()).zzb;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        int i10 = this.zzb;
        if (i10 <= 0) {
            throw new AssertionError("Mismatched calls to RecursionDepth (possible error in core library)");
        }
        this.zzb = i10 - 1;
    }
}
