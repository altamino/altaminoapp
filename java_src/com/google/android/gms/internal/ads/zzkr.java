package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;

/* loaded from: classes2.dex */
final class zzkr implements ThreadFactory {
    private final /* synthetic */ String zzaqz;

    zzkr(String str) {
        this.zzaqz = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.zzaqz);
    }
}
