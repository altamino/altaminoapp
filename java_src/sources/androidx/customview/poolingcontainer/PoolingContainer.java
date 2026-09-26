package androidx.customview.poolingcontainer;

import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import androidx.core.view.ViewKt;
import java.util.Iterator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class PoolingContainer {
    private static final int PoolingContainerListenerHolderTag = R.id.pooling_container_listener_holder_tag;
    private static final int IsPoolingContainerTag = R.id.is_pooling_container_tag;

    @SuppressLint({"ExecutorRegistration"})
    public static final void a(@NotNull View view, @NotNull PoolingContainerListener listener) {
        t.j(view, "<this>");
        t.j(listener, "listener");
        d(view).a(listener);
    }

    public static final void b(@NotNull View view) {
        t.j(view, "<this>");
        Iterator<View> it = ViewKt.a(view).iterator();
        while (it.hasNext()) {
            d(it.next()).b();
        }
    }

    public static final void c(@NotNull ViewGroup viewGroup) {
        t.j(viewGroup, "<this>");
        Iterator<View> it = ViewGroupKt.a(viewGroup).iterator();
        while (it.hasNext()) {
            d(it.next()).b();
        }
    }

    private static final PoolingContainerListenerHolder d(View view) {
        int i10 = PoolingContainerListenerHolderTag;
        PoolingContainerListenerHolder poolingContainerListenerHolder = (PoolingContainerListenerHolder) view.getTag(i10);
        if (poolingContainerListenerHolder != null) {
            return poolingContainerListenerHolder;
        }
        PoolingContainerListenerHolder poolingContainerListenerHolder2 = new PoolingContainerListenerHolder();
        view.setTag(i10, poolingContainerListenerHolder2);
        return poolingContainerListenerHolder2;
    }

    public static final boolean e(@NotNull View view) {
        t.j(view, "<this>");
        Object tag = view.getTag(IsPoolingContainerTag);
        Boolean bool = tag instanceof Boolean ? (Boolean) tag : null;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public static final boolean f(@NotNull View view) {
        t.j(view, "<this>");
        for (Object obj : ViewKt.b(view)) {
            if ((obj instanceof View) && e((View) obj)) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"ExecutorRegistration"})
    public static final void g(@NotNull View view, @NotNull PoolingContainerListener listener) {
        t.j(view, "<this>");
        t.j(listener, "listener");
        d(view).c(listener);
    }

    public static final void h(@NotNull View view, boolean z6) {
        t.j(view, "<this>");
        view.setTag(IsPoolingContainerTag, Boolean.valueOf(z6));
    }
}
