package androidx.navigation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.annotation.CallSuper;
import androidx.annotation.IdRes;
import androidx.annotation.MainThread;
import androidx.annotation.NavigationRes;
import androidx.annotation.RestrictTo;
import androidx.core.app.TaskStackBuilder;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStore;
import e8.l;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.collections.a0;
import kotlin.collections.k;
import kotlin.collections.u;
import kotlin.collections.v;
import kotlin.jvm.internal.c;
import kotlin.jvm.internal.k0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v0;
import kotlinx.coroutines.flow.d0;
import kotlinx.coroutines.flow.g;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.n0;
import kotlinx.coroutines.flow.w;
import kotlinx.coroutines.flow.x;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes.dex */
public class NavController {

    @NotNull
    private static final String KEY_BACK_STACK = "android-support-nav:controller:backStack";

    @NotNull
    private static final String KEY_BACK_STACK_DEST_IDS = "android-support-nav:controller:backStackDestIds";

    @NotNull
    private static final String KEY_BACK_STACK_IDS = "android-support-nav:controller:backStackIds";

    @NotNull
    private static final String KEY_BACK_STACK_STATES_IDS = "android-support-nav:controller:backStackStates";

    @NotNull
    private static final String KEY_BACK_STACK_STATES_PREFIX = "android-support-nav:controller:backStackStates:";

    @RestrictTo
    @NotNull
    public static final String KEY_DEEP_LINK_ARGS = "android-support-nav:controller:deepLinkArgs";

    @RestrictTo
    @NotNull
    public static final String KEY_DEEP_LINK_EXTRAS = "android-support-nav:controller:deepLinkExtras";

    @RestrictTo
    @NotNull
    public static final String KEY_DEEP_LINK_HANDLED = "android-support-nav:controller:deepLinkHandled";

    @RestrictTo
    @NotNull
    public static final String KEY_DEEP_LINK_IDS = "android-support-nav:controller:deepLinkIds";

    @NotNull
    public static final String KEY_DEEP_LINK_INTENT = "android-support-nav:controller:deepLinkIntent";

    @NotNull
    private static final String KEY_NAVIGATOR_STATE = "android-support-nav:controller:navigatorState";

    @NotNull
    private static final String KEY_NAVIGATOR_STATE_NAMES = "android-support-nav:controller:navigatorState:names";

    @NotNull
    private static final String TAG = "NavController";

    @NotNull
    private final w<NavBackStackEntry> _currentBackStackEntryFlow;

    @Nullable
    private NavGraph _graph;

    @NotNull
    private NavigatorProvider _navigatorProvider;

    @NotNull
    private final x<List<NavBackStackEntry>> _visibleEntries;

    @Nullable
    private Activity activity;

    @Nullable
    private l<? super NavBackStackEntry, l0> addToBackStackHandler;

    @NotNull
    private final k<NavBackStackEntry> backQueue;

    @NotNull
    private final List<NavBackStackEntry> backStackEntriesToDispatch;

    @NotNull
    private final Map<Integer, String> backStackMap;

    @NotNull
    private final Map<String, k<NavBackStackEntryState>> backStackStates;

    @Nullable
    private Parcelable[] backStackToRestore;

    @NotNull
    private final Map<NavBackStackEntry, NavBackStackEntry> childToParentEntries;

    @NotNull
    private final Context context;

    @NotNull
    private final g<NavBackStackEntry> currentBackStackEntryFlow;
    private boolean deepLinkHandled;
    private int dispatchReentrantCount;
    private boolean enableOnBackPressedCallback;

    @NotNull
    private final Map<NavBackStackEntry, Boolean> entrySavedState;

    @NotNull
    private Lifecycle.State hostLifecycleState;

    @Nullable
    private NavInflater inflater;

    @NotNull
    private final LifecycleObserver lifecycleObserver;

    @Nullable
    private LifecycleOwner lifecycleOwner;

    @NotNull
    private final m navInflater$delegate;

    @NotNull
    private final Map<Navigator<? extends NavDestination>, NavControllerNavigatorState> navigatorState;

    @Nullable
    private Bundle navigatorStateToRestore;

    @NotNull
    private final OnBackPressedCallback onBackPressedCallback;

    @Nullable
    private OnBackPressedDispatcher onBackPressedDispatcher;

    @NotNull
    private final CopyOnWriteArrayList<OnDestinationChangedListener> onDestinationChangedListeners;

    @NotNull
    private final Map<NavBackStackEntry, AtomicInteger> parentToChildCount;

    @Nullable
    private l<? super NavBackStackEntry, l0> popFromBackStackHandler;

    @Nullable
    private NavControllerViewModel viewModel;

    @NotNull
    private final kotlinx.coroutines.flow.l0<List<NavBackStackEntry>> visibleEntries;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static boolean deepLinkSaveState = true;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class NavControllerNavigatorState extends NavigatorState {

        @NotNull
        private final Navigator<? extends NavDestination> navigator;
        final /* synthetic */ NavController this$0;

        public NavControllerNavigatorState(@NotNull NavController navController, Navigator<? extends NavDestination> navigator) {
            t.j(navigator, "navigator");
            this.this$0 = navController;
            this.navigator = navigator;
        }

        @Override // androidx.navigation.NavigatorState
        @NotNull
        public NavBackStackEntry a(@NotNull NavDestination destination, @Nullable Bundle bundle) {
            t.j(destination, "destination");
            return NavBackStackEntry.Companion.b(NavBackStackEntry.Companion, this.this$0.y(), destination, bundle, this.this$0.D(), this.this$0.viewModel, null, null, 96, null);
        }

        @Override // androidx.navigation.NavigatorState
        public void e(@NotNull NavBackStackEntry entry) {
            NavControllerViewModel navControllerViewModel;
            t.j(entry, "entry");
            boolean zE = t.e(this.this$0.entrySavedState.get(entry), Boolean.TRUE);
            super.e(entry);
            this.this$0.entrySavedState.remove(entry);
            if (this.this$0.v().contains(entry)) {
                if (d()) {
                    return;
                }
                this.this$0.i0();
                this.this$0._visibleEntries.c(this.this$0.W());
                return;
            }
            this.this$0.h0(entry);
            if (entry.getLifecycle().b().b(Lifecycle.State.CREATED)) {
                entry.l(Lifecycle.State.DESTROYED);
            }
            k<NavBackStackEntry> kVarV = this.this$0.v();
            if (!(kVarV instanceof Collection) || !kVarV.isEmpty()) {
                Iterator<NavBackStackEntry> it = kVarV.iterator();
                while (it.hasNext()) {
                    if (t.e(it.next().g(), entry.g())) {
                    }
                }
                if (!zE && (navControllerViewModel = this.this$0.viewModel) != null) {
                    navControllerViewModel.e(entry.g());
                }
            } else if (!zE) {
                navControllerViewModel.e(entry.g());
            }
            this.this$0.i0();
            this.this$0._visibleEntries.c(this.this$0.W());
        }

        @Override // androidx.navigation.NavigatorState
        public void h(@NotNull NavBackStackEntry backStackEntry) {
            t.j(backStackEntry, "backStackEntry");
            Navigator navigatorE = this.this$0._navigatorProvider.e(backStackEntry.f().r());
            if (!t.e(navigatorE, this.navigator)) {
                Object obj = this.this$0.navigatorState.get(navigatorE);
                if (obj != null) {
                    ((NavControllerNavigatorState) obj).h(backStackEntry);
                    return;
                }
                throw new IllegalStateException(("NavigatorBackStack for " + backStackEntry.f().r() + " should already be created").toString());
            }
            l lVar = this.this$0.addToBackStackHandler;
            if (lVar != null) {
                lVar.invoke(backStackEntry);
                k(backStackEntry);
                return;
            }
            Log.i(NavController.TAG, "Ignoring add of destination " + backStackEntry.f() + " outside of the call to navigate(). ");
        }

        public final void k(@NotNull NavBackStackEntry backStackEntry) {
            t.j(backStackEntry, "backStackEntry");
            super.h(backStackEntry);
        }

        @Override // androidx.navigation.NavigatorState
        public void g(@NotNull NavBackStackEntry popUpTo, boolean z6) {
            t.j(popUpTo, "popUpTo");
            Navigator navigatorE = this.this$0._navigatorProvider.e(popUpTo.f().r());
            if (t.e(navigatorE, this.navigator)) {
                l lVar = this.this$0.popFromBackStackHandler;
                if (lVar != null) {
                    lVar.invoke(popUpTo);
                    super.g(popUpTo, z6);
                    return;
                } else {
                    this.this$0.Q(popUpTo, new NavController$NavControllerNavigatorState$pop$1(this, popUpTo, z6));
                    return;
                }
            }
            Object obj = this.this$0.navigatorState.get(navigatorE);
            t.g(obj);
            ((NavControllerNavigatorState) obj).g(popUpTo, z6);
        }
    }

