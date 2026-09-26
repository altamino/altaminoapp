package com.google.firebase.messaging;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes6.dex */
class a1 {
    static final String ERROR_INTERNAL_SERVER_ERROR = "INTERNAL_SERVER_ERROR";
    static final String ERROR_SERVICE_NOT_AVAILABLE = "SERVICE_NOT_AVAILABLE";
    private static final long MAX_DELAY_SEC = TimeUnit.HOURS.toSeconds(8);
    private static final long MIN_DELAY_SEC = 30;
    private static final long RPC_TIMEOUT_SEC = 30;
    private final Context context;
    private final FirebaseMessaging firebaseMessaging;
    private final g0 metadata;
    private final b0 rpc;
    private final y0 store;
    private final ScheduledExecutorService syncExecutor;

    @GuardedBy
    private final Map<String, ArrayDeque<TaskCompletionSource<Void>>> pendingOperations = new ArrayMap();

    @GuardedBy
    private boolean syncScheduledOrRunning = false;

    synchronized boolean h() {
        return this.syncScheduledOrRunning;
    }

    synchronized void m(boolean z6) {
        this.syncScheduledOrRunning = z6;
    }

    @WorkerThread
    boolean p() throws IOException {
        while (true) {
            synchronized (this) {
                try {
                    x0 x0VarB = this.store.b();
                    if (x0VarB == null) {
                        if (g()) {
                            Log.d(e.TAG, "topic sync succeeded");
                        }
                        return true;
                    }
                    if (!k(x0VarB)) {
                        return false;
                    }
                    this.store.d(x0VarB);
                    j(x0VarB);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @WorkerThread
    private static <T> void b(Task<T> task) throws IOException {
        try {
            Tasks.await(task, 30L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            e = e;
            throw new IOException(ERROR_SERVICE_NOT_AVAILABLE, e);
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof IOException) {
                throw ((IOException) cause);
            }
            if (!(cause instanceof RuntimeException)) {
                throw new IOException(e2);
            }
            throw ((RuntimeException) cause);
        } catch (TimeoutException e6) {
            e = e6;
            throw new IOException(ERROR_SERVICE_NOT_AVAILABLE, e);
        }
    }

    @WorkerThread
    private void c(String str) throws IOException {
        b(this.rpc.k(this.firebaseMessaging.i(), str));
    }

    @WorkerThread
    private void d(String str) throws IOException {
        b(this.rpc.l(this.firebaseMessaging.i(), str));
    }

    @VisibleForTesting
    static Task<a1> e(final FirebaseMessaging firebaseMessaging, final g0 g0Var, final b0 b0Var, final Context context, @NonNull final ScheduledExecutorService scheduledExecutorService) {
        return Tasks.call(scheduledExecutorService, new Callable() { // from class: com.google.firebase.messaging.z0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return a1.i(context, scheduledExecutorService, firebaseMessaging, g0Var, b0Var);
            }
        });
    }

    static boolean g() {
        return Log.isLoggable(e.TAG, 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable(e.TAG, 3));
    }

    private void j(x0 x0Var) {
        synchronized (this.pendingOperations) {
            try {
                String strE = x0Var.e();
                if (this.pendingOperations.containsKey(strE)) {
                    ArrayDeque<TaskCompletionSource<Void>> arrayDeque = this.pendingOperations.get(strE);
                    TaskCompletionSource<Void> taskCompletionSourcePoll = arrayDeque.poll();
                    if (taskCompletionSourcePoll != null) {
                        taskCompletionSourcePoll.setResult(null);
                    }
                    if (arrayDeque.isEmpty()) {
                        this.pendingOperations.remove(strE);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    boolean f() {
        return this.store.b() != null;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002c  */
    @WorkerThread
    boolean k(x0 x0Var) throws IOException {
        byte b7;
        try {
            String strB = x0Var.b();
            int iHashCode = strB.hashCode();
            if (iHashCode != 83) {
                if (iHashCode == 85 && strB.equals("U")) {
                    b7 = 1;
                } else {
                    b7 = -1;
                }
            } else if (strB.equals(ExifInterface.LATITUDE_SOUTH)) {
                b7 = 0;
            } else {
                b7 = -1;
            }
            if (b7 == 0) {
                c(x0Var.c());
                if (g()) {
                    Log.d(e.TAG, "Subscribe to topic: " + x0Var.c() + " succeeded.");
                }
            } else if (b7 == 1) {
                d(x0Var.c());
                if (g()) {
                    Log.d(e.TAG, "Unsubscribe from topic: " + x0Var.c() + " succeeded.");
                }
            } else if (g()) {
                Log.d(e.TAG, "Unknown topic operation" + x0Var + ".");
            }
            return true;
        } catch (IOException e) {
            if (!ERROR_SERVICE_NOT_AVAILABLE.equals(e.getMessage()) && !ERROR_INTERNAL_SERVER_ERROR.equals(e.getMessage())) {
                if (e.getMessage() != null) {
                    throw e;
                }
                Log.e(e.TAG, "Topic operation failed without exception message. Will retry Topic operation.");
                return false;
            }
            Log.e(e.TAG, "Topic operation failed: " + e.getMessage() + ". Will retry Topic operation.");
            return false;
        }
    }

    void l(Runnable runnable, long j6) {
        this.syncExecutor.schedule(runnable, j6, TimeUnit.SECONDS);
    }

    void q(long j6) {
        l(new b1(this, this.context, this.metadata, Math.min(Math.max(30L, 2 * j6), MAX_DELAY_SEC)), j6);
        m(true);
    }

    private a1(FirebaseMessaging firebaseMessaging, g0 g0Var, y0 y0Var, b0 b0Var, Context context, @NonNull ScheduledExecutorService scheduledExecutorService) {
        this.firebaseMessaging = firebaseMessaging;
        this.metadata = g0Var;
        this.store = y0Var;
        this.rpc = b0Var;
        this.context = context;
        this.syncExecutor = scheduledExecutorService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ a1 i(Context context, ScheduledExecutorService scheduledExecutorService, FirebaseMessaging firebaseMessaging, g0 g0Var, b0 b0Var) throws Exception {
        return new a1(firebaseMessaging, g0Var, y0.a(context, scheduledExecutorService), b0Var, context, scheduledExecutorService);
    }

    private void n() {
        if (!h()) {
            q(0L);
        }
    }

    void o() {
        if (f()) {
            n();
        }
    }
}
