package androidx.navigation;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class NavGraph$Companion$findStartDestination$1 extends v implements l<NavDestination, NavDestination> {
    public static final NavGraph$Companion$findStartDestination$1 INSTANCE = new NavGraph$Companion$findStartDestination$1();

    NavGraph$Companion$findStartDestination$1() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final NavDestination invoke(@NotNull NavDestination it) {
        t.j(it, "it");
        if (!(it instanceof NavGraph)) {
            return null;
        }
        NavGraph navGraph = (NavGraph) it;
        return navGraph.C(navGraph.I());
    }
}
