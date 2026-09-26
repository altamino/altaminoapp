package androidx.navigation;

import android.os.Bundle;
import androidx.annotation.RestrictTo;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@Navigator.Name("NoOp")
@RestrictTo
public final class NoOpNavigator extends Navigator<NavDestination> {
    @Override // androidx.navigation.Navigator
    @NotNull
    public NavDestination d(@NotNull NavDestination destination, @Nullable Bundle bundle, @Nullable NavOptions navOptions, @Nullable Navigator.Extras extras) {
        t.j(destination, "destination");
        return destination;
    }

    @Override // androidx.navigation.Navigator
    public boolean k() {
        return true;
    }

    @Override // androidx.navigation.Navigator
    @NotNull
    public NavDestination a() {
        return new NavDestination(this);
    }
}
