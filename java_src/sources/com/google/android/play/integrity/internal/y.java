package com.google.android.play.integrity.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes8.dex */
public abstract class y implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final TaskCompletionSource f1454a;

    y() {
        this.f1454a = null;
    }

    protected abstract void b();

    @Nullable
    final TaskCompletionSource c() {
        return this.f1454a;
    }

    public y(@Nullable TaskCompletionSource taskCompletionSource) {
        this.f1454a = taskCompletionSource;
    }

    public void a(Exception exc) {
        TaskCompletionSource taskCompletionSource = this.f1454a;
        if (taskCompletionSource != null) {
            taskCompletionSource.trySetException(exc);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            b();
        } catch (Exception e) {
            a(e);
        }
    }
}
