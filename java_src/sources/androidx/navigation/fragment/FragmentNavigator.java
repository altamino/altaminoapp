package androidx.navigation.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.d0;
import kotlin.collections.s0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
@Navigator.Name("fragment")
public class FragmentNavigator extends Navigator<Destination> {

    @NotNull
    private static final Companion Companion = new Companion(null);

    @Deprecated
    @NotNull
    private static final String KEY_SAVED_IDS = "androidx-nav-fragment:navigator:savedIds";

    @Deprecated
    @NotNull
    private static final String TAG = "FragmentNavigator";
    private final int containerId;

    @NotNull
    private final Context context;

    @NotNull
    private final FragmentManager fragmentManager;

    @NotNull
    private final Set<String> savedIds;

    private static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @NavDestination.ClassType
    public static class Destination extends NavDestination {

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
            this((Navigator<? extends Destination>) navigatorProvider.d(FragmentNavigator.class));
            t.j(navigatorProvider, "navigatorProvider");
        }

        @NotNull
        public final String B() {
            String str = this._className;
            if (str == null) {
                throw new IllegalStateException("Fragment class was not set".toString());
            }
            if (str != null) {
                return str;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
        }

        @Override // androidx.navigation.NavDestination
        @NotNull
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(super.toString());
            sb.append(" class=");
            String str = this._className;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            String string = sb.toString();
            t.i(string, "sb.toString()");
            return string;
        }

        @Override // androidx.navigation.NavDestination
        @CallSuper
        public void v(@NotNull Context context, @NotNull AttributeSet attrs) {
            t.j(context, "context");
            t.j(attrs, "attrs");
            super.v(context, attrs);
            TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attrs, R.styleable.FragmentNavigator);
            t.i(typedArrayObtainAttributes, "context.resources.obtain…leable.FragmentNavigator)");
            String string = typedArrayObtainAttributes.getString(R.styleable.FragmentNavigator_android_name);
            if (string != null) {
                C(string);
            }
            l0 l0Var = l0.INSTANCE;
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

    public static final class Extras implements Navigator.Extras {

        @NotNull
        private final LinkedHashMap<View, String> _sharedElements;

        public static final class Builder {

            @NotNull
            private final LinkedHashMap<View, String> _sharedElements = new LinkedHashMap<>();
        }

        @NotNull
        public final Map<View, String> a() {
            return s0.w(this._sharedElements);
        }

        public Extras(@NotNull Map<View, String> sharedElements) {
            t.j(sharedElements, "sharedElements");
            LinkedHashMap<View, String> linkedHashMap = new LinkedHashMap<>();
            this._sharedElements = linkedHashMap;
            linkedHashMap.putAll(sharedElements);
        }
    }

