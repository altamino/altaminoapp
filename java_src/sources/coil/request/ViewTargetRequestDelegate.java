package coil.request;

import androidx.annotation.MainThread;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import coil.util.Lifecycles;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.b2;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class ViewTargetRequestDelegate extends RequestDelegate {

    @NotNull
    private final coil.e imageLoader;

    @NotNull
    private final h initialRequest;

    @NotNull
    private final b2 job;

    @NotNull
    private final Lifecycle lifecycle;

    @NotNull
    private final f0.b<?> target;

    public ViewTargetRequestDelegate(@NotNull coil.e eVar, @NotNull h hVar, @NotNull f0.b<?> bVar, @NotNull Lifecycle lifecycle, @NotNull b2 b2Var) {
        super(null);
        this.imageLoader = eVar;
        this.initialRequest = hVar;
        this.target = bVar;
        this.lifecycle = lifecycle;
        this.job = b2Var;
    }

    @Override // coil.request.RequestDelegate
    public void a() {
        if (this.target.getView().isAttachedToWindow()) {
            return;
        }
        coil.util.i.n(this.target.getView()).c(this);
        throw new CancellationException("'ViewTarget.view' must be attached to a window.");
    }

    @Override // coil.request.RequestDelegate
    public void c() {
        this.lifecycle.a(this);
        f0.b<?> bVar = this.target;
        if (bVar instanceof LifecycleObserver) {
            Lifecycles.b(this.lifecycle, (LifecycleObserver) bVar);
        }
        coil.util.i.n(this.target.getView()).c(this);
    }

    public void d() {
        b2.a.a(this.job, null, 1, null);
        f0.b<?> bVar = this.target;
        if (bVar instanceof LifecycleObserver) {
            this.lifecycle.d((LifecycleObserver) bVar);
        }
        this.lifecycle.d(this);
    }

    @MainThread
    public final void e() {
        this.imageLoader.b(this.initialRequest);
    }

    @Override // coil.request.RequestDelegate, androidx.lifecycle.DefaultLifecycleObserver
    public void onDestroy(@NotNull LifecycleOwner lifecycleOwner) {
        coil.util.i.n(this.target.getView()).a();
    }
}
