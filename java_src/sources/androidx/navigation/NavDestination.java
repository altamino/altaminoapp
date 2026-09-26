package androidx.navigation;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import androidx.annotation.CallSuper;
import androidx.annotation.IdRes;
import androidx.annotation.RestrictTo;
import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayKt;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.d0;
import kotlin.collections.s0;
import kotlin.collections.u0;
import kotlin.collections.w;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v0;
import kotlin.sequences.g;
import kotlin.sequences.m;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public class NavDestination {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final Map<String, Class<?>> classes = new LinkedHashMap();

    @NotNull
    private Map<String, NavArgument> _arguments;

    @NotNull
    private final SparseArrayCompat<NavAction> actions;

    @NotNull
    private final List<NavDeepLink> deepLinks;
    private int id;

    @Nullable
    private String idName;

    @Nullable
    private CharSequence label;

    @NotNull
    private final String navigatorName;

    @Nullable
    private NavGraph parent;

    @Nullable
    private String route;

    @Target({ElementType.TYPE, ElementType.ANNOTATION_TYPE})
    @Retention(RetentionPolicy.CLASS)
    public @interface ClassType {
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @RestrictTo
        @NotNull
        public final String a(@Nullable String str) {
            if (str == null) {
                return "";
            }
            return "android-app://androidx.navigation/" + str;
        }

        @RestrictTo
        @NotNull
        public final String b(@NotNull Context context, int i10) {
            String strValueOf;
            t.j(context, "context");
            if (i10 <= 16777215) {
                return String.valueOf(i10);
            }
            try {
                strValueOf = context.getResources().getResourceName(i10);
            } catch (Resources.NotFoundException unused) {
                strValueOf = String.valueOf(i10);
            }
            t.i(strValueOf, "try {\n                co….toString()\n            }");
            return strValueOf;
        }

        @NotNull
        public final g<NavDestination> c(@NotNull NavDestination navDestination) {
            t.j(navDestination, "<this>");
            return m.f(navDestination, NavDestination$Companion$hierarchy$1.INSTANCE);
        }
    }

    @RestrictTo
    public static final class DeepLinkMatch implements Comparable<DeepLinkMatch> {

        @NotNull
        private final NavDestination destination;
        private final boolean hasMatchingAction;
        private final boolean isExactDeepLink;

        @Nullable
        private final Bundle matchingArgs;
        private final int mimeTypeMatchLevel;

        @NotNull
        public final NavDestination b() {
            return this.destination;
        }

        @Nullable
        public final Bundle c() {
            return this.matchingArgs;
        }

        public DeepLinkMatch(@NotNull NavDestination destination, @Nullable Bundle bundle, boolean z6, boolean z10, int i10) {
            t.j(destination, "destination");
            this.destination = destination;
            this.matchingArgs = bundle;
            this.isExactDeepLink = z6;
            this.hasMatchingAction = z10;
            this.mimeTypeMatchLevel = i10;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(@NotNull DeepLinkMatch other) {
            t.j(other, "other");
            boolean z6 = this.isExactDeepLink;
            if (z6 && !other.isExactDeepLink) {
                return 1;
            }
            if (!z6 && other.isExactDeepLink) {
                return -1;
            }
            Bundle bundle = this.matchingArgs;
            if (bundle != null && other.matchingArgs == null) {
                return 1;
            }
            if (bundle == null && other.matchingArgs != null) {
                return -1;
            }
            if (bundle != null) {
                int size = bundle.size();
                Bundle bundle2 = other.matchingArgs;
                t.g(bundle2);
                int size2 = size - bundle2.size();
                if (size2 > 0) {
                    return 1;
                }
                if (size2 < 0) {
                    return -1;
                }
            }
            boolean z10 = this.hasMatchingAction;
            if (z10 && !other.hasMatchingAction) {
                return 1;
            }
            if (!z10 && other.hasMatchingAction) {
                return -1;
            }
            return this.mimeTypeMatchLevel - other.mimeTypeMatchLevel;
        }
    }

    public NavDestination(@NotNull String navigatorName) {
        t.j(navigatorName, "navigatorName");
        this.navigatorName = navigatorName;
        this.deepLinks = new ArrayList();
        this.actions = new SparseArrayCompat<>();
        this._arguments = new LinkedHashMap();
    }

    @RestrictTo
    public boolean A() {
        return true;
    }

    public boolean equals(@Nullable Object obj) {
        boolean z6;
        boolean z10;
        if (obj == null || !(obj instanceof NavDestination)) {
            return false;
        }
        NavDestination navDestination = (NavDestination) obj;
        boolean z11 = d0.p0(this.deepLinks, navDestination.deepLinks).size() == this.deepLinks.size();
        if (this.actions.r() != navDestination.actions.r()) {
            z6 = false;
            break;
        }
        Iterator it = m.c(SparseArrayKt.a(this.actions)).iterator();
        while (true) {
            if (!it.hasNext()) {
                Iterator it2 = m.c(SparseArrayKt.a(navDestination.actions)).iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z6 = true;
                        break;
                    }
                    if (!this.actions.g((NavAction) it2.next())) {
                    }
                }
            } else {
                if (!navDestination.actions.g((NavAction) it.next())) {
                }
            }
            z6 = false;
            break;
        }
        if (j().size() != navDestination.j().size()) {
            z10 = false;
            break;
        }
        Iterator it3 = u0.B(j()).iterator();
        while (true) {
            if (!it3.hasNext()) {
                Iterator it4 = u0.B(navDestination.j()).iterator();
                while (true) {
                    if (!it4.hasNext()) {
                        z10 = true;
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it4.next();
                    if (!j().containsKey(entry.getKey()) || !t.e(j().get(entry.getKey()), entry.getValue())) {
                    }
                }
            } else {
                Map.Entry entry2 = (Map.Entry) it3.next();
                if (!navDestination.j().containsKey(entry2.getKey()) || !t.e(navDestination.j().get(entry2.getKey()), entry2.getValue())) {
                }
            }
            z10 = false;
            break;
        }
        return this.id == navDestination.id && t.e(this.route, navDestination.route) && z11 && z6 && z10;
    }

    @IdRes
    public final int p() {
        return this.id;
    }

    @Nullable
    public final CharSequence q() {
        return this.label;
    }

    @NotNull
    public final String r() {
        return this.navigatorName;
    }

    @Nullable
    public final NavGraph s() {
        return this.parent;
    }

    @Nullable
    public final String t() {
        return this.route;
    }

    public final void x(@IdRes int i10) {
        this.id = i10;
        this.idName = null;
    }

    @RestrictTo
    public final void y(@Nullable NavGraph navGraph) {
        this.parent = navGraph;
    }

    public static /* synthetic */ int[] g(NavDestination navDestination, NavDestination navDestination2, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: buildDeepLinkIds");
        }
        if ((i10 & 1) != 0) {
            navDestination2 = null;
        }
        return navDestination.f(navDestination2);
    }

    public final void a(@NotNull String argumentName, @NotNull NavArgument argument) {
        t.j(argumentName, "argumentName");
        t.j(argument, "argument");
        this._arguments.put(argumentName, argument);
    }

    public final void b(@NotNull NavDeepLink navDeepLink) {
        t.j(navDeepLink, "navDeepLink");
        Map<String, NavArgument> mapJ = j();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, NavArgument> entry : mapJ.entrySet()) {
            NavArgument value = entry.getValue();
            if (!value.c() && !value.b()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Set setKeySet = linkedHashMap.keySet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : setKeySet) {
            if (!navDeepLink.e().contains((String) obj)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            this.deepLinks.add(navDeepLink);
            return;
        }
        throw new IllegalArgumentException(("Deep link " + navDeepLink.k() + " can't be used to open destination " + this + ".\nFollowing required arguments are missing: " + arrayList).toString());
    }

    @RestrictTo
    @Nullable
    public final Bundle e(@Nullable Bundle bundle) {
        Map<String, NavArgument> map;
        if (bundle == null && ((map = this._arguments) == null || map.isEmpty())) {
            return null;
        }
        Bundle bundle2 = new Bundle();
        for (Map.Entry<String, NavArgument> entry : this._arguments.entrySet()) {
            entry.getValue().d(entry.getKey(), bundle2);
        }
        if (bundle != null) {
            bundle2.putAll(bundle);
            for (Map.Entry<String, NavArgument> entry2 : this._arguments.entrySet()) {
                String key = entry2.getKey();
                NavArgument value = entry2.getValue();
                if (!value.e(key, bundle2)) {
                    throw new IllegalArgumentException(("Wrong argument type for '" + key + "' in argument bundle. " + value.a().b() + " expected.").toString());
                }
            }
        }
        return bundle2;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0024  */
    /* JADX WARN: Code duplicated, block: B:14:0x002e  */
    @RestrictTo
    @NotNull
    public final int[] f(@Nullable NavDestination navDestination) {
        kotlin.collections.k kVar = new kotlin.collections.k();
        NavDestination navDestination2 = this;
        while (true) {
            t.g(navDestination2);
            NavGraph navGraph = navDestination2.parent;
            if ((navDestination != null ? navDestination.parent : null) != null) {
                NavGraph navGraph2 = navDestination.parent;
                t.g(navGraph2);
                if (navGraph2.C(navDestination2.id) != navDestination2) {
                    if (navGraph != null || navGraph.I() != navDestination2.id) {
                        kVar.f(navDestination2);
                    }
                    if (!t.e(navGraph, navDestination) || navGraph == null) {
                        break;
                    }
                    navDestination2 = navGraph;
                } else {
                    kVar.f(navDestination2);
                    break;
                }
            } else {
                if (navGraph != null) {
                    kVar.f(navDestination2);
                } else {
                    kVar.f(navDestination2);
                }
                if (!t.e(navGraph, navDestination)) {
                    break;
                }
                navDestination2 = navGraph;
            }
        }
        List listU0 = d0.U0(kVar);
        ArrayList arrayList = new ArrayList(w.x(listU0, 10));
        Iterator it = listU0.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((NavDestination) it.next()).id));
        }
        return d0.T0(arrayList);
    }

    public int hashCode() {
        Set<String> setKeySet;
        int i10 = this.id * 31;
        String str = this.route;
        int iHashCode = i10 + (str != null ? str.hashCode() : 0);
        for (NavDeepLink navDeepLink : this.deepLinks) {
            int i11 = iHashCode * 31;
            String strK = navDeepLink.k();
            int iHashCode2 = (i11 + (strK != null ? strK.hashCode() : 0)) * 31;
            String strD = navDeepLink.d();
            int iHashCode3 = (iHashCode2 + (strD != null ? strD.hashCode() : 0)) * 31;
            String strG = navDeepLink.g();
            iHashCode = iHashCode3 + (strG != null ? strG.hashCode() : 0);
        }
        Iterator itA = SparseArrayKt.a(this.actions);
        while (itA.hasNext()) {
            NavAction navAction = (NavAction) itA.next();
            int iB = ((iHashCode * 31) + navAction.b()) * 31;
            NavOptions navOptionsC = navAction.c();
            iHashCode = iB + (navOptionsC != null ? navOptionsC.hashCode() : 0);
            Bundle bundleA = navAction.a();
            if (bundleA != null && (setKeySet = bundleA.keySet()) != null) {
                t.i(setKeySet, "keySet()");
                for (String str2 : setKeySet) {
                    int i12 = iHashCode * 31;
                    Bundle bundleA2 = navAction.a();
                    t.g(bundleA2);
                    Object obj = bundleA2.get(str2);
                    iHashCode = i12 + (obj != null ? obj.hashCode() : 0);
                }
            }
        }
        for (String str3 : j().keySet()) {
            int iHashCode4 = ((iHashCode * 31) + str3.hashCode()) * 31;
            NavArgument navArgument = j().get(str3);
            iHashCode = iHashCode4 + (navArgument != null ? navArgument.hashCode() : 0);
        }
        return iHashCode;
    }

    @NotNull
    public final Map<String, NavArgument> j() {
        return s0.w(this._arguments);
    }

    @RestrictTo
    @NotNull
    public String m() {
        String str = this.idName;
        return str == null ? String.valueOf(this.id) : str;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("(");
        String str = this.idName;
        if (str == null) {
            sb.append("0x");
            sb.append(Integer.toHexString(this.id));
        } else {
            sb.append(str);
        }
        sb.append(")");
        String str2 = this.route;
        if (str2 != null && !kotlin.text.t.z(str2)) {
            sb.append(" route=");
            sb.append(this.route);
        }
        if (this.label != null) {
            sb.append(" label=");
            sb.append(this.label);
        }
        String string = sb.toString();
        t.i(string, "sb.toString()");
        return string;
    }

    @RestrictTo
    @Nullable
    public DeepLinkMatch u(@NotNull NavDeepLinkRequest navDeepLinkRequest) {
        t.j(navDeepLinkRequest, "navDeepLinkRequest");
        if (this.deepLinks.isEmpty()) {
            return null;
        }
        DeepLinkMatch deepLinkMatch = null;
        for (NavDeepLink navDeepLink : this.deepLinks) {
            Uri uriC = navDeepLinkRequest.c();
            Bundle bundleF = uriC != null ? navDeepLink.f(uriC, j()) : null;
            String strA = navDeepLinkRequest.a();
            boolean z6 = strA != null && t.e(strA, navDeepLink.d());
            String strB = navDeepLinkRequest.b();
            int iH = strB != null ? navDeepLink.h(strB) : -1;
            if (bundleF != null || z6 || iH > -1) {
                DeepLinkMatch deepLinkMatch2 = new DeepLinkMatch(this, bundleF, navDeepLink.l(), z6, iH);
                if (deepLinkMatch == null || deepLinkMatch2.compareTo(deepLinkMatch) > 0) {
                    deepLinkMatch = deepLinkMatch2;
                }
            }
        }
        return deepLinkMatch;
    }

    @CallSuper
    public void v(@NotNull Context context, @NotNull AttributeSet attrs) {
        t.j(context, "context");
        t.j(attrs, "attrs");
        TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attrs, androidx.navigation.common.R.styleable.Navigator);
        t.i(typedArrayObtainAttributes, "context.resources.obtain…s, R.styleable.Navigator)");
        z(typedArrayObtainAttributes.getString(androidx.navigation.common.R.styleable.Navigator_route));
        int i10 = androidx.navigation.common.R.styleable.Navigator_android_id;
        if (typedArrayObtainAttributes.hasValue(i10)) {
            x(typedArrayObtainAttributes.getResourceId(i10, 0));
            this.idName = Companion.b(context, this.id);
        }
        this.label = typedArrayObtainAttributes.getText(androidx.navigation.common.R.styleable.Navigator_android_label);
        l0 l0Var = l0.INSTANCE;
        typedArrayObtainAttributes.recycle();
    }

    public final void w(@IdRes int i10, @NotNull NavAction action) {
        t.j(action, "action");
        if (A()) {
            if (i10 == 0) {
                throw new IllegalArgumentException("Cannot have an action with actionId 0".toString());
            }
            this.actions.o(i10, action);
        } else {
            throw new UnsupportedOperationException("Cannot add action " + i10 + " to " + this + " as it does not support actions, indicating that it is a terminal destination in your navigation graph and will never trigger actions.");
        }
    }

    public final void z(@Nullable String str) {
        if (str == null) {
            x(0);
        } else {
            if (!(!kotlin.text.t.z(str))) {
                throw new IllegalArgumentException("Cannot have an empty route".toString());
            }
            String strA = Companion.a(str);
            x(strA.hashCode());
            c(strA);
        }
        List<NavDeepLink> list = this.deepLinks;
        List<NavDeepLink> list2 = list;
        for (Object obj : list) {
            if (t.e(((NavDeepLink) obj).k(), Companion.a(this.route))) {
                v0.a(list2).remove(obj);
                this.route = str;
            }
        }
        obj = null;
        v0.a(list2).remove(obj);
        this.route = str;
    }

    public final void c(@NotNull String uriPattern) {
        t.j(uriPattern, "uriPattern");
        b(new NavDeepLink.Builder().d(uriPattern).a());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public NavDestination(@NotNull Navigator<? extends NavDestination> navigator) {
        this(NavigatorProvider.Companion.a(navigator.getClass()));
        t.j(navigator, "navigator");
    }
}
