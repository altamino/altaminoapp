package androidx.navigation;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
final class NavController$popBackStackInternal$1 extends v implements l<NavBackStackEntry, l0> {
    public static final NavController$popBackStackInternal$1 INSTANCE = new NavController$popBackStackInternal$1();

    NavController$popBackStackInternal$1() {
        super(1);
    }

    public final void a(@NotNull NavBackStackEntry it) {
        t.j(it, "it");
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(NavBackStackEntry navBackStackEntry) {
        a(navBackStackEntry);
        return l0.INSTANCE;
    }
}
