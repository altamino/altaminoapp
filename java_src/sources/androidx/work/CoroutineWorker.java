package androidx.work;

import android.content.Context;
import androidx.work.impl.utils.futures.SettableFuture;
import com.google.common.util.concurrent.k;
import e8.p;
import java.util.concurrent.ExecutionException;
import kotlin.coroutines.d;
import kotlin.coroutines.intrinsics.c;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.h;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.a0;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.h2;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes9.dex */
public abstract class CoroutineWorker extends ListenableWorker {

    @NotNull
    private final k0 coroutineContext;

    @NotNull
    private final SettableFuture<ListenableWorker.Result> future;

    @NotNull
    private final a0 job;

    /* JADX INFO: renamed from: androidx.work.CoroutineWorker$getForegroundInfoAsync$1, reason: invalid class name */
    @f(c = "androidx.work.CoroutineWorker$getForegroundInfoAsync$1", f = "CoroutineWorker.kt", l = {134}, m = "invokeSuspend")
    static final class AnonymousClass1 extends l implements p<o0, d<? super l0>, Object> {
        final /* synthetic */ JobListenableFuture<ForegroundInfo> $jobFuture;
        Object L$0;
        int label;
        final /* synthetic */ CoroutineWorker this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(JobListenableFuture<ForegroundInfo> jobListenableFuture, CoroutineWorker coroutineWorker, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$jobFuture = jobListenableFuture;
            this.this$0 = coroutineWorker;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            return new AnonymousClass1(this.$jobFuture, this.this$0, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            JobListenableFuture jobListenableFuture;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    jobListenableFuture = (JobListenableFuture) this.L$0;
                    w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w.b(obj);
                JobListenableFuture<ForegroundInfo> jobListenableFuture2 = this.$jobFuture;
                CoroutineWorker coroutineWorker = this.this$0;
                this.L$0 = jobListenableFuture2;
                this.label = 1;
                Object foregroundInfo = coroutineWorker.getForegroundInfo(this);
                if (foregroundInfo == objE) {
                    return objE;
                }
                jobListenableFuture = jobListenableFuture2;
                obj = foregroundInfo;
            }
            jobListenableFuture.b(obj);
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.work.CoroutineWorker$startWork$1, reason: invalid class name and case insensitive filesystem */
    @f(c = "androidx.work.CoroutineWorker$startWork$1", f = "CoroutineWorker.kt", l = {68}, m = "invokeSuspend")
    static final class C05131 extends l implements p<o0, d<? super l0>, Object> {
        int label;

        C05131(d<? super C05131> dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            return CoroutineWorker.this.new C05131(dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
            return ((C05131) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            try {
                if (i10 != 0) {
                    if (i10 == 1) {
                        w.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    w.b(obj);
                    CoroutineWorker coroutineWorker = CoroutineWorker.this;
                    this.label = 1;
                    obj = coroutineWorker.doWork(this);
                    if (obj == objE) {
                        return objE;
                    }
                }
                CoroutineWorker.this.getFuture$work_runtime_ktx_release().o((ListenableWorker.Result) obj);
            } catch (Throwable th) {
                CoroutineWorker.this.getFuture$work_runtime_ktx_release().p(th);
            }
            return l0.INSTANCE;
        }
    }

    public static /* synthetic */ void getCoroutineContext$annotations() {
    }

    @Nullable
    public abstract Object doWork(@NotNull d<? super ListenableWorker.Result> dVar);

    @NotNull
    public k0 getCoroutineContext() {
        return this.coroutineContext;
    }

    @Nullable
    public Object getForegroundInfo(@NotNull d<? super ForegroundInfo> dVar) {
        return getForegroundInfo$suspendImpl(this, dVar);
    }

    @Override // androidx.work.ListenableWorker
    @NotNull
    public final k<ForegroundInfo> getForegroundInfoAsync() {
        a0 a0VarB = h2.b(null, 1, null);
        o0 o0VarA = p0.a(getCoroutineContext().plus(a0VarB));
        JobListenableFuture jobListenableFuture = new JobListenableFuture(a0VarB, null, 2, null);
        kotlinx.coroutines.k.d(o0VarA, null, null, new AnonymousClass1(jobListenableFuture, this, null), 3, null);
        return jobListenableFuture;
    }

    @NotNull
    public final SettableFuture<ListenableWorker.Result> getFuture$work_runtime_ktx_release() {
        return this.future;
    }

    @NotNull
    public final a0 getJob$work_runtime_ktx_release() {
        return this.job;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineWorker(@NotNull Context appContext, @NotNull WorkerParameters params) {
        super(appContext, params);
        t.j(appContext, "appContext");
        t.j(params, "params");
        this.job = h2.b(null, 1, null);
        SettableFuture<ListenableWorker.Result> settableFutureS = SettableFuture.s();
        t.i(settableFutureS, "create()");
        this.future = settableFutureS;
        settableFutureS.addListener(new Runnable() { // from class: androidx.work.a
            @Override // java.lang.Runnable
            public final void run() {
                CoroutineWorker._init_$lambda$0(this.f864a);
            }
        }, getTaskExecutor().c());
        this.coroutineContext = e1.a();
    }

    static /* synthetic */ Object getForegroundInfo$suspendImpl(CoroutineWorker coroutineWorker, d<? super ForegroundInfo> dVar) {
        throw new IllegalStateException("Not implemented");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$0(CoroutineWorker this$0) {
        t.j(this$0, "this$0");
        if (this$0.future.isCancelled()) {
            b2.a.a(this$0.job, null, 1, null);
        }
    }

    @Override // androidx.work.ListenableWorker
    public final void onStopped() {
        super.onStopped();
        this.future.cancel(false);
    }

    @Nullable
    public final Object setForeground(@NotNull ForegroundInfo foregroundInfo, @NotNull d<? super l0> dVar) throws Throwable {
        k<Void> foregroundAsync = setForegroundAsync(foregroundInfo);
        t.i(foregroundAsync, "setForegroundAsync(foregroundInfo)");
        if (foregroundAsync.isDone()) {
            try {
                foregroundAsync.get();
            } catch (ExecutionException e) {
                Throwable cause = e.getCause();
                if (cause == null) {
                    throw e;
                }
                throw cause;
            }
        } else {
            kotlinx.coroutines.p pVar = new kotlinx.coroutines.p(c.c(dVar), 1);
            pVar.x();
            foregroundAsync.addListener(new ListenableFutureKt$await$2$1(pVar, foregroundAsync), DirectExecutor.INSTANCE);
            pVar.S(new ListenableFutureKt$await$2$2(foregroundAsync));
            Object objU = pVar.u();
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                h.c(dVar);
            }
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                return objU;
            }
        }
        return l0.INSTANCE;
    }

    @Nullable
    public final Object setProgress(@NotNull Data data, @NotNull d<? super l0> dVar) throws Throwable {
        k<Void> progressAsync = setProgressAsync(data);
        t.i(progressAsync, "setProgressAsync(data)");
        if (progressAsync.isDone()) {
            try {
                progressAsync.get();
            } catch (ExecutionException e) {
                Throwable cause = e.getCause();
                if (cause == null) {
                    throw e;
                }
                throw cause;
            }
        } else {
            kotlinx.coroutines.p pVar = new kotlinx.coroutines.p(c.c(dVar), 1);
            pVar.x();
            progressAsync.addListener(new ListenableFutureKt$await$2$1(pVar, progressAsync), DirectExecutor.INSTANCE);
            pVar.S(new ListenableFutureKt$await$2$2(progressAsync));
            Object objU = pVar.u();
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                h.c(dVar);
            }
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                return objU;
            }
        }
        return l0.INSTANCE;
    }

    @Override // androidx.work.ListenableWorker
    @NotNull
    public final k<ListenableWorker.Result> startWork() {
        kotlinx.coroutines.k.d(p0.a(getCoroutineContext().plus(this.job)), null, null, new C05131(null), 3, null);
        return this.future;
    }
}
