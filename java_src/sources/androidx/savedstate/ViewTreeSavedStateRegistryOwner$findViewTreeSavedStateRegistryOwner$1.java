package androidx.savedstate;

import android.view.View;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final class ViewTreeSavedStateRegistryOwner$findViewTreeSavedStateRegistryOwner$1 extends v implements l<View, View> {
    public static final ViewTreeSavedStateRegistryOwner$findViewTreeSavedStateRegistryOwner$1 INSTANCE = new ViewTreeSavedStateRegistryOwner$findViewTreeSavedStateRegistryOwner$1();

    ViewTreeSavedStateRegistryOwner$findViewTreeSavedStateRegistryOwner$1() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final View invoke(@NotNull View view) {
        t.j(view, "view");
        Object parent = view.getParent();
        if (parent instanceof View) {
            return (View) parent;
        }
        return null;
    }
}