    public interface OnDestinationChangedListener {
        void a(@NotNull NavController navController, @NotNull NavDestination navDestination, @Nullable Bundle bundle);
    }

    @NotNull
    public NavigatorProvider F() {
        return this._navigatorProvider;
    }

    @MainThread
    public boolean O(@IdRes int i10, boolean z6) {
        return P(i10, z6, false);
    }

    @RestrictTo
    @NotNull
    public k<NavBackStackEntry> v() {
        return this.backQueue;
    }

    @RestrictTo
    @NotNull
    public final Context y() {
        return this.context;
    }

    public NavController(@NotNull Context context) {
        t.j(context, "context");
        this.context = context;
        for (Object obj : kotlin.sequences.m.f(context, NavController$activity$1.INSTANCE)) {
            if (((Context) obj) instanceof Activity) {
                this.activity = (Activity) obj;
                this.backQueue = new k<>();
                x<List<NavBackStackEntry>> xVarA = n0.a(v.m());
                this._visibleEntries = xVarA;
                this.visibleEntries = i.c(xVarA);
                this.childToParentEntries = new LinkedHashMap();
                this.parentToChildCount = new LinkedHashMap();
                this.backStackMap = new LinkedHashMap();
                this.backStackStates = new LinkedHashMap();
                this.onDestinationChangedListeners = new CopyOnWriteArrayList<>();
                this.hostLifecycleState = Lifecycle.State.INITIALIZED;
                this.lifecycleObserver = new LifecycleEventObserver() { // from class: androidx.navigation.a
                    @Override // androidx.lifecycle.LifecycleEventObserver
                    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                        NavController.I(this.f748a, lifecycleOwner, event);
                    }
                };
                this.onBackPressedCallback = new OnBackPressedCallback() { // from class: androidx.navigation.NavController$onBackPressedCallback$1
                    {
                        super(false);
                    }

                    @Override // androidx.activity.OnBackPressedCallback
                    public void e() {
                        this.this$0.N();
                    }
                };
                this.enableOnBackPressedCallback = true;
                this._navigatorProvider = new NavigatorProvider();
                this.navigatorState = new LinkedHashMap();
                this.entrySavedState = new LinkedHashMap();
                NavigatorProvider navigatorProvider = this._navigatorProvider;
                navigatorProvider.b(new NavGraphNavigator(navigatorProvider));
                this._navigatorProvider.b(new ActivityNavigator(this.context));
                this.backStackEntriesToDispatch = new ArrayList();
                this.navInflater$delegate = o.a(new NavController$navInflater$2(this));
                w<NavBackStackEntry> wVarB = d0.b(1, 0, kotlinx.coroutines.channels.a.DROP_OLDEST, 2, null);
                this._currentBackStackEntryFlow = wVarB;
                this.currentBackStackEntryFlow = i.b(wVarB);
            }
        }
        obj = null;
        this.activity = (Activity) obj;
        this.backQueue = new k<>();
        x<List<NavBackStackEntry>> xVarA2 = n0.a(v.m());
        this._visibleEntries = xVarA2;
        this.visibleEntries = i.c(xVarA2);
        this.childToParentEntries = new LinkedHashMap();
        this.parentToChildCount = new LinkedHashMap();
        this.backStackMap = new LinkedHashMap();
        this.backStackStates = new LinkedHashMap();
        this.onDestinationChangedListeners = new CopyOnWriteArrayList<>();
        this.hostLifecycleState = Lifecycle.State.INITIALIZED;
        this.lifecycleObserver = new LifecycleEventObserver() { // from class: androidx.navigation.a
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                NavController.I(this.f748a, lifecycleOwner, event);
            }
        };
        this.onBackPressedCallback = new OnBackPressedCallback() { // from class: androidx.navigation.NavController$onBackPressedCallback$1
            {
                super(false);
            }

            @Override // androidx.activity.OnBackPressedCallback
            public void e() {
                this.this$0.N();
            }
        };
        this.enableOnBackPressedCallback = true;
        this._navigatorProvider = new NavigatorProvider();
        this.navigatorState = new LinkedHashMap();
        this.entrySavedState = new LinkedHashMap();
        NavigatorProvider navigatorProvider2 = this._navigatorProvider;
        navigatorProvider2.b(new NavGraphNavigator(navigatorProvider2));
        this._navigatorProvider.b(new ActivityNavigator(this.context));
        this.backStackEntriesToDispatch = new ArrayList();
        this.navInflater$delegate = o.a(new NavController$navInflater$2(this));
        w<NavBackStackEntry> wVarB2 = d0.b(1, 0, kotlinx.coroutines.channels.a.DROP_OLDEST, 2, null);
        this._currentBackStackEntryFlow = wVarB2;
        this.currentBackStackEntryFlow = i.b(wVarB2);
    }

    private final List<NavBackStackEntry> H(k<NavBackStackEntryState> kVar) {
        NavDestination navDestinationC;
        ArrayList arrayList = new ArrayList();
        NavBackStackEntry navBackStackEntryT = v().t();
        if (navBackStackEntryT == null || (navDestinationC = navBackStackEntryT.f()) == null) {
            navDestinationC = C();
        }
        if (kVar != null) {
            for (NavBackStackEntryState navBackStackEntryState : kVar) {
                NavDestination navDestinationT = t(navDestinationC, navBackStackEntryState.c());
                if (navDestinationT == null) {
                    throw new IllegalStateException(("Restore State failed: destination " + NavDestination.Companion.b(this.context, navBackStackEntryState.c()) + " cannot be found from the current destination " + navDestinationC).toString());
                }
                arrayList.add(navBackStackEntryState.g(this.context, navDestinationT, D(), this.viewModel));
                navDestinationC = navDestinationT;
            }
        }
        return arrayList;
    }

    private final void J(NavBackStackEntry navBackStackEntry, NavBackStackEntry navBackStackEntry2) {
        this.childToParentEntries.put(navBackStackEntry, navBackStackEntry2);
        if (this.parentToChildCount.get(navBackStackEntry2) == null) {
            this.parentToChildCount.put(navBackStackEntry2, new AtomicInteger(0));
        }
        AtomicInteger atomicInteger = this.parentToChildCount.get(navBackStackEntry2);
        t.g(atomicInteger);
        atomicInteger.incrementAndGet();
    }

    /* JADX WARN: Code duplicated, block: B:37:0x010e A[LOOP:1: B:35:0x0108->B:37:0x010e, LOOP_END] */
    @MainThread
    private final void K(NavDestination navDestination, Bundle bundle, NavOptions navOptions, Navigator.Extras extras) {
        boolean z6;
        NavDestination navDestinationF;
        Iterator<T> it;
        Iterator<T> it2 = this.navigatorState.values().iterator();
        while (true) {
            z6 = true;
            if (!it2.hasNext()) {
                break;
            } else {
                ((NavControllerNavigatorState) it2.next()).i(true);
            }
        }
        k0 k0Var = new k0();
        boolean zS = (navOptions == null || navOptions.e() == -1) ? false : S(navOptions.e(), navOptions.f(), navOptions.h());
        Bundle bundleE = navDestination.e(bundle);
        if (navOptions == null || !navOptions.i() || !this.backStackMap.containsKey(Integer.valueOf(navDestination.p()))) {
            NavBackStackEntry navBackStackEntryZ = z();
            Navigator<? extends NavDestination> navigatorE = this._navigatorProvider.e(navDestination.r());
            if (navOptions == null || !navOptions.g() || navBackStackEntryZ == null || (navDestinationF = navBackStackEntryZ.f()) == null || navDestination.p() != navDestinationF.p()) {
                L(navigatorE, u.e(NavBackStackEntry.Companion.b(NavBackStackEntry.Companion, this.context, navDestination, bundleE, D(), this.viewModel, null, null, 96, null)), navOptions, extras, new NavController$navigate$4(k0Var, this, navDestination, bundleE));
            } else {
                h0(v().y());
                NavBackStackEntry navBackStackEntry = new NavBackStackEntry(navBackStackEntryZ, bundleE);
                v().g(navBackStackEntry);
                NavGraph navGraphS = navBackStackEntry.f().s();
                if (navGraphS != null) {
                    J(navBackStackEntry, w(navGraphS.p()));
                }
                navigatorE.g(navBackStackEntry);
            }
            j0();
            it = this.navigatorState.values().iterator();
            while (it.hasNext()) {
                ((NavControllerNavigatorState) it.next()).i(false);
            }
            if (!zS || k0Var.element || z6) {
                q();
            } else {
                i0();
                return;
            }
        }
        k0Var.element = Z(navDestination.p(), bundleE, navOptions, extras);
        z6 = false;
        j0();
        it = this.navigatorState.values().iterator();
        while (it.hasNext()) {
            ((NavControllerNavigatorState) it.next()).i(false);
        }
        if (zS) {
        }
        q();
    }

    private final void L(Navigator<? extends NavDestination> navigator, List<NavBackStackEntry> list, NavOptions navOptions, Navigator.Extras extras, l<? super NavBackStackEntry, l0> lVar) {
        this.addToBackStackHandler = lVar;
        navigator.e(list, navOptions, extras);
        this.addToBackStackHandler = null;
    }

    @MainThread
    private final void M(Bundle bundle) {
        Activity activity;
        ArrayList<String> stringArrayList;
        Bundle bundle2 = this.navigatorStateToRestore;
        if (bundle2 != null && (stringArrayList = bundle2.getStringArrayList(KEY_NAVIGATOR_STATE_NAMES)) != null) {
            for (String name : stringArrayList) {
                NavigatorProvider navigatorProvider = this._navigatorProvider;
                t.i(name, "name");
                Navigator navigatorE = navigatorProvider.e(name);
                Bundle bundle3 = bundle2.getBundle(name);
                if (bundle3 != null) {
                    navigatorE.h(bundle3);
                }
            }
        }
        Parcelable[] parcelableArr = this.backStackToRestore;
        if (parcelableArr != null) {
            for (Parcelable parcelable : parcelableArr) {
                NavBackStackEntryState navBackStackEntryState = (NavBackStackEntryState) parcelable;
                NavDestination navDestinationS = s(navBackStackEntryState.c());
                if (navDestinationS == null) {
                    throw new IllegalStateException("Restoring the Navigation back stack failed: destination " + NavDestination.Companion.b(this.context, navBackStackEntryState.c()) + " cannot be found from the current destination " + A());
                }
                NavBackStackEntry navBackStackEntryG = navBackStackEntryState.g(this.context, navDestinationS, D(), this.viewModel);
                Navigator<? extends NavDestination> navigatorE2 = this._navigatorProvider.e(navDestinationS.r());
                Map<Navigator<? extends NavDestination>, NavControllerNavigatorState> map = this.navigatorState;
                NavControllerNavigatorState navControllerNavigatorState = map.get(navigatorE2);
                if (navControllerNavigatorState == null) {
                    navControllerNavigatorState = new NavControllerNavigatorState(this, navigatorE2);
                    map.put(navigatorE2, navControllerNavigatorState);
                }
                v().add(navBackStackEntryG);
                navControllerNavigatorState.k(navBackStackEntryG);
                NavGraph navGraphS = navBackStackEntryG.f().s();
                if (navGraphS != null) {
                    J(navBackStackEntryG, w(navGraphS.p()));
                }
            }
            j0();
            this.backStackToRestore = null;
        }
        Collection<Navigator<? extends NavDestination>> collectionValues = this._navigatorProvider.f().values();
        ArrayList<Navigator<? extends NavDestination>> arrayList = new ArrayList();
        for (Object obj : collectionValues) {
            if (!((Navigator) obj).c()) {
                arrayList.add(obj);
            }
        }
        for (Navigator<? extends NavDestination> navigator : arrayList) {
            Map<Navigator<? extends NavDestination>, NavControllerNavigatorState> map2 = this.navigatorState;
            NavControllerNavigatorState navControllerNavigatorState2 = map2.get(navigator);
            if (navControllerNavigatorState2 == null) {
                navControllerNavigatorState2 = new NavControllerNavigatorState(this, navigator);
                map2.put(navigator, navControllerNavigatorState2);
            }
            navigator.f(navControllerNavigatorState2);
        }
        if (this._graph == null || !v().isEmpty()) {
            q();
            return;
        }
        if (!this.deepLinkHandled && (activity = this.activity) != null) {
            t.g(activity);
            if (G(activity.getIntent())) {
                return;
            }
        }
        NavGraph navGraph = this._graph;
        t.g(navGraph);
        K(navGraph, bundle, null, null);
    }

    private final void R(Navigator<? extends NavDestination> navigator, NavBackStackEntry navBackStackEntry, boolean z6, l<? super NavBackStackEntry, l0> lVar) {
        this.popFromBackStackHandler = lVar;
        navigator.j(navBackStackEntry, z6);
        this.popFromBackStackHandler = null;
    }

    @MainThread
    private final boolean S(@IdRes int i10, boolean z6, boolean z10) {
        NavDestination navDestination;
        if (v().isEmpty()) {
            return false;
        }
        ArrayList<Navigator<? extends NavDestination>> arrayList = new ArrayList();
        Iterator it = kotlin.collections.d0.G0(v()).iterator();
        while (true) {
            if (!it.hasNext()) {
                navDestination = null;
                break;
            }
            NavDestination navDestinationF = ((NavBackStackEntry) it.next()).f();
            Navigator navigatorE = this._navigatorProvider.e(navDestinationF.r());
            if (z6 || navDestinationF.p() != i10) {
                arrayList.add(navigatorE);
            }
            if (navDestinationF.p() == i10) {
                navDestination = navDestinationF;
                break;
            }
        }
        if (navDestination == null) {
            Log.i(TAG, "Ignoring popBackStack to destination " + NavDestination.Companion.b(this.context, i10) + " as it was not found on the current back stack");
            return false;
        }
        k0 k0Var = new k0();
        k<NavBackStackEntryState> kVar = new k<>();
        for (Navigator<? extends NavDestination> navigator : arrayList) {
            k0 k0Var2 = new k0();
            R(navigator, v().last(), z10, new NavController$popBackStackInternal$2(k0Var2, k0Var, this, z10, kVar));
            if (!k0Var2.element) {
                break;
            }
        }
        if (z10) {
            if (!z6) {
                for (NavDestination navDestination2 : kotlin.sequences.o.y(kotlin.sequences.m.f(navDestination, NavController$popBackStackInternal$3.INSTANCE), new NavController$popBackStackInternal$4(this))) {
                    Map<Integer, String> map = this.backStackMap;
                    Integer numValueOf = Integer.valueOf(navDestination2.p());
                    NavBackStackEntryState navBackStackEntryStateR = kVar.r();
                    map.put(numValueOf, navBackStackEntryStateR != null ? navBackStackEntryStateR.e() : null);
                }
            }
            if (!kVar.isEmpty()) {
                NavBackStackEntryState navBackStackEntryStateFirst = kVar.first();
                Iterator it2 = kotlin.sequences.o.y(kotlin.sequences.m.f(s(navBackStackEntryStateFirst.c()), NavController$popBackStackInternal$6.INSTANCE), new NavController$popBackStackInternal$7(this)).iterator();
                while (it2.hasNext()) {
                    this.backStackMap.put(Integer.valueOf(((NavDestination) it2.next()).p()), navBackStackEntryStateFirst.e());
                }
                this.backStackStates.put(navBackStackEntryStateFirst.e(), kVar);
            }
        }
        j0();
        return k0Var.element;
    }

    static /* synthetic */ boolean T(NavController navController, int i10, boolean z6, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: popBackStackInternal");
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return navController.S(i10, z6, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void V(NavController navController, NavBackStackEntry navBackStackEntry, boolean z6, k kVar, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: popEntryFromBackStack");
        }
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        if ((i10 & 4) != 0) {
            kVar = new k();
        }
        navController.U(navBackStackEntry, z6, kVar);
    }

    private final boolean Z(int i10, Bundle bundle, NavOptions navOptions, Navigator.Extras extras) {
        NavBackStackEntry navBackStackEntry;
        NavDestination navDestinationF;
        if (!this.backStackMap.containsKey(Integer.valueOf(i10))) {
            return false;
        }
        String str = this.backStackMap.get(Integer.valueOf(i10));
        a0.I(this.backStackMap.values(), new NavController$restoreStateInternal$1(str));
        List<NavBackStackEntry> listH = H((k) v0.d(this.backStackStates).remove(str));
        ArrayList<List<NavBackStackEntry>> arrayList = new ArrayList();
        ArrayList<NavBackStackEntry> arrayList2 = new ArrayList();
        for (Object obj : listH) {
            if (!(((NavBackStackEntry) obj).f() instanceof NavGraph)) {
                arrayList2.add(obj);
            }
        }
        for (NavBackStackEntry navBackStackEntry2 : arrayList2) {
            List list = (List) kotlin.collections.d0.w0(arrayList);
            if (t.e((list == null || (navBackStackEntry = (NavBackStackEntry) kotlin.collections.d0.v0(list)) == null || (navDestinationF = navBackStackEntry.f()) == null) ? null : navDestinationF.r(), navBackStackEntry2.f().r())) {
                list.add(navBackStackEntry2);
            } else {
                arrayList.add(v.s(navBackStackEntry2));
            }
        }
        k0 k0Var = new k0();
        for (List<NavBackStackEntry> list2 : arrayList) {
            L(this._navigatorProvider.e(((NavBackStackEntry) kotlin.collections.d0.j0(list2)).f().r()), list2, navOptions, extras, new NavController$restoreStateInternal$4(k0Var, listH, new kotlin.jvm.internal.n0(), this, bundle));
        }
        return k0Var.element;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x000e  */
    private final void j0() {
        boolean z6;
        OnBackPressedCallback onBackPressedCallback = this.onBackPressedCallback;
        if (this.enableOnBackPressedCallback) {
            z6 = B() > 1;
        }
        onBackPressedCallback.i(z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(NavDestination navDestination, Bundle bundle, NavBackStackEntry navBackStackEntry, List<NavBackStackEntry> list) {
        NavBackStackEntry navBackStackEntry2;
        NavBackStackEntry navBackStackEntryPrevious;
        NavBackStackEntry navBackStackEntryPrevious2;
        Bundle bundle2 = bundle;
        NavBackStackEntry navBackStackEntry3 = navBackStackEntry;
        List<NavBackStackEntry> list2 = list;
        NavDestination navDestinationF = navBackStackEntry.f();
        if (!(navDestinationF instanceof FloatingWindow)) {
            while (!v().isEmpty() && (v().last().f() instanceof FloatingWindow) && T(this, v().last().f().p(), true, false, 4, null)) {
            }
        }
        k<NavBackStackEntry> kVar = new k();
        NavBackStackEntry navBackStackEntry4 = null;
        if (navDestination instanceof NavGraph) {
            NavDestination navDestination2 = navDestinationF;
            while (true) {
                t.g(navDestination2);
                NavGraph navGraphS = navDestination2.s();
                if (navGraphS != null) {
                    ListIterator<NavBackStackEntry> listIterator = list2.listIterator(list.size());
                    do {
                        if (!listIterator.hasPrevious()) {
                            navBackStackEntryPrevious2 = null;
                            break;
                        }
                        navBackStackEntryPrevious2 = listIterator.previous();
                    } while (!t.e(navBackStackEntryPrevious2.f(), navGraphS));
                    NavBackStackEntry navBackStackEntryB = navBackStackEntryPrevious2;
                    if (navBackStackEntryB == null) {
                        navBackStackEntry2 = navBackStackEntry3;
                        navBackStackEntryB = NavBackStackEntry.Companion.b(NavBackStackEntry.Companion, this.context, navGraphS, bundle, D(), this.viewModel, null, null, 96, null);
                    } else {
                        navBackStackEntry2 = navBackStackEntry3;
                    }
                    kVar.f(navBackStackEntryB);
                    if ((!v().isEmpty()) && v().last().f() == navGraphS) {
                        V(this, v().last(), false, null, 6, null);
                    }
                } else {
                    navDestinationF = navDestinationF;
                    navBackStackEntry2 = navBackStackEntry3;
                }
                if (navGraphS == 0 || navGraphS == navDestination) {
                    break;
                }
                navBackStackEntry3 = navBackStackEntry2;
                navDestination2 = navGraphS;
                kVar = kVar;
                bundle2 = bundle2;
                list2 = list2;
                navDestinationF = navDestinationF;
            }
        } else {
            kVar = kVar;
            navDestinationF = navDestinationF;
            list2 = list2;
            navBackStackEntry2 = navBackStackEntry3;
            bundle2 = bundle2;
        }
        NavDestination navDestinationF2 = kVar.isEmpty() ? navDestinationF : ((NavBackStackEntry) kVar.first()).f();
        while (navDestinationF2 != null && s(navDestinationF2.p()) == null) {
            navDestinationF2 = navDestinationF2.s();
            if (navDestinationF2 != null) {
                ListIterator<NavBackStackEntry> listIterator2 = list2.listIterator(list.size());
                do {
                    if (!listIterator2.hasPrevious()) {
                        navBackStackEntryPrevious = null;
                        break;
                    }
                    navBackStackEntryPrevious = listIterator2.previous();
                } while (!t.e(navBackStackEntryPrevious.f(), navDestinationF2));
                NavBackStackEntry navBackStackEntryB2 = navBackStackEntryPrevious;
                if (navBackStackEntryB2 == null) {
                    navBackStackEntryB2 = NavBackStackEntry.Companion.b(NavBackStackEntry.Companion, this.context, navDestinationF2, navDestinationF2.e(bundle2), D(), this.viewModel, null, null, 96, null);
                }
                kVar.f(navBackStackEntryB2);
            }
        }
        if (!kVar.isEmpty()) {
            navDestinationF = ((NavBackStackEntry) kVar.last()).f();
        }
        while (!v().isEmpty() && (v().last().f() instanceof NavGraph) && ((NavGraph) v().last().f()).D(navDestinationF.p(), false) == null) {
            V(this, v().last(), false, null, 6, null);
        }
        NavBackStackEntry navBackStackEntryR = v().r();
        if (navBackStackEntryR == null) {
            navBackStackEntryR = (NavBackStackEntry) kVar.r();
        }
        if (!t.e(navBackStackEntryR != null ? navBackStackEntryR.f() : null, this._graph)) {
            ListIterator<NavBackStackEntry> listIterator3 = list2.listIterator(list.size());
            while (listIterator3.hasPrevious()) {
                NavBackStackEntry navBackStackEntryPrevious3 = listIterator3.previous();
                NavDestination navDestinationF3 = navBackStackEntryPrevious3.f();
                NavGraph navGraph = this._graph;
                t.g(navGraph);
                if (t.e(navDestinationF3, navGraph)) {
                    navBackStackEntry4 = navBackStackEntryPrevious3;
                    break;
                }
            }
            NavBackStackEntry navBackStackEntryB3 = navBackStackEntry4;
            if (navBackStackEntryB3 == null) {
                NavBackStackEntry.Companion companion = NavBackStackEntry.Companion;
                Context context = this.context;
                NavGraph navGraph2 = this._graph;
                t.g(navGraph2);
                NavGraph navGraph3 = this._graph;
                t.g(navGraph3);
                navBackStackEntryB3 = NavBackStackEntry.Companion.b(companion, context, navGraph2, navGraph3.e(bundle2), D(), this.viewModel, null, null, 96, null);
            }
            kVar.f(navBackStackEntryB3);
        }
        for (NavBackStackEntry navBackStackEntry5 : kVar) {
            NavControllerNavigatorState navControllerNavigatorState = this.navigatorState.get(this._navigatorProvider.e(navBackStackEntry5.f().r()));
            if (navControllerNavigatorState == null) {
                throw new IllegalStateException(("NavigatorBackStack for " + navDestination.r() + " should already be created").toString());
            }
            navControllerNavigatorState.k(navBackStackEntry5);
        }
        v().addAll(kVar);
        v().add(navBackStackEntry2);
        for (NavBackStackEntry navBackStackEntry6 : kotlin.collections.d0.E0(kVar, navBackStackEntry2)) {
            NavGraph navGraphS2 = navBackStackEntry6.f().s();
            if (navGraphS2 != null) {
                J(navBackStackEntry6, w(navGraphS2.p()));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void o(NavController navController, NavDestination navDestination, Bundle bundle, NavBackStackEntry navBackStackEntry, List list, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addEntryToBackStack");
        }
        if ((i10 & 8) != 0) {
            list = v.m();
        }
        navController.n(navDestination, bundle, navBackStackEntry, list);
    }

    @MainThread
    private final boolean p(@IdRes int i10) {
        Iterator<T> it = this.navigatorState.values().iterator();
        while (it.hasNext()) {
            ((NavControllerNavigatorState) it.next()).i(true);
        }
        boolean Z = Z(i10, null, null, null);
        Iterator<T> it2 = this.navigatorState.values().iterator();
        while (it2.hasNext()) {
            ((NavControllerNavigatorState) it2.next()).i(false);
        }
        return Z && S(i10, true, false);
    }

    private final String u(int[] iArr) {
        NavGraph navGraph;
        NavGraph navGraph2 = this._graph;
        int length = iArr.length;
        int i10 = 0;
        while (true) {
            NavDestination navDestinationC = null;
            if (i10 >= length) {
                return null;
            }
            int i11 = iArr[i10];
            if (i10 == 0) {
                NavGraph navGraph3 = this._graph;
                t.g(navGraph3);
                if (navGraph3.p() == i11) {
                    navDestinationC = this._graph;
                }
            } else {
                t.g(navGraph2);
                navDestinationC = navGraph2.C(i11);
            }
            if (navDestinationC == null) {
                return NavDestination.Companion.b(this.context, i11);
            }
            if (i10 != iArr.length - 1 && (navDestinationC instanceof NavGraph)) {
                while (true) {
                    navGraph = (NavGraph) navDestinationC;
                    t.g(navGraph);
                    if (!(navGraph.C(navGraph.I()) instanceof NavGraph)) {
                        break;
                    }
                    navDestinationC = navGraph.C(navGraph.I());
                }
                navGraph2 = navGraph;
            }
            i10++;
        }
    }

    @MainThread
    @NotNull
    public NavGraph C() {
        NavGraph navGraph = this._graph;
        if (navGraph == null) {
            throw new IllegalStateException("You must call setGraph() before calling getGraph()".toString());
        }
        if (navGraph != null) {
            return navGraph;
        }
        throw new NullPointerException("null cannot be cast to non-null type androidx.navigation.NavGraph");
    }

    @NotNull
    public final Lifecycle.State D() {
        return this.lifecycleOwner == null ? Lifecycle.State.CREATED : this.hostLifecycleState;
    }

    @NotNull
    public NavInflater E() {
        return (NavInflater) this.navInflater$delegate.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0063  */
    @MainThread
    public boolean G(@Nullable Intent intent) {
        int[] iArr;
        NavDestination navDestinationC;
        NavGraph navGraph;
        Bundle bundle;
        int i10 = 0;
        if (intent == null) {
            return false;
        }
        Bundle extras = intent.getExtras();
        int[] intArray = extras != null ? extras.getIntArray(KEY_DEEP_LINK_IDS) : null;
        ArrayList parcelableArrayList = extras != null ? extras.getParcelableArrayList(KEY_DEEP_LINK_ARGS) : null;
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = extras != null ? extras.getBundle(KEY_DEEP_LINK_EXTRAS) : null;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        if (intArray == null || intArray.length == 0) {
            NavGraph navGraph2 = this._graph;
            t.g(navGraph2);
            NavDestination.DeepLinkMatch deepLinkMatchU = navGraph2.u(new NavDeepLinkRequest(intent));
            if (deepLinkMatchU != null) {
                NavDestination navDestinationB = deepLinkMatchU.b();
                int[] iArrG = NavDestination.g(navDestinationB, null, 1, null);
                Bundle bundleE = navDestinationB.e(deepLinkMatchU.c());
                if (bundleE != null) {
                    bundle2.putAll(bundleE);
                }
                iArr = iArrG;
                parcelableArrayList = null;
            } else {
                iArr = intArray;
            }
        } else {
            iArr = intArray;
        }
        if (iArr == null || iArr.length == 0) {
            return false;
        }
        String strU = u(iArr);
        if (strU != null) {
            Log.i(TAG, "Could not find destination " + strU + " in the navigation graph, ignoring the deep link from " + intent);
            return false;
        }
        bundle2.putParcelable(KEY_DEEP_LINK_INTENT, intent);
        int length = iArr.length;
        Bundle[] bundleArr = new Bundle[length];
        for (int i11 = 0; i11 < length; i11++) {
            Bundle bundle4 = new Bundle();
            bundle4.putAll(bundle2);
            if (parcelableArrayList != null && (bundle = (Bundle) parcelableArrayList.get(i11)) != null) {
                bundle4.putAll(bundle);
            }
            bundleArr[i11] = bundle4;
        }
        int flags = intent.getFlags();
        int i12 = 268435456 & flags;
        if (i12 != 0 && (flags & 32768) == 0) {
            intent.addFlags(32768);
            TaskStackBuilder taskStackBuilderB = TaskStackBuilder.e(this.context).b(intent);
            t.i(taskStackBuilderB, "create(context)\n        …ntWithParentStack(intent)");
            taskStackBuilderB.f();
            Activity activity = this.activity;
            if (activity != null) {
                activity.finish();
                activity.overridePendingTransition(0, 0);
            }
            return true;
        }
        if (i12 != 0) {
            if (!v().isEmpty()) {
                NavGraph navGraph3 = this._graph;
                t.g(navGraph3);
                T(this, navGraph3.p(), true, false, 4, null);
            }
            while (i10 < iArr.length) {
                int i13 = iArr[i10];
                int i14 = i10 + 1;
                Bundle bundle5 = bundleArr[i10];
                NavDestination navDestinationS = s(i13);
                if (navDestinationS == null) {
                    throw new IllegalStateException("Deep Linking failed: destination " + NavDestination.Companion.b(this.context, i13) + " cannot be found from the current destination " + A());
                }
                K(navDestinationS, bundle5, NavOptionsBuilderKt.a(new NavController$handleDeepLink$2(navDestinationS, this)), null);
                i10 = i14;
            }
            return true;
        }
        NavGraph navGraph4 = this._graph;
        int length2 = iArr.length;
        for (int i15 = 0; i15 < length2; i15++) {
            int i16 = iArr[i15];
            Bundle bundle6 = bundleArr[i15];
            if (i15 == 0) {
                navDestinationC = this._graph;
            } else {
                t.g(navGraph4);
                navDestinationC = navGraph4.C(i16);
            }
            if (navDestinationC == null) {
                throw new IllegalStateException("Deep Linking failed: destination " + NavDestination.Companion.b(this.context, i16) + " cannot be found in graph " + navGraph4);
            }
            if (i15 == iArr.length - 1) {
                NavOptions.Builder builder = new NavOptions.Builder();
                NavGraph navGraph5 = this._graph;
                t.g(navGraph5);
                K(navDestinationC, bundle6, NavOptions.Builder.i(builder, navGraph5.p(), true, false, 4, null).b(0).c(0).a(), null);
            } else if (navDestinationC instanceof NavGraph) {
                while (true) {
                    navGraph = (NavGraph) navDestinationC;
                    t.g(navGraph);
                    if (!(navGraph.C(navGraph.I()) instanceof NavGraph)) {
                        break;
                    }
                    navDestinationC = navGraph.C(navGraph.I());
                }
                navGraph4 = navGraph;
            }
        }
        this.deepLinkHandled = true;
        return true;
    }

    @NotNull
    public final List<NavBackStackEntry> W() {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = this.navigatorState.values().iterator();
        while (it.hasNext()) {
            Set<NavBackStackEntry> value = ((NavControllerNavigatorState) it.next()).c().getValue();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : value) {
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                if (!arrayList.contains(navBackStackEntry) && !navBackStackEntry.h().b(Lifecycle.State.STARTED)) {
                    arrayList2.add(obj);
                }
            }
            a0.D(arrayList, arrayList2);
        }
        k<NavBackStackEntry> kVarV = v();
        ArrayList arrayList3 = new ArrayList();
        for (NavBackStackEntry navBackStackEntry2 : kVarV) {
            NavBackStackEntry navBackStackEntry3 = navBackStackEntry2;
            if (!arrayList.contains(navBackStackEntry3) && navBackStackEntry3.h().b(Lifecycle.State.STARTED)) {
                arrayList3.add(navBackStackEntry2);
            }
        }
        a0.D(arrayList, arrayList3);
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (!(((NavBackStackEntry) obj2).f() instanceof NavGraph)) {
                arrayList4.add(obj2);
            }
        }
        return arrayList4;
    }

    public void X(@NotNull OnDestinationChangedListener listener) {
        t.j(listener, "listener");
        this.onDestinationChangedListeners.remove(listener);
    }

    @CallSuper
    public void Y(@Nullable Bundle bundle) {
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(this.context.getClassLoader());
        this.navigatorStateToRestore = bundle.getBundle(KEY_NAVIGATOR_STATE);
        this.backStackToRestore = bundle.getParcelableArray(KEY_BACK_STACK);
        this.backStackStates.clear();
        int[] intArray = bundle.getIntArray(KEY_BACK_STACK_DEST_IDS);
        ArrayList<String> stringArrayList = bundle.getStringArrayList(KEY_BACK_STACK_IDS);
        if (intArray != null && stringArrayList != null) {
            int length = intArray.length;
            int i10 = 0;
            int i11 = 0;
            while (i10 < length) {
                this.backStackMap.put(Integer.valueOf(intArray[i10]), stringArrayList.get(i11));
                i10++;
                i11++;
            }
        }
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList(KEY_BACK_STACK_STATES_IDS);
        if (stringArrayList2 != null) {
            for (String id : stringArrayList2) {
                Parcelable[] parcelableArray = bundle.getParcelableArray(KEY_BACK_STACK_STATES_PREFIX + id);
                if (parcelableArray != null) {
                    Map<String, k<NavBackStackEntryState>> map = this.backStackStates;
                    t.i(id, "id");
                    k<NavBackStackEntryState> kVar = new k<>(parcelableArray.length);
                    Iterator itA = c.a(parcelableArray);
                    while (itA.hasNext()) {
                        Parcelable parcelable = (Parcelable) itA.next();
                        if (parcelable == null) {
                            throw new NullPointerException("null cannot be cast to non-null type androidx.navigation.NavBackStackEntryState");
                        }
                        kVar.add((NavBackStackEntryState) parcelable);
                    }
                    map.put(id, kVar);
                }
            }
        }
        this.deepLinkHandled = bundle.getBoolean(KEY_DEEP_LINK_HANDLED);
    }

    @CallSuper
    @Nullable
    public Bundle a0() {
        Bundle bundle;
        ArrayList<String> arrayList = new ArrayList<>();
        Bundle bundle2 = new Bundle();
        for (Map.Entry<String, Navigator<? extends NavDestination>> entry : this._navigatorProvider.f().entrySet()) {
            String key = entry.getKey();
            Bundle bundleI = entry.getValue().i();
            if (bundleI != null) {
                arrayList.add(key);
                bundle2.putBundle(key, bundleI);
            }
        }
        if (!arrayList.isEmpty()) {
            bundle = new Bundle();
            bundle2.putStringArrayList(KEY_NAVIGATOR_STATE_NAMES, arrayList);
            bundle.putBundle(KEY_NAVIGATOR_STATE, bundle2);
        } else {
            bundle = null;
        }
        if (!v().isEmpty()) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            Parcelable[] parcelableArr = new Parcelable[v().size()];
            Iterator<NavBackStackEntry> it = v().iterator();
            int i10 = 0;
            while (it.hasNext()) {
                parcelableArr[i10] = new NavBackStackEntryState(it.next());
                i10++;
            }
            bundle.putParcelableArray(KEY_BACK_STACK, parcelableArr);
        }
        if (!this.backStackMap.isEmpty()) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            int[] iArr = new int[this.backStackMap.size()];
            ArrayList<String> arrayList2 = new ArrayList<>();
            int i11 = 0;
            for (Map.Entry<Integer, String> entry2 : this.backStackMap.entrySet()) {
                int iIntValue = entry2.getKey().intValue();
                String value = entry2.getValue();
                iArr[i11] = iIntValue;
                arrayList2.add(value);
                i11++;
            }
            bundle.putIntArray(KEY_BACK_STACK_DEST_IDS, iArr);
            bundle.putStringArrayList(KEY_BACK_STACK_IDS, arrayList2);
        }
        if (!this.backStackStates.isEmpty()) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            ArrayList<String> arrayList3 = new ArrayList<>();
            for (Map.Entry<String, k<NavBackStackEntryState>> entry3 : this.backStackStates.entrySet()) {
                String key2 = entry3.getKey();
                k<NavBackStackEntryState> value2 = entry3.getValue();
                arrayList3.add(key2);
                Parcelable[] parcelableArr2 = new Parcelable[value2.size()];
                int i12 = 0;
                for (NavBackStackEntryState navBackStackEntryState : value2) {
                    int i13 = i12 + 1;
                    if (i12 < 0) {
                        v.w();
                    }
                    parcelableArr2[i12] = navBackStackEntryState;
                    i12 = i13;
                }
                bundle.putParcelableArray(KEY_BACK_STACK_STATES_PREFIX + key2, parcelableArr2);
            }
            bundle.putStringArrayList(KEY_BACK_STACK_STATES_IDS, arrayList3);
        }
        if (this.deepLinkHandled) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean(KEY_DEEP_LINK_HANDLED, this.deepLinkHandled);
        }
        return bundle;
    }

    @CallSuper
    @MainThread
    public void d0(@NotNull NavGraph graph, @Nullable Bundle bundle) {
        t.j(graph, "graph");
        if (!t.e(this._graph, graph)) {
            NavGraph navGraph = this._graph;
            if (navGraph != null) {
                for (Integer id : new ArrayList(this.backStackMap.keySet())) {
                    t.i(id, "id");
                    p(id.intValue());
                }
                T(this, navGraph.p(), true, false, 4, null);
            }
            this._graph = graph;
            M(bundle);
            return;
        }
        int iR = graph.G().r();
        for (int i10 = 0; i10 < iR; i10++) {
            NavDestination newDestination = graph.G().s(i10);
            NavGraph navGraph2 = this._graph;
            t.g(navGraph2);
            navGraph2.G().q(i10, newDestination);
            k<NavBackStackEntry> kVarV = v();
            ArrayList<NavBackStackEntry> arrayList = new ArrayList();
            for (NavBackStackEntry navBackStackEntry : kVarV) {
                NavBackStackEntry navBackStackEntry2 = navBackStackEntry;
                if (newDestination != null && navBackStackEntry2.f().p() == newDestination.p()) {
                    arrayList.add(navBackStackEntry);
                }
            }
            for (NavBackStackEntry navBackStackEntry3 : arrayList) {
                t.i(newDestination, "newDestination");
                navBackStackEntry3.k(newDestination);
            }
        }
    }

    @RestrictTo
    public void f0(@NotNull OnBackPressedDispatcher dispatcher) {
        t.j(dispatcher, "dispatcher");
        if (t.e(dispatcher, this.onBackPressedDispatcher)) {
            return;
        }
        LifecycleOwner lifecycleOwner = this.lifecycleOwner;
        if (lifecycleOwner == null) {
            throw new IllegalStateException("You must call setLifecycleOwner() before calling setOnBackPressedDispatcher()".toString());
        }
        this.onBackPressedCallback.g();
        this.onBackPressedDispatcher = dispatcher;
        dispatcher.b(lifecycleOwner, this.onBackPressedCallback);
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        lifecycle.d(this.lifecycleObserver);
        lifecycle.a(this.lifecycleObserver);
    }

    @Nullable
    public final NavBackStackEntry h0(@NotNull NavBackStackEntry child) {
        t.j(child, "child");
        NavBackStackEntry navBackStackEntryRemove = this.childToParentEntries.remove(child);
        if (navBackStackEntryRemove == null) {
            return null;
        }
        AtomicInteger atomicInteger = this.parentToChildCount.get(navBackStackEntryRemove);
        Integer numValueOf = atomicInteger != null ? Integer.valueOf(atomicInteger.decrementAndGet()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            NavControllerNavigatorState navControllerNavigatorState = this.navigatorState.get(this._navigatorProvider.e(navBackStackEntryRemove.f().r()));
            if (navControllerNavigatorState != null) {
                navControllerNavigatorState.e(navBackStackEntryRemove);
            }
            this.parentToChildCount.remove(navBackStackEntryRemove);
        }
        return navBackStackEntryRemove;
    }

    @RestrictTo
    public void r(boolean z6) {
        this.enableOnBackPressedCallback = z6;
        j0();
    }

    @RestrictTo
    @Nullable
    public final NavDestination s(@IdRes int i10) {
        NavDestination navDestinationF;
        NavGraph navGraph = this._graph;
        if (navGraph == null) {
            return null;
        }
        t.g(navGraph);
        if (navGraph.p() == i10) {
            return this._graph;
        }
        NavBackStackEntry navBackStackEntryT = v().t();
        if (navBackStackEntryT == null || (navDestinationF = navBackStackEntryT.f()) == null) {
            navDestinationF = this._graph;
            t.g(navDestinationF);
        }
        return t(navDestinationF, i10);
    }

    private final int B() {
        k<NavBackStackEntry> kVarV = v();
        int i10 = 0;
        if (!(kVarV instanceof Collection) || !kVarV.isEmpty()) {
            Iterator<NavBackStackEntry> it = kVarV.iterator();
            while (it.hasNext()) {
                if ((!(it.next().f() instanceof NavGraph)) && (i10 = i10 + 1) < 0) {
                    v.v();
                }
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(NavController this$0, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        t.j(this$0, "this$0");
        t.j(lifecycleOwner, "<anonymous parameter 0>");
        t.j(event, "event");
        Lifecycle.State stateC = event.c();
        t.i(stateC, "event.targetState");
        this$0.hostLifecycleState = stateC;
        if (this$0._graph != null) {
            Iterator<NavBackStackEntry> it = this$0.v().iterator();
            while (it.hasNext()) {
                it.next().i(event);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U(NavBackStackEntry navBackStackEntry, boolean z6, k<NavBackStackEntryState> kVar) {
        NavControllerViewModel navControllerViewModel;
        kotlinx.coroutines.flow.l0<Set<NavBackStackEntry>> l0VarC;
        Set<NavBackStackEntry> value;
        NavBackStackEntry navBackStackEntryLast = v().last();
        if (t.e(navBackStackEntryLast, navBackStackEntry)) {
            v().y();
            NavControllerNavigatorState navControllerNavigatorState = this.navigatorState.get(F().e(navBackStackEntryLast.f().r()));
            boolean z10 = true;
            if ((navControllerNavigatorState == null || (l0VarC = navControllerNavigatorState.c()) == null || (value = l0VarC.getValue()) == null || !value.contains(navBackStackEntryLast)) && !this.parentToChildCount.containsKey(navBackStackEntryLast)) {
                z10 = false;
            }
            Lifecycle.State stateB = navBackStackEntryLast.getLifecycle().b();
            Lifecycle.State state = Lifecycle.State.CREATED;
            if (stateB.b(state)) {
                if (z6) {
                    navBackStackEntryLast.l(state);
                    kVar.f(new NavBackStackEntryState(navBackStackEntryLast));
                }
                if (!z10) {
                    navBackStackEntryLast.l(Lifecycle.State.DESTROYED);
                    h0(navBackStackEntryLast);
                } else {
                    navBackStackEntryLast.l(state);
                }
            }
            if (!z6 && !z10 && (navControllerViewModel = this.viewModel) != null) {
                navControllerViewModel.e(navBackStackEntryLast.g());
                return;
            }
            return;
        }
        throw new IllegalStateException(("Attempted to pop " + navBackStackEntry.f() + ", which is not the top of the back stack (" + navBackStackEntryLast.f() + ')').toString());
    }

    private final boolean q() {
        while (!v().isEmpty() && (v().last().f() instanceof NavGraph)) {
            V(this, v().last(), false, null, 6, null);
        }
        NavBackStackEntry navBackStackEntryT = v().t();
        if (navBackStackEntryT != null) {
            this.backStackEntriesToDispatch.add(navBackStackEntryT);
        }
        this.dispatchReentrantCount++;
        i0();
        int i10 = this.dispatchReentrantCount - 1;
        this.dispatchReentrantCount = i10;
        if (i10 == 0) {
            List<NavBackStackEntry> listW0 = kotlin.collections.d0.W0(this.backStackEntriesToDispatch);
            this.backStackEntriesToDispatch.clear();
            for (NavBackStackEntry navBackStackEntry : listW0) {
                Iterator<OnDestinationChangedListener> it = this.onDestinationChangedListeners.iterator();
                while (it.hasNext()) {
                    it.next().a(this, navBackStackEntry.f(), navBackStackEntry.d());
                }
                this._currentBackStackEntryFlow.c(navBackStackEntry);
            }
            this._visibleEntries.c(W());
        }
        if (navBackStackEntryT != null) {
            return true;
        }
        return false;
    }

    private final NavDestination t(NavDestination navDestination, @IdRes int i10) {
        NavGraph navGraphS;
        if (navDestination.p() == i10) {
            return navDestination;
        }
        if (navDestination instanceof NavGraph) {
            navGraphS = (NavGraph) navDestination;
        } else {
            navGraphS = navDestination.s();
            t.g(navGraphS);
        }
        return navGraphS.C(i10);
    }

    @Nullable
    public NavDestination A() {
        NavBackStackEntry navBackStackEntryZ = z();
        if (navBackStackEntryZ != null) {
            return navBackStackEntryZ.f();
        }
        return null;
    }

    @MainThread
    public boolean N() {
        if (v().isEmpty()) {
            return false;
        }
        NavDestination navDestinationA = A();
        t.g(navDestinationA);
        return O(navDestinationA.p(), true);
    }

    @MainThread
    public boolean P(@IdRes int i10, boolean z6, boolean z10) {
        if (S(i10, z6, z10) && q()) {
            return true;
        }
        return false;
    }

    public final void Q(@NotNull NavBackStackEntry popUpTo, @NotNull e8.a<l0> onComplete) {
        t.j(popUpTo, "popUpTo");
        t.j(onComplete, "onComplete");
        int iIndexOf = v().indexOf(popUpTo);
        if (iIndexOf < 0) {
            Log.i(TAG, "Ignoring pop of " + popUpTo + " as it was not found on the current back stack");
            return;
        }
        int i10 = iIndexOf + 1;
        if (i10 != v().size()) {
            S(v().get(i10).f().p(), true, false);
        }
        V(this, popUpTo, false, null, 6, null);
        onComplete.invoke();
        j0();
        q();
    }

    @CallSuper
    @MainThread
    public void b0(@NavigationRes int i10) {
        d0(E().b(i10), null);
    }

    @CallSuper
    @MainThread
    public void c0(@NavigationRes int i10, @Nullable Bundle bundle) {
        d0(E().b(i10), bundle);
    }

    @RestrictTo
    public void e0(@NotNull LifecycleOwner owner) {
        Lifecycle lifecycle;
        t.j(owner, "owner");
        if (t.e(owner, this.lifecycleOwner)) {
            return;
        }
        LifecycleOwner lifecycleOwner = this.lifecycleOwner;
        if (lifecycleOwner != null && (lifecycle = lifecycleOwner.getLifecycle()) != null) {
            lifecycle.d(this.lifecycleObserver);
        }
        this.lifecycleOwner = owner;
        owner.getLifecycle().a(this.lifecycleObserver);
    }

    @RestrictTo
    public void g0(@NotNull ViewModelStore viewModelStore) {
        t.j(viewModelStore, "viewModelStore");
        NavControllerViewModel navControllerViewModel = this.viewModel;
        NavControllerViewModel.Companion companion = NavControllerViewModel.Companion;
        if (t.e(navControllerViewModel, companion.a(viewModelStore))) {
            return;
        }
        if (v().isEmpty()) {
            this.viewModel = companion.a(viewModelStore);
            return;
        }
        throw new IllegalStateException("ViewModelStore should be set before setGraph call".toString());
    }

    public final void i0() {
        NavDestination navDestinationS;
        Boolean boolValueOf;
        AtomicInteger atomicInteger;
        kotlinx.coroutines.flow.l0<Set<NavBackStackEntry>> l0VarC;
        Set<NavBackStackEntry> value;
        List<NavBackStackEntry> listW0 = kotlin.collections.d0.W0(v());
        if (listW0.isEmpty()) {
            return;
        }
        NavDestination navDestinationF = ((NavBackStackEntry) kotlin.collections.d0.v0(listW0)).f();
        if (navDestinationF instanceof FloatingWindow) {
            Iterator it = kotlin.collections.d0.G0(listW0).iterator();
            while (true) {
                if (it.hasNext()) {
                    navDestinationS = ((NavBackStackEntry) it.next()).f();
                    if (!(navDestinationS instanceof NavGraph) && !(navDestinationS instanceof FloatingWindow)) {
                        break;
                    }
                } else {
                    navDestinationS = null;
                    break;
                }
            }
        } else {
            navDestinationS = null;
            break;
        }
        HashMap map = new HashMap();
        for (NavBackStackEntry navBackStackEntry : kotlin.collections.d0.G0(listW0)) {
            Lifecycle.State stateH = navBackStackEntry.h();
            NavDestination navDestinationF2 = navBackStackEntry.f();
            if (navDestinationF != null && navDestinationF2.p() == navDestinationF.p()) {
                Lifecycle.State state = Lifecycle.State.RESUMED;
                if (stateH != state) {
                    NavControllerNavigatorState navControllerNavigatorState = this.navigatorState.get(F().e(navBackStackEntry.f().r()));
                    if (navControllerNavigatorState != null && (l0VarC = navControllerNavigatorState.c()) != null && (value = l0VarC.getValue()) != null) {
                        boolValueOf = Boolean.valueOf(value.contains(navBackStackEntry));
                    } else {
                        boolValueOf = null;
                    }
                    if (!t.e(boolValueOf, Boolean.TRUE) && ((atomicInteger = this.parentToChildCount.get(navBackStackEntry)) == null || atomicInteger.get() != 0)) {
                        map.put(navBackStackEntry, state);
                    } else {
                        map.put(navBackStackEntry, Lifecycle.State.STARTED);
                    }
                }
                navDestinationF = navDestinationF.s();
            } else if (navDestinationS != null && navDestinationF2.p() == navDestinationS.p()) {
                if (stateH == Lifecycle.State.RESUMED) {
                    navBackStackEntry.l(Lifecycle.State.STARTED);
                } else {
                    Lifecycle.State state2 = Lifecycle.State.STARTED;
                    if (stateH != state2) {
                        map.put(navBackStackEntry, state2);
                    }
                }
                navDestinationS = navDestinationS.s();
            } else {
                navBackStackEntry.l(Lifecycle.State.CREATED);
            }
        }
        for (NavBackStackEntry navBackStackEntry2 : listW0) {
            Lifecycle.State state3 = (Lifecycle.State) map.get(navBackStackEntry2);
            if (state3 != null) {
                navBackStackEntry2.l(state3);
            } else {
                navBackStackEntry2.m();
            }
        }
    }

    @NotNull
    public NavBackStackEntry w(@IdRes int i10) {
        NavBackStackEntry navBackStackEntryPrevious;
        k<NavBackStackEntry> kVarV = v();
        ListIterator<NavBackStackEntry> listIterator = kVarV.listIterator(kVarV.size());
        do {
            if (listIterator.hasPrevious()) {
                navBackStackEntryPrevious = listIterator.previous();
            } else {
                navBackStackEntryPrevious = null;
                break;
            }
        } while (navBackStackEntryPrevious.f().p() != i10);
        NavBackStackEntry navBackStackEntry = navBackStackEntryPrevious;
        if (navBackStackEntry != null) {
            return navBackStackEntry;
        }
        throw new IllegalArgumentException(("No destination with ID " + i10 + " is on the NavController's back stack. The current destination is " + A()).toString());
    }

    @NotNull
    public final NavBackStackEntry x(@NotNull String route) {
        NavBackStackEntry navBackStackEntryPrevious;
        t.j(route, "route");
        k<NavBackStackEntry> kVarV = v();
        ListIterator<NavBackStackEntry> listIterator = kVarV.listIterator(kVarV.size());
        do {
            if (listIterator.hasPrevious()) {
                navBackStackEntryPrevious = listIterator.previous();
            } else {
                navBackStackEntryPrevious = null;
                break;
            }
        } while (!t.e(navBackStackEntryPrevious.f().t(), route));
        NavBackStackEntry navBackStackEntry = navBackStackEntryPrevious;
        if (navBackStackEntry != null) {
            return navBackStackEntry;
        }
        throw new IllegalArgumentException(("No destination with route " + route + " is on the NavController's back stack. The current destination is " + A()).toString());
    }

    @Nullable
    public NavBackStackEntry z() {
        return v().t();
    }
}
