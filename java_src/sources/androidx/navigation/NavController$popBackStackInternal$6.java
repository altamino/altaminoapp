package androidx.navigation;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class NavController$popBackStackInternal$6 extends v implements l<NavDestination, NavDestination> {
    public static final NavController$popBackStackInternal$6 INSTANCE = new NavController$popBackStackInternal$6();

    NavController$popBackStackInternal$6() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final NavDestination invoke(@NotNull NavDestination destination) {
        t.j(destination, "destination");
        NavGraph navGraphS = destination.s();
        if (navGraphS == null || navGraphS.I() != destination.p()) {
            return null;
        }
        return destination.s();
    }
}
