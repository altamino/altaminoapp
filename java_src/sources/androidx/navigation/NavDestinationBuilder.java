package androidx.navigation;

import androidx.annotation.IdRes;
import androidx.navigation.NavDestination;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@NavDestinationDsl
public class NavDestinationBuilder<D extends NavDestination> {

    @NotNull
    private Map<Integer, NavAction> actions;

    @NotNull
    private Map<String, NavArgument> arguments;

    @NotNull
    private List<NavDeepLink> deepLinks;
    private final int id;

    @Nullable
    private CharSequence label;

    @NotNull
    private final Navigator<? extends D> navigator;

    @Nullable
    private final String route;

    public NavDestinationBuilder(@NotNull Navigator<? extends D> navigator, @IdRes int i10, @Nullable String str) {
        t.j(navigator, "navigator");
        this.navigator = navigator;
        this.id = i10;
        this.route = str;
        this.arguments = new LinkedHashMap();
        this.deepLinks = new ArrayList();
        this.actions = new LinkedHashMap();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavDestinationBuilder(@NotNull Navigator<? extends D> navigator, @IdRes int i10) {
        this(navigator, i10, null);
        t.j(navigator, "navigator");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavDestinationBuilder(@NotNull Navigator<? extends D> navigator, @Nullable String str) {
        this(navigator, -1, str);
        t.j(navigator, "navigator");
    }
}
