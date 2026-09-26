package androidx.compose.ui.text.font;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class DelegatingFontLoaderForDeprecatedUsage implements PlatformFontLoader {

    @NotNull
    private final Object cacheKey;

    @NotNull
    private final Font.ResourceLoader loader;

    @Override // androidx.compose.ui.text.font.PlatformFontLoader
    @NotNull
    public Object a() {
        return this.cacheKey;
    }

    public DelegatingFontLoaderForDeprecatedUsage(@NotNull Font.ResourceLoader loader) {
        t.j(loader, "loader");
        this.loader = loader;
        this.cacheKey = new Object();
    }

    @Override // androidx.compose.ui.text.font.PlatformFontLoader
    @Nullable
    public Object b(@NotNull Font font, @NotNull kotlin.coroutines.d<Object> dVar) {
        return this.loader.a(font);
    }

    @Override // androidx.compose.ui.text.font.PlatformFontLoader
    @NotNull
    public Object c(@NotNull Font font) {
        t.j(font, "font");
        return this.loader.a(font);
    }
}
