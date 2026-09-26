package com.google.firebase.appcheck.playintegrity.internal;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.appcheck.internal.m;
import com.google.firebase.appcheck.internal.n;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes10.dex */
public class i implements x3.a {
    private static final String UTF_8 = "UTF-8";
    private final Executor blockingExecutor;
    private final com.google.android.play.core.integrity.a integrityManager;
    private final Executor liteExecutor;
    private final m networkClient;
    private final String projectNumber;
    private final n retryManager;

    public i(@NonNull com.google.firebase.f fVar, @w3.c Executor executor, @w3.b Executor executor2) {
        this(fVar.n().d(), com.google.android.play.core.integrity.b.a(fVar.k()), new m(fVar), executor, executor2, new n());
    }

    @NonNull
    private Task<com.google.android.play.core.integrity.e> f() {
        final b bVar = new b();
        return Tasks.call(this.blockingExecutor, new Callable() { // from class: com.google.firebase.appcheck.playintegrity.internal.f
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f1474a.g(bVar);
            }
        }).onSuccessTask(this.liteExecutor, new SuccessContinuation() { // from class: com.google.firebase.appcheck.playintegrity.internal.g
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return this.f1476a.h((c) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ c g(b bVar) throws Exception {
        return c.a(this.networkClient.c(bVar.a().getBytes("UTF-8"), this.retryManager));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task h(c cVar) throws Exception {
        return this.integrityManager.a(com.google.android.play.core.integrity.d.b().b(Long.parseLong(this.projectNumber)).c(cVar.b()).a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.google.firebase.appcheck.internal.a i(a aVar) throws Exception {
        return this.networkClient.b(aVar.a().getBytes("UTF-8"), 3, this.retryManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task j(com.google.android.play.core.integrity.e eVar) throws Exception {
        final a aVar = new a(eVar.a());
        return Tasks.call(this.blockingExecutor, new Callable() { // from class: com.google.firebase.appcheck.playintegrity.internal.h
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f1477a.i(aVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task k(com.google.firebase.appcheck.internal.a aVar) throws Exception {
        return Tasks.forResult(com.google.firebase.appcheck.internal.b.c(aVar));
    }

    @Override // x3.a
    @NonNull
    public Task<x3.c> getToken() {
        return f().onSuccessTask(this.liteExecutor, new SuccessContinuation() { // from class: com.google.firebase.appcheck.playintegrity.internal.d
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return this.f1473a.j((com.google.android.play.core.integrity.e) obj);
            }
        }).onSuccessTask(this.liteExecutor, new SuccessContinuation() { // from class: com.google.firebase.appcheck.playintegrity.internal.e
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return i.k((com.google.firebase.appcheck.internal.a) obj);
            }
        });
    }

    @VisibleForTesting
    i(@NonNull String str, @NonNull com.google.android.play.core.integrity.a aVar, @NonNull m mVar, @NonNull Executor executor, @NonNull Executor executor2, @NonNull n nVar) {
        this.projectNumber = str;
        this.integrityManager = aVar;
        this.networkClient = mVar;
        this.liteExecutor = executor;
        this.blockingExecutor = executor2;
        this.retryManager = nVar;
    }
}
