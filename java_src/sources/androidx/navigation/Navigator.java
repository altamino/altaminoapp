package androidx.navigation;

import android.os.Bundle;
import androidx.annotation.CallSuper;
import androidx.navigation.NavDestination;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import kotlin.sequences.o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public abstract class Navigator<D extends NavDestination> {

    @Nullable
    private NavigatorState _state;
    private boolean isAttached;

    public interface Extras {
    }

    @Target({ElementType.TYPE, ElementType.ANNOTATION_TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface Name {
        String value();
    }

    @NotNull
    public abstract D a();

    public final boolean c() {
        return this.isAttached;
    }

    @Nullable
    public NavDestination d(@NotNull D destination, @Nullable Bundle bundle, @Nullable NavOptions navOptions, @Nullable Extras extras) {
        t.j(destination, "destination");
        return destination;
    }

    @CallSuper
    public void f(@NotNull NavigatorState state) {
        t.j(state, "state");
        this._state = state;
        this.isAttached = true;
    }

    public void h(@NotNull Bundle savedState) {
        t.j(savedState, "savedState");
    }

    @Nullable
    public Bundle i() {
        return null;
    }

    public boolean k() {
        return true;
    }

    @NotNull
    protected final NavigatorState b() {
        NavigatorState navigatorState = this._state;
        if (navigatorState != null) {
            return navigatorState;
        }
        throw new IllegalStateException("You cannot access the Navigator's state until the Navigator is attached".toString());
    }

    public void e(@NotNull List<NavBackStackEntry> entries, @Nullable NavOptions navOptions, @Nullable Extras extras) {
        t.j(entries, "entries");
        Iterator it = o.n(o.u(d0.Y(entries), new Navigator$navigate$1(this, navOptions, extras))).iterator();
        while (it.hasNext()) {
            b().h((NavBackStackEntry) it.next());
        }
    }

    public void g(@NotNull NavBackStackEntry backStackEntry) {
        t.j(backStackEntry, "backStackEntry");
        NavDestination navDestinationF = backStackEntry.f();
        if (!(navDestinationF instanceof NavDestination)) {
            navDestinationF = null;
        }
        if (navDestinationF == null) {
            return;
        }
        d(navDestinationF, null, NavOptionsBuilderKt.a(Navigator$onLaunchSingleTop$1.INSTANCE), null);
        b().f(backStackEntry);
    }

    public void j(@NotNull NavBackStackEntry popUpTo, boolean z6) {
        t.j(popUpTo, "popUpTo");
        List<NavBackStackEntry> value = b().b().getValue();
        if (value.contains(popUpTo)) {
            ListIterator<NavBackStackEntry> listIterator = value.listIterator(value.size());
            NavBackStackEntry navBackStackEntryPrevious = null;
            while (k()) {
                navBackStackEntryPrevious = listIterator.previous();
                if (t.e(navBackStackEntryPrevious, popUpTo)) {
                    break;
                }
            }
            if (navBackStackEntryPrevious != null) {
                b().g(navBackStackEntryPrevious, z6);
                return;
            }
            return;
        }
        throw new IllegalStateException(("popBackStack was called with " + popUpTo + " which does not exist in back stack " + value).toString());
    }
}
