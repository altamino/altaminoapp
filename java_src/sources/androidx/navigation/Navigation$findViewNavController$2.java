package androidx.navigation;

import android.view.View;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class Navigation$findViewNavController$2 extends v implements l<View, NavController> {
    public static final Navigation$findViewNavController$2 INSTANCE = new Navigation$findViewNavController$2();

    Navigation$findViewNavController$2() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final NavController invoke(@NotNull View it) {
        t.j(it, "it");
        return Navigation.INSTANCE.d(it);
    }
}
