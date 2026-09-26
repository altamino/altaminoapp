package com.google.common.util.concurrent;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes9.dex */
public interface k<V> extends Future<V> {
    void addListener(Runnable runnable, Executor executor);
}
