package com.google.android.datatransport.runtime.scheduling.persistence;

import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.io.Closeable;

/* JADX INFO: loaded from: classes.dex */
@WorkerThread
public interface d extends Closeable {
    @Nullable
    k A0(com.google.android.datatransport.runtime.p pVar, com.google.android.datatransport.runtime.i iVar);

    void V(Iterable<k> iterable);

    Iterable<com.google.android.datatransport.runtime.p> a0();

    long l0(com.google.android.datatransport.runtime.p pVar);

    boolean m0(com.google.android.datatransport.runtime.p pVar);

    void n0(Iterable<k> iterable);

    Iterable<k> r0(com.google.android.datatransport.runtime.p pVar);

    int v();

    void y(com.google.android.datatransport.runtime.p pVar, long j6);
}
