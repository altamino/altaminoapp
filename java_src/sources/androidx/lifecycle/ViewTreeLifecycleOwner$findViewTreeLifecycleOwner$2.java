package androidx.lifecycle;

import android.view.View;
import androidx.lifecycle.runtime.R;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class ViewTreeLifecycleOwner$findViewTreeLifecycleOwner$2 extends v implements l<View, LifecycleOwner> {
    public static final ViewTreeLifecycleOwner$findViewTreeLifecycleOwner$2 INSTANCE = new ViewTreeLifecycleOwner$findViewTreeLifecycleOwner$2();

    ViewTreeLifecycleOwner$findViewTreeLifecycleOwner$2() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final LifecycleOwner invoke(@NotNull View viewParent) {
        t.j(viewParent, "viewParent");
        Object tag = viewParent.getTag(R.id.view_tree_lifecycle_owner);
        if (tag instanceof LifecycleOwner) {
            return (LifecycleOwner) tag;
        }
        return null;
    }
}
