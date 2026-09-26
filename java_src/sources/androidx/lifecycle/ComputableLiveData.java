package androidx.lifecycle;

import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.arch.core.executor.ArchTaskExecutor;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo
public abstract class ComputableLiveData<T> {

    @NotNull
    private final LiveData<T> _liveData;

    @NotNull
    private final AtomicBoolean computing;

    @NotNull
    private final Executor executor;

    @NotNull
    private final AtomicBoolean invalid;

    @NotNull
    public final Runnable invalidationRunnable;

    @NotNull
    private final LiveData<T> liveData;

    @NotNull
    public final Runnable refreshRunnable;

    /* JADX WARN: Multi-variable type inference failed */
    public ComputableLiveData() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @WorkerThread
    protected abstract T c();

    @NotNull
    public final Executor d() {
        return this.executor;
    }

    @NotNull
    public LiveData<T> e() {
        return this.liveData;
    }

    public ComputableLiveData(@NotNull Executor executor) {
        t.j(executor, "executor");
        this.executor = executor;
        LiveData<T> liveData = new LiveData<T>(this) { // from class: androidx.lifecycle.ComputableLiveData$_liveData$1
            final /* synthetic */ ComputableLiveData<T> this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.lifecycle.LiveData
            protected void k() {
                this.this$0.d().execute(this.this$0.refreshRunnable);
            }
        };
        this._liveData = liveData;
        this.liveData = liveData;
        this.invalid = new AtomicBoolean(true);
        this.computing = new AtomicBoolean(false);
        this.refreshRunnable = new Runnable() { // from class: androidx.lifecycle.a
            @Override // java.lang.Runnable
            public final void run() {
                ComputableLiveData.g(this.f213a);
            }
        };
        this.invalidationRunnable = new Runnable() { // from class: androidx.lifecycle.b
            @Override // java.lang.Runnable
            public final void run() {
                ComputableLiveData.f(this.f214a);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(ComputableLiveData this$0) {
        t.j(this$0, "this$0");
        boolean zH = this$0.e().h();
        if (this$0.invalid.compareAndSet(false, true) && zH) {
            this$0.executor.execute(this$0.refreshRunnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void g(ComputableLiveData this$0) {
        t.j(this$0, "this$0");
        while (this$0.computing.compareAndSet(false, true)) {
            Object objC = null;
            boolean z6 = false;
            while (this$0.invalid.compareAndSet(true, false)) {
                try {
                    objC = this$0.c();
                    z6 = true;
                } catch (Throwable th) {
                    this$0.computing.set(false);
                    throw th;
                }
            }
            if (z6) {
                this$0.e().m(objC);
            }
            this$0.computing.set(false);
            if (!z6 || !this$0.invalid.get()) {
                return;
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ ComputableLiveData(Executor executor, int i10, k kVar) {
        if ((i10 & 1) != 0) {
            executor = ArchTaskExecutor.g();
            t.i(executor, "getIOThreadExecutor()");
        }
        this(executor);
    }
}
