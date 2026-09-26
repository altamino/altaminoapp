package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes8.dex */
final class y0 {
    private static final String DIVIDER_QUEUE_OPERATIONS = ",";

    @VisibleForTesting
    static final String KEY_TOPIC_OPERATIONS_QUEUE = "topic_operation_queue";

    @VisibleForTesting
    static final String PREFERENCES = "com.google.android.gms.appid";

    @GuardedBy
    private static WeakReference<y0> topicsStoreWeakReference;
    private final SharedPreferences sharedPreferences;
    private final Executor syncExecutor;
    private u0 topicOperationsQueue;

    @WorkerThread
    private synchronized void c() {
        this.topicOperationsQueue = u0.c(this.sharedPreferences, KEY_TOPIC_OPERATIONS_QUEUE, DIVIDER_QUEUE_OPERATIONS, this.syncExecutor);
    }

    @Nullable
    synchronized x0 b() {
        return x0.a(this.topicOperationsQueue.e());
    }

    synchronized boolean d(x0 x0Var) {
        return this.topicOperationsQueue.f(x0Var.e());
    }

    @WorkerThread
    public static synchronized y0 a(Context context, Executor executor) {
        y0 y0Var;
        try {
            WeakReference<y0> weakReference = topicsStoreWeakReference;
            y0Var = weakReference != null ? weakReference.get() : null;
            if (y0Var == null) {
                y0Var = new y0(context.getSharedPreferences(PREFERENCES, 0), executor);
                y0Var.c();
                topicsStoreWeakReference = new WeakReference<>(y0Var);
            }
        } catch (Throwable th) {
            throw th;
        }
        return y0Var;
    }

    private y0(SharedPreferences sharedPreferences, Executor executor) {
        this.syncExecutor = executor;
        this.sharedPreferences = sharedPreferences;
    }
}
