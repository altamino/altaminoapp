package com.google.firebase.appcheck.internal;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes10.dex */
public class h extends x3.e {
    private static final long BUFFER_TIME_MILLIS = 300000;
    private final List<x3.e.a> appCheckListenerList;
    private x3.a appCheckProvider;
    private x3.b appCheckProviderFactory;
    private final List<z3.a> appCheckTokenListenerList;
    private final Executor backgroundExecutor;
    private x3.c cachedToken;
    private Task<x3.c> cachedTokenTask;
    private final com.google.firebase.appcheck.internal.util.a clock;
    private final com.google.firebase.f firebaseApp;
    private final o4.b<m4.i> heartbeatControllerProvider;
    private final Executor liteExecutor;
    private final Task<Void> retrieveStoredTokenTask;
    private final p storageHelper;
    private final q tokenRefreshManager;
    private final Executor uiExecutor;

    @NonNull
    o4.b<m4.i> j() {
        return this.heartbeatControllerProvider;
    }

    @VisibleForTesting
    void r(@NonNull x3.c cVar) {
        this.cachedToken = cVar;
    }

    private boolean k() {
        x3.c cVar = this.cachedToken;
        return cVar != null && cVar.a() - this.clock.currentTimeMillis() > 300000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task n(boolean z6, Task task) throws Exception {
        if (!z6 && k()) {
            return Tasks.forResult(this.cachedToken);
        }
        if (this.appCheckProvider == null) {
            return Tasks.forException(new com.google.firebase.l("No AppCheckProvider installed."));
        }
        Task<x3.c> task2 = this.cachedTokenTask;
        if (task2 == null || task2.isComplete() || this.cachedTokenTask.isCanceled()) {
            this.cachedTokenTask = i();
        }
        return this.cachedTokenTask;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(TaskCompletionSource taskCompletionSource) {
        x3.c cVarD = this.storageHelper.d();
        if (cVarD != null) {
            r(cVarD);
        }
        taskCompletionSource.setResult(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p(x3.c cVar) {
        this.storageHelper.e(cVar);
    }

    private Task<Void> q(@NonNull Executor executor) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        executor.execute(new Runnable() { // from class: com.google.firebase.appcheck.internal.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f1464a.o(taskCompletionSource);
            }
        });
        return taskCompletionSource.getTask();
    }

    private void s(@NonNull final x3.c cVar) {
        this.backgroundExecutor.execute(new Runnable() { // from class: com.google.firebase.appcheck.internal.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f1467a.p(cVar);
            }
        });
        r(cVar);
        this.tokenRefreshManager.d(cVar);
    }

    @Override // x3.e
    @NonNull
    public Task<x3.c> a(final boolean z6) {
        return this.retrieveStoredTokenTask.continueWithTask(this.liteExecutor, new Continuation() { // from class: com.google.firebase.appcheck.internal.d
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.f1462a.n(z6, task);
            }
        });
    }

    @Override // x3.e
    public void d(@NonNull x3.b bVar) {
        l(bVar, this.firebaseApp.t());
    }

    Task<x3.c> i() {
        return this.appCheckProvider.getToken().onSuccessTask(this.uiExecutor, new SuccessContinuation() { // from class: com.google.firebase.appcheck.internal.f
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return this.f1466a.m((x3.c) obj);
            }
        });
    }

    public h(@NonNull com.google.firebase.f fVar, @NonNull o4.b<m4.i> bVar, @w3.d Executor executor, @w3.c Executor executor2, @w3.a Executor executor3, @w3.b ScheduledExecutorService scheduledExecutorService) {
        Preconditions.checkNotNull(fVar);
        Preconditions.checkNotNull(bVar);
        this.firebaseApp = fVar;
        this.heartbeatControllerProvider = bVar;
        this.appCheckTokenListenerList = new ArrayList();
        this.appCheckListenerList = new ArrayList();
        this.storageHelper = new p(fVar.k(), fVar.o());
        this.tokenRefreshManager = new q(fVar.k(), this, executor2, scheduledExecutorService);
        this.uiExecutor = executor;
        this.liteExecutor = executor2;
        this.backgroundExecutor = executor3;
        this.retrieveStoredTokenTask = q(executor3);
        this.clock = new com.google.firebase.appcheck.internal.util.a.C0229a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task m(x3.c cVar) throws Exception {
        s(cVar);
        Iterator<x3.e.a> it = this.appCheckListenerList.iterator();
        while (it.hasNext()) {
            it.next().a(cVar);
        }
        c cVarA = c.a(cVar);
        Iterator<z3.a> it2 = this.appCheckTokenListenerList.iterator();
        while (it2.hasNext()) {
            it2.next().a(cVarA);
        }
        return Tasks.forResult(cVar);
    }

    public void l(@NonNull x3.b bVar, boolean z6) {
        Preconditions.checkNotNull(bVar);
        this.appCheckProviderFactory = bVar;
        this.appCheckProvider = bVar.a(this.firebaseApp);
        this.tokenRefreshManager.e(z6);
    }
}
