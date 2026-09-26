package androidx.activity;

import androidx.annotation.MainThread;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public abstract class OnBackPressedCallback {

    @NotNull
    private final CopyOnWriteArrayList<Cancellable> cancellables = new CopyOnWriteArrayList<>();

    @Nullable
    private e8.a<l0> enabledChangedCallback;
    private boolean isEnabled;

    @MainThread
    public abstract void e();

    @MainThread
    public final boolean f() {
        return this.isEnabled;
    }

    public final void j(@Nullable e8.a<l0> aVar) {
        this.enabledChangedCallback = aVar;
    }

    public final void d(@NotNull Cancellable cancellable) {
        t.j(cancellable, "cancellable");
        this.cancellables.add(cancellable);
    }

    @MainThread
    public final void g() {
        Iterator<T> it = this.cancellables.iterator();
        while (it.hasNext()) {
            ((Cancellable) it.next()).cancel();
        }
    }

    public final void h(@NotNull Cancellable cancellable) {
        t.j(cancellable, "cancellable");
        this.cancellables.remove(cancellable);
    }

    @MainThread
    public final void i(boolean z6) {
        this.isEnabled = z6;
        e8.a<l0> aVar = this.enabledChangedCallback;
        if (aVar != null) {
            aVar.invoke();
        }
    }

    public OnBackPressedCallback(boolean z6) {
        this.isEnabled = z6;
    }
}
