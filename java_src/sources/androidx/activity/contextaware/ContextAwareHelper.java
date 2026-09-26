package androidx.activity.contextaware;

import android.content.Context;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class ContextAwareHelper {

    @Nullable
    private volatile Context context;

    @NotNull
    private final Set<OnContextAvailableListener> listeners = new CopyOnWriteArraySet();

    public final void b() {
        this.context = null;
    }

    @Nullable
    public final Context d() {
        return this.context;
    }

    public final void a(@NotNull OnContextAvailableListener listener) {
        t.j(listener, "listener");
        Context context = this.context;
        if (context != null) {
            listener.a(context);
        }
        this.listeners.add(listener);
    }

    public final void c(@NotNull Context context) {
        t.j(context, "context");
        this.context = context;
        Iterator<OnContextAvailableListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().a(context);
        }
    }

    public final void e(@NotNull OnContextAvailableListener listener) {
        t.j(listener, "listener");
        this.listeners.remove(listener);
    }
}
