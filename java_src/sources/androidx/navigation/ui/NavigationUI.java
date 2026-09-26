package androidx.navigation.ui;

import androidx.annotation.IdRes;
import androidx.navigation.NavDestination;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class NavigationUI {

    @NotNull
    public static final NavigationUI INSTANCE = new NavigationUI();

    public static final boolean a(@NotNull NavDestination navDestination, @IdRes int i10) {
        t.j(navDestination, "<this>");
        Iterator<NavDestination> it = NavDestination.Companion.c(navDestination).iterator();
        while (it.hasNext()) {
            if (it.next().p() == i10) {
                return true;
            }
        }
        return false;
    }

    public static final boolean b(@NotNull NavDestination navDestination, @NotNull Set<Integer> destinationIds) {
        t.j(navDestination, "<this>");
        t.j(destinationIds, "destinationIds");
        Iterator<NavDestination> it = NavDestination.Companion.c(navDestination).iterator();
        while (it.hasNext()) {
            if (destinationIds.contains(Integer.valueOf(it.next().p()))) {
                return true;
            }
        }
        return false;
    }

    private NavigationUI() {
    }
}
