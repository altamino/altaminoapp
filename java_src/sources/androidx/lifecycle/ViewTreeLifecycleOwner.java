package androidx.lifecycle;

import android.view.View;
import androidx.lifecycle.runtime.R;
import kotlin.jvm.internal.t;
import kotlin.sequences.m;
import kotlin.sequences.o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class ViewTreeLifecycleOwner {
    @Nullable
    public static final LifecycleOwner a(@NotNull View view) {
        t.j(view, "<this>");
        return (LifecycleOwner) o.o(o.v(m.f(view, ViewTreeLifecycleOwner$findViewTreeLifecycleOwner$1.INSTANCE), ViewTreeLifecycleOwner$findViewTreeLifecycleOwner$2.INSTANCE));
    }

    public static final void b(@NotNull View view, @Nullable LifecycleOwner lifecycleOwner) {
        t.j(view, "<this>");
        view.setTag(R.id.view_tree_lifecycle_owner, lifecycleOwner);
    }
}
