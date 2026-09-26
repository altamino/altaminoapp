package coil.request;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import kotlinx.coroutines.b2;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class BaseRequestDelegate extends RequestDelegate {

    @NotNull
    private final b2 job;

    @NotNull
    private final Lifecycle lifecycle;

    public BaseRequestDelegate(@NotNull Lifecycle lifecycle, @NotNull b2 b2Var) {
        super(null);
        this.lifecycle = lifecycle;
        this.job = b2Var;
    }

    @Override // coil.request.RequestDelegate
    public void b() {
        this.lifecycle.d(this);
    }

    @Override // coil.request.RequestDelegate
    public void c() {
        this.lifecycle.a(this);
    }

    public void d() {
        b2.a.a(this.job, null, 1, null);
    }

    @Override // coil.request.RequestDelegate, androidx.lifecycle.DefaultLifecycleObserver
    public void onDestroy(@NotNull LifecycleOwner lifecycleOwner) {
        d();
    }
}
