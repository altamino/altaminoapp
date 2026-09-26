package androidx.savedstate;

import android.view.View;
import kotlin.jvm.internal.t;
import kotlin.sequences.m;
import kotlin.sequences.o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class ViewTreeSavedStateRegistryOwner {
    @Nullable
    public static final SavedStateRegistryOwner a(@NotNull View view) {
        t.j(view, "<this>");
        return (SavedStateRegistryOwner) o.o(o.v(m.f(view, ViewTreeSavedStateRegistryOwner$findViewTreeSavedStateRegistryOwner$1.INSTANCE), ViewTreeSavedStateRegistryOwner$findViewTreeSavedStateRegistryOwner$2.INSTANCE));
    }

    public static final void b(@NotNull View view, @Nullable SavedStateRegistryOwner savedStateRegistryOwner) {
        t.j(view, "<this>");
        view.setTag(R.id.view_tree_saved_state_registry_owner, savedStateRegistryOwner);
    }
}
