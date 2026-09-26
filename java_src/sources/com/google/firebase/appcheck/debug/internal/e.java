package com.google.firebase.appcheck.debug.internal;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.appcheck.internal.m;
import com.google.firebase.appcheck.internal.n;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes11.dex */
public class e implements x3.a {
    private static final String TAG = "com.google.firebase.appcheck.debug.internal.e";
    private static final String UTF_8 = "UTF-8";
    private final Executor blockingExecutor;
    private final Task<String> debugSecretTask;
    private final Executor liteExecutor;
    private final m networkClient;
    private final n retryManager;

    @NonNull
    @VisibleForTesting
    static Task<String> e(@NonNull final com.google.firebase.f fVar, @NonNull Executor executor) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        executor.execute(new Runnable() { // from class: com.google.firebase.appcheck.debug.internal.a
            @Override // java.lang.Runnable
            public final void run() {
                e.f(fVar, taskCompletionSource);
            }
        });
        return taskCompletionSource.getTask();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(com.google.firebase.f fVar, TaskCompletionSource taskCompletionSource) {
        g gVar = new g(fVar.k(), fVar.o());
        String strA = gVar.a();
        if (strA == null) {
            strA = UUID.randomUUID().toString();
            gVar.b(strA);
        }
        Log.d(TAG, "Enter this debug secret into the allow list in the Firebase Console for your project: " + strA);
        taskCompletionSource.setResult(strA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.google.firebase.appcheck.internal.a g(f fVar) throws Exception {
        return this.networkClient.b(fVar.a().getBytes("UTF-8"), 2, this.retryManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task h(String str) throws Exception {
        final f fVar = new f(str);
        return Tasks.call(this.blockingExecutor, new Callable() { // from class: com.google.firebase.appcheck.debug.internal.d
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f1460a.g(fVar);
            }
        });
    }

    @Override // x3.a
    @NonNull
    public Task<x3.c> getToken() {
        return this.debugSecretTask.onSuccessTask(this.liteExecutor, new SuccessContinuation() { // from class: com.google.firebase.appcheck.debug.internal.b
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return this.f1459a.h((String) obj);
            }
        }).onSuccessTask(this.liteExecutor, new SuccessContinuation() { // from class: com.google.firebase.appcheck.debug.internal.c
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return e.i((com.google.firebase.appcheck.internal.a) obj);
            }
        });
    }

    public e(@NonNull com.google.firebase.f fVar, @NonNull o4.b<y3.b> bVar, @w3.c Executor executor, @w3.a Executor executor2, @w3.b Executor executor3) {
        String strA;
        Task<String> taskForResult;
        Preconditions.checkNotNull(fVar);
        this.networkClient = new m(fVar);
        this.liteExecutor = executor;
        this.blockingExecutor = executor3;
        this.retryManager = new n();
        if (bVar.get() != null) {
            strA = bVar.get().a();
        } else {
            strA = null;
        }
        if (strA == null) {
            taskForResult = e(fVar, executor2);
        } else {
            taskForResult = Tasks.forResult(strA);
        }
        this.debugSecretTask = taskForResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task i(com.google.firebase.appcheck.internal.a aVar) throws Exception {
        return Tasks.forResult(com.google.firebase.appcheck.internal.b.c(aVar));
    }
}
