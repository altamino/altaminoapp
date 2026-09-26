package com.google.android.play.integrity.internal;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes11.dex */
final class b0 extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ TaskCompletionSource f1431a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ y f1432b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ d f1433c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    b0(d dVar, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2, y yVar) {
        super(taskCompletionSource);
        this.f1433c = dVar;
        this.f1431a = taskCompletionSource2;
        this.f1432b = yVar;
    }

    @Override // com.google.android.play.integrity.internal.y
    public final void b() {
        synchronized (this.f1433c.g) {
            try {
                d.o(this.f1433c, this.f1431a);
                if (this.f1433c.m.getAndIncrement() > 0) {
                    this.f1433c.f1438c.c("Already connected to the service.", new Object[0]);
                }
                d.q(this.f1433c, this.f1432b);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
