package androidx.navigation.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.CallSuper;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentOnAttachListener;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.FloatingWindow;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.NavigatorState;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import kotlin.collections.d0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Navigator.Name("dialog")
public final class DialogFragmentNavigator extends Navigator<Destination> {

    @NotNull
    private static final Companion Companion = new Companion(null);

    @Deprecated
    @NotNull
    private static final String TAG = "DialogFragmentNavigator";

    @NotNull
    private final Context context;

    @NotNull
    private final FragmentManager fragmentManager;

    @NotNull
    private final LifecycleEventObserver observer;

    @NotNull
    private final Set<String> restoredTagsAwaitingAttach;

    private static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @NavDestination.ClassType
    public static class Destination extends NavDestination implements FloatingWindow {

        @Nullable
        private String _className;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Destination(@NotNull Navigator<? extends Destination> fragmentNavigator) {
            super(fragmentNavigator);
            t.j(fragmentNavigator, "fragmentNavigator");
        }

        @NotNull
        public final Destination C(@NotNull String className) {
            t.j(className, "className");
            this._className = className;
            return this;
        }

        @Override // androidx.navigation.NavDestination
        public boolean equals(@Nullable Object obj) {
            return obj != null && (obj instanceof Destination) && super.equals(obj) && t.e(this._className, ((Destination) obj)._className);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Destination(@NotNull NavigatorProvider navigatorProvider) {
            this((Navigator<? extends Destination>) navigatorProvider.d(DialogFragmentNavigator.class));
            t.j(navigatorProvider, "navigatorProvider");
        }

        @NotNull
        public final String B() {
            String str = this._className;
            if (str == null) {
                throw new IllegalStateException("DialogFragment class was not set".toString());
            }
            if (str != null) {
                return str;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
        }

        @Override // androidx.navigation.NavDestination
        @CallSuper
        public void v(@NotNull Context context, @NotNull AttributeSet attrs) {
            t.j(context, "context");
            t.j(attrs, "attrs");
            super.v(context, attrs);
            TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attrs, R.styleable.DialogFragmentNavigator);
            t.i(typedArrayObtainAttributes, "context.resources.obtain…ntNavigator\n            )");
            String string = typedArrayObtainAttributes.getString(R.styleable.DialogFragmentNavigator_android_name);
            if (string != null) {
                C(string);
            }
            typedArrayObtainAttributes.recycle();
        }

        @Override // androidx.navigation.NavDestination
        public int hashCode() {
            int iHashCode;
            int iHashCode2 = super.hashCode() * 31;
            String str = this._className;
            if (str != null) {
                iHashCode = str.hashCode();
            } else {
                iHashCode = 0;
            }
            return iHashCode2 + iHashCode;
        }
    }

    public DialogFragmentNavigator(@NotNull Context context, @NotNull FragmentManager fragmentManager) {
        t.j(context, "context");
        t.j(fragmentManager, "fragmentManager");
        this.context = context;
        this.fragmentManager = fragmentManager;
        this.restoredTagsAwaitingAttach = new LinkedHashSet();
        this.observer = new LifecycleEventObserver() { // from class: androidx.navigation.fragment.b
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                DialogFragmentNavigator.p(this.f750a, lifecycleOwner, event);
            }
        };
    }

    @Override // androidx.navigation.Navigator
    public void e(@NotNull List<NavBackStackEntry> entries, @Nullable NavOptions navOptions, @Nullable Navigator.Extras extras) {
        t.j(entries, "entries");
        if (this.fragmentManager.V0()) {
            Log.i(TAG, "Ignoring navigate() call: FragmentManager has already saved its state");
            return;
        }
        Iterator<NavBackStackEntry> it = entries.iterator();
        while (it.hasNext()) {
            o(it.next());
        }
    }

    @Override // androidx.navigation.Navigator
    @NotNull
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public Destination a() {
        return new Destination(this);
    }

