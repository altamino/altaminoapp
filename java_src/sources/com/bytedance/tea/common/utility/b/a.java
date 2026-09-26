package com.bytedance.tea.common.utility.b;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public class a implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f907a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AtomicInteger f908b = new AtomicInteger();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f909c;

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, this.f907a + "-" + this.f908b.incrementAndGet());
        if (!this.f909c) {
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
        }
        return thread;
    }

    public a(String str, boolean z6) {
        this.f907a = str;
        this.f909c = z6;
    }
}
