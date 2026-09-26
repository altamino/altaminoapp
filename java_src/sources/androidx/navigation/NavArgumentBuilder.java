package androidx.navigation;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@NavDestinationDsl
public final class NavArgumentBuilder {

    @Nullable
    private NavType<?> _type;

    @NotNull
    private final NavArgument.Builder builder = new NavArgument.Builder();

    @Nullable
    private Object defaultValue;
    private boolean nullable;
}
