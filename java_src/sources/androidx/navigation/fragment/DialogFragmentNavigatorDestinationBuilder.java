package androidx.navigation.fragment;

import androidx.annotation.IdRes;
import androidx.fragment.app.DialogFragment;
import androidx.navigation.NavDestinationBuilder;
import androidx.navigation.NavDestinationDsl;
import kotlin.jvm.internal.t;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@NavDestinationDsl
public final class DialogFragmentNavigatorDestinationBuilder extends NavDestinationBuilder<DialogFragmentNavigator.Destination> {

    @NotNull
    private KClass<? extends DialogFragment> fragmentClass;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogFragmentNavigatorDestinationBuilder(@NotNull DialogFragmentNavigator navigator, @IdRes int i10, @NotNull KClass<? extends DialogFragment> fragmentClass) {
        super(navigator, i10);
        t.j(navigator, "navigator");
        t.j(fragmentClass, "fragmentClass");
        this.fragmentClass = fragmentClass;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogFragmentNavigatorDestinationBuilder(@NotNull DialogFragmentNavigator navigator, @NotNull String route, @NotNull KClass<? extends DialogFragment> fragmentClass) {
        super(navigator, route);
        t.j(navigator, "navigator");
        t.j(route, "route");
        t.j(fragmentClass, "fragmentClass");
        this.fragmentClass = fragmentClass;
    }
}
