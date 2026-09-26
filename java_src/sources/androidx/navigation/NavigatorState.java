package androidx.navigation;

import android.os.Bundle;
import androidx.annotation.CallSuper;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.collections.d0;
import kotlin.collections.v;
import kotlin.collections.y0;
import kotlin.collections.z0;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.l0;
import kotlinx.coroutines.flow.n0;
import kotlinx.coroutines.flow.x;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public abstract class NavigatorState {

    @NotNull
    private final x<List<NavBackStackEntry>> _backStack;

    @NotNull
    private final x<Set<NavBackStackEntry>> _transitionsInProgress;

    @NotNull
    private final l0<List<NavBackStackEntry>> backStack;

    @NotNull
    private final ReentrantLock backStackLock = new ReentrantLock(true);

    @RestrictTo
    private boolean isNavigating;

    @NotNull
    private final l0<Set<NavBackStackEntry>> transitionsInProgress;

    @NotNull
    public abstract NavBackStackEntry a(@NotNull NavDestination navDestination, @Nullable Bundle bundle);

    @NotNull
    public final l0<List<NavBackStackEntry>> b() {
        return this.backStack;
    }

    @NotNull
    public final l0<Set<NavBackStackEntry>> c() {
        return this.transitionsInProgress;
    }

    public final boolean d() {
        return this.isNavigating;
    }

    public final void i(boolean z6) {
        this.isNavigating = z6;
    }

    public void e(@NotNull NavBackStackEntry entry) {
        t.j(entry, "entry");
        x<Set<NavBackStackEntry>> xVar = this._transitionsInProgress;
        xVar.setValue(z0.j(xVar.getValue(), entry));
    }

    @CallSuper
    public void f(@NotNull NavBackStackEntry backStackEntry) {
        t.j(backStackEntry, "backStackEntry");
        x<List<NavBackStackEntry>> xVar = this._backStack;
        xVar.setValue(d0.E0(d0.B0(xVar.getValue(), d0.v0(this._backStack.getValue())), backStackEntry));
    }

    public void h(@NotNull NavBackStackEntry backStackEntry) {
        t.j(backStackEntry, "backStackEntry");
        ReentrantLock reentrantLock = this.backStackLock;
        reentrantLock.lock();
        try {
            x<List<NavBackStackEntry>> xVar = this._backStack;
            xVar.setValue(d0.E0(xVar.getValue(), backStackEntry));
            w7.l0 l0Var = w7.l0.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public NavigatorState() {
        x<List<NavBackStackEntry>> xVarA = n0.a(v.m());
        this._backStack = xVarA;
        x<Set<NavBackStackEntry>> xVarA2 = n0.a(y0.e());
        this._transitionsInProgress = xVarA2;
        this.backStack = i.c(xVarA);
        this.transitionsInProgress = i.c(xVarA2);
    }

    public void g(@NotNull NavBackStackEntry popUpTo, boolean z6) {
        t.j(popUpTo, "popUpTo");
        ReentrantLock reentrantLock = this.backStackLock;
        reentrantLock.lock();
        try {
            x<List<NavBackStackEntry>> xVar = this._backStack;
            List<NavBackStackEntry> value = xVar.getValue();
            ArrayList arrayList = new ArrayList();
            for (Object obj : value) {
                if (!(!t.e((NavBackStackEntry) obj, popUpTo))) {
                    break;
                } else {
                    arrayList.add(obj);
                }
            }
            xVar.setValue(arrayList);
            w7.l0 l0Var = w7.l0.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }
}