    public FragmentNavigator(@NotNull Context context, @NotNull FragmentManager fragmentManager, int i10) {
        t.j(context, "context");
        t.j(fragmentManager, "fragmentManager");
        this.context = context;
        this.fragmentManager = fragmentManager;
        this.containerId = i10;
        this.savedIds = new LinkedHashSet();
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
            m(it.next(), navOptions, extras);
        }
    }

    @Override // androidx.navigation.Navigator
    @Nullable
    public Bundle i() {
        if (this.savedIds.isEmpty()) {
            return null;
        }
        return BundleKt.a(a0.a(KEY_SAVED_IDS, new ArrayList(this.savedIds)));
    }

    @Override // androidx.navigation.Navigator
    @NotNull
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public Destination a() {
        return new Destination(this);
    }

    private final void m(NavBackStackEntry navBackStackEntry, NavOptions navOptions, Navigator.Extras extras) {
        int iA;
        int iB;
        int iC;
        int iD;
        boolean z6;
        List<NavBackStackEntry> value = b().b().getValue();
        boolean zIsEmpty = value.isEmpty();
        if (navOptions != null && !zIsEmpty && navOptions.i() && this.savedIds.remove(navBackStackEntry.g())) {
            this.fragmentManager.w1(navBackStackEntry.g());
            b().h(navBackStackEntry);
            return;
        }
        Destination destination = (Destination) navBackStackEntry.f();
        Bundle bundleD = navBackStackEntry.d();
        String strB = destination.B();
        boolean z10 = false;
        if (strB.charAt(0) == '.') {
            strB = this.context.getPackageName() + strB;
        }
        Fragment fragmentA = this.fragmentManager.z0().a(this.context.getClassLoader(), strB);
        t.i(fragmentA, "fragmentManager.fragment…t.classLoader, className)");
        fragmentA.setArguments(bundleD);
        FragmentTransaction fragmentTransactionQ = this.fragmentManager.q();
        t.i(fragmentTransactionQ, "fragmentManager.beginTransaction()");
        if (navOptions != null) {
            iA = navOptions.a();
        } else {
            iA = -1;
        }
        if (navOptions != null) {
            iB = navOptions.b();
        } else {
            iB = -1;
        }
        if (navOptions != null) {
            iC = navOptions.c();
        } else {
            iC = -1;
        }
        if (navOptions != null) {
            iD = navOptions.d();
        } else {
            iD = -1;
        }
        if (iA != -1 || iB != -1 || iC != -1 || iD != -1) {
            if (iA == -1) {
                iA = 0;
            }
            if (iB == -1) {
                iB = 0;
            }
            if (iC == -1) {
                iC = 0;
            }
            if (iD == -1) {
                iD = 0;
            }
            fragmentTransactionQ.z(iA, iB, iC, iD);
        }
        fragmentTransactionQ.u(this.containerId, fragmentA);
        fragmentTransactionQ.B(fragmentA);
        int iP = destination.p();
        if (navOptions != null && !zIsEmpty && navOptions.g() && ((NavBackStackEntry) d0.v0(value)).f().p() == iP) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (zIsEmpty) {
            z10 = true;
        } else if (z6) {
            if (value.size() > 1) {
                this.fragmentManager.l1(navBackStackEntry.g(), 1);
                fragmentTransactionQ.h(navBackStackEntry.g());
            }
        } else {
            fragmentTransactionQ.h(navBackStackEntry.g());
            z10 = true;
        }
        if (extras instanceof Extras) {
            for (Map.Entry<View, String> entry : ((Extras) extras).a().entrySet()) {
                fragmentTransactionQ.g(entry.getKey(), entry.getValue());
            }
        }
        fragmentTransactionQ.C(true);
        fragmentTransactionQ.j();
        if (z10) {
            b().h(navBackStackEntry);
        }
    }

    @Override // androidx.navigation.Navigator
    public void h(@NotNull Bundle savedState) {
        t.j(savedState, "savedState");
        ArrayList<String> stringArrayList = savedState.getStringArrayList(KEY_SAVED_IDS);
        if (stringArrayList != null) {
            this.savedIds.clear();
            kotlin.collections.a0.D(this.savedIds, stringArrayList);
        }
    }

    @Override // androidx.navigation.Navigator
    public void j(@NotNull NavBackStackEntry popUpTo, boolean z6) {
        t.j(popUpTo, "popUpTo");
        if (this.fragmentManager.V0()) {
            Log.i(TAG, "Ignoring popBackStack() call: FragmentManager has already saved its state");
            return;
        }
        if (z6) {
            List<NavBackStackEntry> value = b().b().getValue();
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) d0.j0(value);
            for (NavBackStackEntry navBackStackEntry2 : d0.G0(value.subList(value.indexOf(popUpTo), value.size()))) {
                if (t.e(navBackStackEntry2, navBackStackEntry)) {
                    Log.i(TAG, "FragmentManager cannot save the state of the initial destination " + navBackStackEntry2);
                } else {
                    this.fragmentManager.B1(navBackStackEntry2.g());
                    this.savedIds.add(navBackStackEntry2.g());
                }
            }
        } else {
            this.fragmentManager.l1(popUpTo.g(), 1);
        }
        b().g(popUpTo, z6);
    }
}
