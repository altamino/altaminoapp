package androidx.navigation;

import android.view.View;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class Navigation$findViewNavController$1 extends v implements l<View, View> {
    public static final Navigation$findViewNavController$1 INSTANCE = new Navigation$findViewNavController$1();

    Navigation$findViewNavController$1() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final View invoke(@NotNull View it) {
        t.j(it, "it");
        Object parent = it.getParent();
        if (parent instanceof View) {
            return (View) parent;
        }
        return null;
    }
}
