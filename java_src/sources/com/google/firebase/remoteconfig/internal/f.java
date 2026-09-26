package com.google.firebase.remoteconfig.internal;

import android.util.Log;
import androidx.annotation.AnyThread;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes7.dex */
@AnyThread
public class f {
    static final long DISK_READ_TIMEOUT_IN_SECONDS = 5;

    @Nullable
    @GuardedBy
    private Task<g> cachedContainerTask = null;
    private final Executor executor;
    private final u storageClient;

    @GuardedBy
    private static final Map<String, f> clientInstances = new HashMap();
    private static final Executor DIRECT_EXECUTOR = new androidx.media3.exoplayer.dash.offline.a();

    private static class b<TResult> implements OnSuccessListener<TResult>, OnFailureListener, OnCanceledListener {
        private final CountDownLatch latch;

        private b() {
            this.latch = new CountDownLatch(1);
        }

        public boolean a(long j6, TimeUnit timeUnit) throws InterruptedException {
            return this.latch.await(j6, timeUnit);
        }

        @Override // com.google.android.gms.tasks.OnCanceledListener
        public void onCanceled() {
            this.latch.countDown();
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        public void onFailure(@NonNull Exception exc) {
            this.latch.countDown();
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        public void onSuccess(TResult tresult) {
            this.latch.countDown();
        }
    }

    private synchronized void m(g gVar) {
        this.cachedContainerTask = Tasks.forResult(gVar);
    }

    public void d() {
        synchronized (this) {
            this.cachedContainerTask = Tasks.forResult(null);
        }
        this.storageClient.a();
    }

    public synchronized Task<g> e() {
        try {
            Task<g> task = this.cachedContainerTask;
            if (task == null || (task.isComplete() && !this.cachedContainerTask.isSuccessful())) {
                Executor executor = this.executor;
                final u uVar = this.storageClient;
                Objects.requireNonNull(uVar);
                this.cachedContainerTask = Tasks.call(executor, new Callable() { // from class: com.google.firebase.remoteconfig.internal.c
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return uVar.d();
                    }
                });
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.cachedContainerTask;
    }

    @Nullable
    @VisibleForTesting
    g g(long j6) {
        synchronized (this) {
            try {
                Task<g> task = this.cachedContainerTask;
                if (task != null && task.isSuccessful()) {
                    return this.cachedContainerTask.getResult();
                }
                try {
                    return (g) c(e(), j6, TimeUnit.SECONDS);
                } catch (InterruptedException | ExecutionException | TimeoutException e) {
                    Log.d(com.google.firebase.remoteconfig.a.TAG, "Reading from storage file failed.", e);
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Task<g> k(g gVar) {
        return l(gVar, true);
    }

    private static <TResult> TResult c(Task<TResult> task, long j6, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        b bVar = new b();
        Executor executor = DIRECT_EXECUTOR;
        task.addOnSuccessListener(executor, bVar);
        task.addOnFailureListener(executor, bVar);
        task.addOnCanceledListener(executor, bVar);
        if (!bVar.a(j6, timeUnit)) {
            throw new TimeoutException("Task await timed out.");
        }
        if (task.isSuccessful()) {
            return task.getResult();
        }
        throw new ExecutionException(task.getException());
    }

    public static synchronized f h(Executor executor, u uVar) {
        String strB;
        Map<String, f> map;
        try {
            strB = uVar.b();
            map = clientInstances;
            if (!map.containsKey(strB)) {
                map.put(strB, new f(executor, uVar));
            }
        } catch (Throwable th) {
            throw th;
        }
        return map.get(strB);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void i(g gVar) throws Exception {
        return this.storageClient.e(gVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task j(boolean z6, g gVar, Void r5) throws Exception {
        if (z6) {
            m(gVar);
        }
        return Tasks.forResult(gVar);
    }

    @Nullable
    public g f() {
        return g(5L);
    }

    public Task<g> l(final g gVar, final boolean z6) {
        return Tasks.call(this.executor, new Callable() { // from class: com.google.firebase.remoteconfig.internal.d
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f1649a.i(gVar);
            }
        }).onSuccessTask(this.executor, new SuccessContinuation() { // from class: com.google.firebase.remoteconfig.internal.e
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return this.f1651a.j(z6, gVar, (Void) obj);
            }
        });
    }

    private f(Executor executor, u uVar) {
        this.executor = executor;
        this.storageClient = uVar;
    }
}
