package androidx.work;

import androidx.work.impl.utils.futures.SettableFuture;
import com.google.common.util.concurrent.k;
import e8.l;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.b2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class JobListenableFuture<R> implements k<R> {

    @NotNull
    private final b2 job;

    @NotNull
    private final SettableFuture<R> underlying;

    /* JADX INFO: renamed from: androidx.work.JobListenableFuture$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<Throwable, l0> {
        final /* synthetic */ JobListenableFuture<R> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(JobListenableFuture<R> jobListenableFuture) {
            super(1);
            this.this$0 = jobListenableFuture;
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
            invoke2(th);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@Nullable Throwable th) {
            if (th == null) {
                if (!((JobListenableFuture) this.this$0).underlying.isDone()) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
            } else {
                if (th instanceof CancellationException) {
                    ((JobListenableFuture) this.this$0).underlying.cancel(true);
                    return;
                }
                SettableFuture settableFuture = ((JobListenableFuture) this.this$0).underlying;
                Throwable cause = th.getCause();
                if (cause != null) {
                    th = cause;
                }
                settableFuture.p(th);
            }
        }
    }

    public JobListenableFuture(@NotNull b2 job, @NotNull SettableFuture<R> underlying) {
        t.j(job, "job");
        t.j(underlying, "underlying");
        this.job = job;
        this.underlying = underlying;
        job.U(new AnonymousClass1(this));
    }

    @Override // com.google.common.util.concurrent.k
    public void addListener(Runnable runnable, Executor executor) {
        this.underlying.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z6) {
        return this.underlying.cancel(z6);
    }

    @Override // java.util.concurrent.Future
    public R get() {
        return this.underlying.get();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.underlying.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.underlying.isDone();
    }

    public final void b(R r) {
        this.underlying.o(r);
    }

    @Override // java.util.concurrent.Future
    public R get(long j6, TimeUnit timeUnit) {
        return this.underlying.get(j6, timeUnit);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ JobListenableFuture(b2 b2Var, SettableFuture settableFuture, int i10, kotlin.jvm.internal.k kVar) {
        if ((i10 & 2) != 0) {
            settableFuture = SettableFuture.s();
            t.i(settableFuture, "create()");
        }
        this(b2Var, settableFuture);
    }
}
