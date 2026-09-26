package androidx.navigation;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@NavDeepLinkDsl
public final class NavDeepLinkDslBuilder {

    @Nullable
    private String action;

    @NotNull
    private final NavDeepLink.Builder builder = new NavDeepLink.Builder();

    @Nullable
    private String mimeType;

    @Nullable
    private String uriPattern;
}
