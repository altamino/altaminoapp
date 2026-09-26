package com.google.android.gms.internal.measurement;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes7.dex */
final class zzdr implements ThreadFactory {
    private ThreadFactory zza = Executors.defaultThreadFactory();

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.zza.newThread(runnable);
        threadNewThread.setName("ScionFrontendApi");
        return threadNewThread;
    }

    zzdr(zzdf zzdfVar) {
    }
}
