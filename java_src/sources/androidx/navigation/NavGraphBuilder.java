package androidx.navigation;

import androidx.annotation.IdRes;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@NavDestinationDsl
public class NavGraphBuilder extends NavDestinationBuilder<NavGraph> {

    @NotNull
    private final List<NavDestination> destinations;

    @NotNull
    private final NavigatorProvider provider;

    @IdRes
    private int startDestinationId;

    @Nullable
    private String startDestinationRoute;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraphBuilder(@NotNull NavigatorProvider provider, @IdRes int i10, @IdRes int i11) {
        super(provider.d(NavGraphNavigator.class), i10);
        t.j(provider, "provider");
        this.destinations = new ArrayList();
        this.provider = provider;
        this.startDestinationId = i11;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraphBuilder(@NotNull NavigatorProvider provider, @NotNull String startDestination, @Nullable String str) {
        super(provider.d(NavGraphNavigator.class), str);
        t.j(provider, "provider");
        t.j(startDestination, "startDestination");
        this.destinations = new ArrayList();
        this.provider = provider;
        this.startDestinationRoute = startDestination;
    }
}
