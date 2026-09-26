package com.bytedance.tea.common.utility.b;

import com.bytedance.tea.common.utility.Logger;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public class b implements Runnable {
    private Runnable d;
    private final boolean e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ExecutorService f911b = Executors.newCachedThreadPool(new a("ThreadPlus-cached", true));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ExecutorService f912c = Executors.newFixedThreadPool(5, new a("ThreadPlus-fixed", true));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static final AtomicInteger f910a = new AtomicInteger();

    public b(Runnable runnable, String str, boolean z6) {
        this.d = runnable;
        this.e = z6;
    }

    public b() {
        this(false);
    }

    @Override // java.lang.Runnable
    public void run() {
        Runnable runnable = this.d;
        if (runnable != null) {
            runnable.run();
        }
    }

    public b(boolean z6) {
        this.e = z6;
    }

    public void a() {
        Runnable runnable;
        if (Logger.debug()) {
            runnable = new Runnable() { // from class: com.bytedance.tea.common.utility.b.b.1
                @Override // java.lang.Runnable
                public void run() {
                    Logger.d("ThreadPlus", "thread count: " + b.f910a.incrementAndGet());
                    try {
                        b.this.run();
                    } catch (Exception e) {
                        Logger.w("ThreadPlus", "Thread crashed!", e);
                    }
                    Logger.d("ThreadPlus", "thread count: " + b.f910a.decrementAndGet());
                }
            };
        } else {
            runnable = this;
        }
        if (this.e) {
            f912c.submit(runnable);
        } else {
            f911b.submit(runnable);
        }
    }
}
