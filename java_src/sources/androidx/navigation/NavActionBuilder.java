package androidx.navigation;

import java.util.LinkedHashMap;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@NavDestinationDsl
public final class NavActionBuilder {

    @NotNull
    private final Map<String, Object> defaultArguments = new LinkedHashMap();
    private int destinationId;

    @Nullable
    private NavOptions navOptions;
}
