package androidx.navigation;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.IdRes;
import androidx.annotation.RestrictTo;
import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.collections.d0;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.sequences.m;
import kotlin.sequences.o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public class NavGraph extends NavDestination implements Iterable<NavDestination>, f8.a {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final SparseArrayCompat<NavDestination> nodes;
    private int startDestId;

    @Nullable
    private String startDestIdName;

    @Nullable
    private String startDestinationRoute;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final NavDestination a(@NotNull NavGraph navGraph) {
            t.j(navGraph, "<this>");
            return (NavDestination) o.t(m.f(navGraph.C(navGraph.I()), NavGraph$Companion$findStartDestination$1.INSTANCE));
        }
    }

    /* JADX INFO: renamed from: androidx.navigation.NavGraph$iterator$1, reason: invalid class name */
    public static final class AnonymousClass1 implements Iterator<NavDestination>, f8.a {
        private int index = -1;
        private boolean wentToNext;

        AnonymousClass1() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index + 1 < NavGraph.this.G().r();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.wentToNext) {
                throw new IllegalStateException("You must call next() before you can remove an element".toString());
            }
            SparseArrayCompat<NavDestination> sparseArrayCompatG = NavGraph.this.G();
            sparseArrayCompatG.s(this.index).y(null);
            sparseArrayCompatG.p(this.index);
            this.index--;
            this.wentToNext = false;
        }

        @Override // java.util.Iterator
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NavDestination next() {
            if (hasNext()) {
                this.wentToNext = true;
                SparseArrayCompat<NavDestination> sparseArrayCompatG = NavGraph.this.G();
                int i10 = this.index + 1;
                this.index = i10;
                NavDestination navDestinationS = sparseArrayCompatG.s(i10);
                t.i(navDestinationS, "nodes.valueAt(++index)");
                return navDestinationS;
            }
            throw new NoSuchElementException();
        }
    }

    @Nullable
    public final NavDestination C(@IdRes int i10) {
        return D(i10, true);
    }

    @RestrictTo
    @NotNull
    public final SparseArrayCompat<NavDestination> G() {
        return this.nodes;
    }

    @IdRes
    public final int I() {
        return this.startDestId;
    }

    @Nullable
    public final String J() {
        return this.startDestinationRoute;
    }

    @Override // androidx.navigation.NavDestination
    public boolean equals(@Nullable Object obj) {
        if (obj == null || !(obj instanceof NavGraph)) {
            return false;
        }
        List listB = o.B(m.c(SparseArrayKt.a(this.nodes)));
        NavGraph navGraph = (NavGraph) obj;
        Iterator itA = SparseArrayKt.a(navGraph.nodes);
        while (itA.hasNext()) {
            listB.remove((NavDestination) itA.next());
        }
        return super.equals(obj) && this.nodes.r() == navGraph.nodes.r() && I() == navGraph.I() && listB.isEmpty();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraph(@NotNull Navigator<? extends NavGraph> navGraphNavigator) {
        super(navGraphNavigator);
        t.j(navGraphNavigator, "navGraphNavigator");
        this.nodes = new SparseArrayCompat<>();
    }

    private final void L(String str) {
        int iHashCode;
        if (str == null) {
            iHashCode = 0;
        } else {
            if (!(!t.e(str, t()))) {
                throw new IllegalArgumentException(("Start destination " + str + " cannot use the same route as the graph " + this).toString());
            }
            if (!(!kotlin.text.t.z(str))) {
                throw new IllegalArgumentException("Cannot have an empty start destination route".toString());
            }
            iHashCode = NavDestination.Companion.a(str).hashCode();
        }
        this.startDestId = iHashCode;
        this.startDestinationRoute = str;
    }

    @RestrictTo
    @Nullable
    public final NavDestination D(@IdRes int i10, boolean z6) {
        NavDestination navDestinationJ = this.nodes.j(i10);
        if (navDestinationJ != null) {
            return navDestinationJ;
        }
        if (!z6 || s() == null) {
            return null;
        }
        NavGraph navGraphS = s();
        t.g(navGraphS);
        return navGraphS.C(i10);
    }

    @Nullable
    public final NavDestination E(@Nullable String str) {
        if (str == null || kotlin.text.t.z(str)) {
            return null;
        }
        return F(str, true);
    }

    @RestrictTo
    @NotNull
    public final String H() {
        if (this.startDestIdName == null) {
            String strValueOf = this.startDestinationRoute;
            if (strValueOf == null) {
                strValueOf = String.valueOf(this.startDestId);
            }
            this.startDestIdName = strValueOf;
        }
        String str = this.startDestIdName;
        t.g(str);
        return str;
    }

    @Override // java.lang.Iterable
    @NotNull
    public final Iterator<NavDestination> iterator() {
        return new AnonymousClass1();
    }

    @Override // androidx.navigation.NavDestination
    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        NavDestination navDestinationE = E(this.startDestinationRoute);
        if (navDestinationE == null) {
            navDestinationE = C(I());
        }
        sb.append(" startDestination=");
        if (navDestinationE == null) {
            String str = this.startDestinationRoute;
            if (str != null) {
                sb.append(str);
            } else {
                String str2 = this.startDestIdName;
                if (str2 != null) {
                    sb.append(str2);
                } else {
                    sb.append("0x" + Integer.toHexString(this.startDestId));
                }
            }
        } else {
            sb.append("{");
            sb.append(navDestinationE.toString());
            sb.append("}");
        }
        String string = sb.toString();
        t.i(string, "sb.toString()");
        return string;
    }

    @Override // androidx.navigation.NavDestination
    @RestrictTo
    @Nullable
    public NavDestination.DeepLinkMatch u(@NotNull NavDeepLinkRequest navDeepLinkRequest) {
        t.j(navDeepLinkRequest, "navDeepLinkRequest");
        NavDestination.DeepLinkMatch deepLinkMatchU = super.u(navDeepLinkRequest);
        ArrayList arrayList = new ArrayList();
        Iterator<NavDestination> it = iterator();
        while (it.hasNext()) {
            NavDestination.DeepLinkMatch deepLinkMatchU2 = it.next().u(navDeepLinkRequest);
            if (deepLinkMatchU2 != null) {
                arrayList.add(deepLinkMatchU2);
            }
        }
        return (NavDestination.DeepLinkMatch) d0.x0(v.r(deepLinkMatchU, (NavDestination.DeepLinkMatch) d0.x0(arrayList)));
    }

    @Override // androidx.navigation.NavDestination
    public void v(@NotNull Context context, @NotNull AttributeSet attrs) {
        t.j(context, "context");
        t.j(attrs, "attrs");
        super.v(context, attrs);
        TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attrs, androidx.navigation.common.R.styleable.NavGraphNavigator);
        t.i(typedArrayObtainAttributes, "context.resources.obtain…vGraphNavigator\n        )");
        K(typedArrayObtainAttributes.getResourceId(androidx.navigation.common.R.styleable.NavGraphNavigator_startDestination, 0));
        this.startDestIdName = NavDestination.Companion.b(context, this.startDestId);
        l0 l0Var = l0.INSTANCE;
        typedArrayObtainAttributes.recycle();
    }

    private final void K(int i10) {
        if (i10 != p()) {
            if (this.startDestinationRoute != null) {
                L(null);
            }
            this.startDestId = i10;
            this.startDestIdName = null;
            return;
        }
        throw new IllegalArgumentException(("Start destination " + i10 + " cannot use the same id as the graph " + this).toString());
    }

    public final void B(@NotNull NavDestination node) {
        t.j(node, "node");
        int iP = node.p();
        String strT = node.t();
        if (iP == 0 && strT == null) {
            throw new IllegalArgumentException("Destinations must have an id or route. Call setId(), setRoute(), or include an android:id or app:route in your navigation XML.".toString());
        }
        if (t() != null && !(!t.e(strT, t()))) {
            throw new IllegalArgumentException(("Destination " + node + " cannot have the same route as graph " + this).toString());
        }
        if (iP != p()) {
            NavDestination navDestinationJ = this.nodes.j(iP);
            if (navDestinationJ == node) {
                return;
            }
            if (node.s() == null) {
                if (navDestinationJ != null) {
                    navDestinationJ.y(null);
                }
                node.y(this);
                this.nodes.o(node.p(), node);
                return;
            }
            throw new IllegalStateException("Destination already has a parent set. Call NavGraph.remove() to remove the previous parent.".toString());
        }
        throw new IllegalArgumentException(("Destination " + node + " cannot have the same id as graph " + this).toString());
    }

    @RestrictTo
    @Nullable
    public final NavDestination F(@NotNull String route, boolean z6) {
        t.j(route, "route");
        NavDestination navDestinationJ = this.nodes.j(NavDestination.Companion.a(route).hashCode());
        if (navDestinationJ == null) {
            if (z6 && s() != null) {
                NavGraph navGraphS = s();
                t.g(navGraphS);
                return navGraphS.E(route);
            }
            return null;
        }
        return navDestinationJ;
    }

    @Override // androidx.navigation.NavDestination
    public int hashCode() {
        int I = I();
        SparseArrayCompat<NavDestination> sparseArrayCompat = this.nodes;
        int iR = sparseArrayCompat.r();
        for (int i10 = 0; i10 < iR; i10++) {
            I = (((I * 31) + sparseArrayCompat.n(i10)) * 31) + sparseArrayCompat.s(i10).hashCode();
        }
        return I;
    }

    @Override // androidx.navigation.NavDestination
    @RestrictTo
    @NotNull
    public String m() {
        if (p() != 0) {
            return super.m();
        }
        return "the root navigation";
    }
}
