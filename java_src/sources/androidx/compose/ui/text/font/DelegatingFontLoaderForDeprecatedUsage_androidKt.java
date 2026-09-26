package androidx.compose.ui.text.font;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class DelegatingFontLoaderForDeprecatedUsage_androidKt {
    @NotNull
    public static final FontFamily.Resolver a(@NotNull Font.ResourceLoader fontResourceLoader) {
        t.j(fontResourceLoader, "fontResourceLoader");
        return new FontFamilyResolverImpl(new DelegatingFontLoaderForDeprecatedUsage(fontResourceLoader), null, null, null, null, 30, null);
    }
}
