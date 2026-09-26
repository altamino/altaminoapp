package androidx.navigation.fragment;

import androidx.annotation.IdRes;
import androidx.fragment.app.Fragment;
import androidx.navigation.NavDestinationBuilder;
import androidx.navigation.NavDestinationDsl;
import kotlin.jvm.internal.t;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
@NavDestinationDsl
public final class FragmentNavigatorDestinationBuilder extends NavDestinationBuilder<FragmentNavigator.Destination> {

    @NotNull
    private KClass<? extends Fragment> fragmentClass;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentNavigatorDestinationBuilder(@NotNull FragmentNavigator navigator, @IdRes int i10, @NotNull KClass<? extends Fragment> fragmentClass) {
        super(navigator, i10);
        t.j(navigator, "navigator");
        t.j(fragmentClass, "fragmentClass");
        this.fragmentClass = fragmentClass;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentNavigatorDestinationBuilder(@NotNull FragmentNavigator navigator, @NotNull String route, @NotNull KClass<? extends Fragment> fragmentClass) {
        super(navigator, route);
        t.j(navigator, "navigator");
        t.j(route, "route");
        t.j(fragmentClass, "fragmentClass");
        this.fragmentClass = fragmentClass;
    }
}
