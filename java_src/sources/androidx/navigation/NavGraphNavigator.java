package androidx.navigation;

import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.u;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Navigator.Name(NotificationCompat.CATEGORY_NAVIGATION)
public class NavGraphNavigator extends Navigator<NavGraph> {

    @NotNull
    private final NavigatorProvider navigatorProvider;

    public NavGraphNavigator(@NotNull NavigatorProvider navigatorProvider) {
        t.j(navigatorProvider, "navigatorProvider");
        this.navigatorProvider = navigatorProvider;
    }

    @Override // androidx.navigation.Navigator
    public void e(@NotNull List<NavBackStackEntry> entries, @Nullable NavOptions navOptions, @Nullable Navigator.Extras extras) {
        t.j(entries, "entries");
        Iterator<NavBackStackEntry> it = entries.iterator();
        while (it.hasNext()) {
            m(it.next(), navOptions, extras);
        }
    }

    @Override // androidx.navigation.Navigator
    @NotNull
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public NavGraph a() {
        return new NavGraph(this);
    }

    private final void m(NavBackStackEntry navBackStackEntry, NavOptions navOptions, Navigator.Extras extras) {
        NavDestination navDestinationD;
        NavGraph navGraph = (NavGraph) navBackStackEntry.f();
        Bundle bundleD = navBackStackEntry.d();
        int I = navGraph.I();
        String strJ = navGraph.J();
        if (I == 0 && strJ == null) {
            throw new IllegalStateException(("no start destination defined via app:startDestination for " + navGraph.m()).toString());
        }
        if (strJ != null) {
            navDestinationD = navGraph.F(strJ, false);
        } else {
            navDestinationD = navGraph.D(I, false);
        }
        if (navDestinationD != null) {
            this.navigatorProvider.e(navDestinationD.r()).e(u.e(b().a(navDestinationD, navDestinationD.e(bundleD))), navOptions, extras);
            return;
        }
        throw new IllegalArgumentException("navigation destination " + navGraph.H() + " is not a direct child of this NavGraph");
    }
}
