package com.google.firebase.crashlytics.internal.common;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public final class g0 {
    private final AtomicInteger recordedOnDemandExceptions = new AtomicInteger();
    private final AtomicInteger droppedOnDemandExceptions = new AtomicInteger();

    public void a() {
        this.droppedOnDemandExceptions.getAndIncrement();
    }

    public void b() {
        this.recordedOnDemandExceptions.getAndIncrement();
    }

    public void c() {
        this.droppedOnDemandExceptions.set(0);
    }
}
