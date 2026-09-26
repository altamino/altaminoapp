package androidx.navigation;

import android.annotation.SuppressLint;
import androidx.annotation.CallSuper;
import androidx.annotation.RestrictTo;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.s0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@SuppressLint({"TypeParameterUnusedInFormals"})
public class NavigatorProvider {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final Map<Class<?>, String> annotationNames = new LinkedHashMap();

    @NotNull
    private final Map<String, Navigator<? extends NavDestination>> _navigators = new LinkedHashMap();

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final String a(@NotNull Class<? extends Navigator<?>> navigatorClass) {
            t.j(navigatorClass, "navigatorClass");
            String strValue = (String) NavigatorProvider.annotationNames.get(navigatorClass);
            if (strValue == null) {
                Navigator.Name name = (Navigator.Name) navigatorClass.getAnnotation(Navigator.Name.class);
                strValue = name != null ? name.value() : null;
                if (!b(strValue)) {
                    throw new IllegalArgumentException(("No @Navigator.Name annotation found for " + navigatorClass.getSimpleName()).toString());
                }
                NavigatorProvider.annotationNames.put(navigatorClass, strValue);
            }
            t.g(strValue);
            return strValue;
        }

        public final boolean b(@Nullable String str) {
            return str != null && str.length() > 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final Navigator<? extends NavDestination> b(@NotNull Navigator<? extends NavDestination> navigator) {
        t.j(navigator, "navigator");
        return c(Companion.a(navigator.getClass()), navigator);
    }

    @CallSuper
    @Nullable
    public Navigator<? extends NavDestination> c(@NotNull String name, @NotNull Navigator<? extends NavDestination> navigator) {
        t.j(name, "name");
        t.j(navigator, "navigator");
        if (!Companion.b(name)) {
            throw new IllegalArgumentException("navigator name cannot be an empty string".toString());
        }
        Navigator<? extends NavDestination> navigator2 = this._navigators.get(name);
        if (t.e(navigator2, navigator)) {
            return navigator;
        }
        boolean z6 = false;
        if (navigator2 != null && navigator2.c()) {
            z6 = true;
        }
        if (!(!z6)) {
            throw new IllegalStateException(("Navigator " + navigator + " is replacing an already attached " + navigator2).toString());
        }
        if (!navigator.c()) {
            return this._navigators.put(name, navigator);
        }
        throw new IllegalStateException(("Navigator " + navigator + " is already attached to another NavController").toString());
    }

    @NotNull
    public final <T extends Navigator<?>> T d(@NotNull Class<T> navigatorClass) {
        t.j(navigatorClass, "navigatorClass");
        return (T) e(Companion.a(navigatorClass));
    }

    @CallSuper
    @NotNull
    public <T extends Navigator<?>> T e(@NotNull String name) {
        t.j(name, "name");
        if (!Companion.b(name)) {
            throw new IllegalArgumentException("navigator name cannot be an empty string".toString());
        }
        Navigator<? extends NavDestination> navigator = this._navigators.get(name);
        if (navigator != null) {
            return navigator;
        }
        throw new IllegalStateException("Could not find Navigator with name \"" + name + "\". You must call NavController.addNavigator() for each navigation type.");
    }

    @RestrictTo
    @NotNull
    public final Map<String, Navigator<? extends NavDestination>> f() {
        return s0.w(this._navigators);
    }
}