    private final void o(NavBackStackEntry navBackStackEntry) {
        Destination destination = (Destination) navBackStackEntry.f();
        String strB = destination.B();
        if (strB.charAt(0) == '.') {
            strB = this.context.getPackageName() + strB;
        }
        Fragment fragmentA = this.fragmentManager.z0().a(this.context.getClassLoader(), strB);
        t.i(fragmentA, "fragmentManager.fragment…ader, className\n        )");
        if (DialogFragment.class.isAssignableFrom(fragmentA.getClass())) {
            DialogFragment dialogFragment = (DialogFragment) fragmentA;
            dialogFragment.setArguments(navBackStackEntry.d());
            dialogFragment.getLifecycle().a(this.observer);
            dialogFragment.show(this.fragmentManager, navBackStackEntry.g());
            b().h(navBackStackEntry);
            return;
        }
        throw new IllegalArgumentException(("Dialog destination " + destination.B() + " is not an instance of DialogFragment").toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(DialogFragmentNavigator this$0, LifecycleOwner source, Lifecycle.Event event) {
        NavBackStackEntry navBackStackEntryPrevious;
        t.j(this$0, "this$0");
        t.j(source, "source");
        t.j(event, "event");
        if (event == Lifecycle.Event.ON_CREATE) {
            DialogFragment dialogFragment = (DialogFragment) source;
            List<NavBackStackEntry> value = this$0.b().b().getValue();
            if (!(value instanceof Collection) || !value.isEmpty()) {
                Iterator<T> it = value.iterator();
                while (it.hasNext()) {
                    if (t.e(((NavBackStackEntry) it.next()).g(), dialogFragment.getTag())) {
                        return;
                    }
                }
            }
            dialogFragment.dismiss();
            return;
        }
        if (event == Lifecycle.Event.ON_STOP) {
            DialogFragment dialogFragment2 = (DialogFragment) source;
            if (!dialogFragment2.requireDialog().isShowing()) {
                List<NavBackStackEntry> value2 = this$0.b().b().getValue();
                ListIterator<NavBackStackEntry> listIterator = value2.listIterator(value2.size());
                do {
                    if (listIterator.hasPrevious()) {
                        navBackStackEntryPrevious = listIterator.previous();
                    } else {
                        navBackStackEntryPrevious = null;
                        break;
                    }
                } while (!t.e(navBackStackEntryPrevious.g(), dialogFragment2.getTag()));
                if (navBackStackEntryPrevious != null) {
                    NavBackStackEntry navBackStackEntry = navBackStackEntryPrevious;
                    if (!t.e(d0.w0(value2), navBackStackEntry)) {
                        Log.i(TAG, "Dialog " + dialogFragment2 + " was dismissed while it was not the top of the back stack, popping all dialogs above this dismissed dialog");
                    }
                    this$0.j(navBackStackEntry, false);
                    return;
                }
                throw new IllegalStateException(("Dialog " + dialogFragment2 + " has already been popped off of the Navigation back stack").toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(DialogFragmentNavigator this$0, FragmentManager fragmentManager, Fragment childFragment) {
        t.j(this$0, "this$0");
        t.j(fragmentManager, "<anonymous parameter 0>");
        t.j(childFragment, "childFragment");
        Set<String> set = this$0.restoredTagsAwaitingAttach;
        if (v0.a(set).remove(childFragment.getTag())) {
            childFragment.getLifecycle().a(this$0.observer);
        }
    }

    @Override // androidx.navigation.Navigator
    public void f(@NotNull NavigatorState state) {
        Lifecycle lifecycle;
        t.j(state, "state");
        super.f(state);
        for (NavBackStackEntry navBackStackEntry : state.b().getValue()) {
            DialogFragment dialogFragment = (DialogFragment) this.fragmentManager.m0(navBackStackEntry.g());
            if (dialogFragment != null && (lifecycle = dialogFragment.getLifecycle()) != null) {
                lifecycle.a(this.observer);
            } else {
                this.restoredTagsAwaitingAttach.add(navBackStackEntry.g());
            }
        }
        this.fragmentManager.k(new FragmentOnAttachListener() { // from class: androidx.navigation.fragment.a
            @Override // androidx.fragment.app.FragmentOnAttachListener
            public final void a(FragmentManager fragmentManager, Fragment fragment) {
                DialogFragmentNavigator.q(this.f749a, fragmentManager, fragment);
            }
        });
    }

    @Override // androidx.navigation.Navigator
    public void j(@NotNull NavBackStackEntry popUpTo, boolean z6) {
        t.j(popUpTo, "popUpTo");
        if (this.fragmentManager.V0()) {
            Log.i(TAG, "Ignoring popBackStack() call: FragmentManager has already saved its state");
            return;
        }
        List<NavBackStackEntry> value = b().b().getValue();
        Iterator it = d0.G0(value.subList(value.indexOf(popUpTo), value.size())).iterator();
        while (it.hasNext()) {
            Fragment fragmentM0 = this.fragmentManager.m0(((NavBackStackEntry) it.next()).g());
            if (fragmentM0 != null) {
                fragmentM0.getLifecycle().d(this.observer);
                ((DialogFragment) fragmentM0).dismiss();
            }
        }
        b().g(popUpTo, z6);
    }
}
