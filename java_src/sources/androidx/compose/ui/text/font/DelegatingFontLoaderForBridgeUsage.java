package androidx.compose.ui.text.font;

import android.content.Context;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class DelegatingFontLoaderForBridgeUsage implements PlatformFontLoader {

    @NotNull
    private final Object cacheKey;

    @NotNull
    private final Context context;

    @NotNull
    private final Font.ResourceLoader loader;

    @Override // androidx.compose.ui.text.font.PlatformFontLoader
    @NotNull
    public Object a() {
        return this.cacheKey;
    }

    public DelegatingFontLoaderForBridgeUsage(@NotNull Font.ResourceLoader loader, @NotNull Context context) {
        t.j(loader, "loader");
        t.j(context, "context");
        this.loader = loader;
        this.context = context;
        this.cacheKey = new Object();
    }

    @Override // androidx.compose.ui.text.font.PlatformFontLoader
    @Nullable
    public Object b(@NotNull Font font, @NotNull kotlin.coroutines.d<Object> dVar) {
        if (!(font instanceof AndroidFont)) {
            return this.loader.a(font);
        }
        AndroidFont androidFont = (AndroidFont) font;
        return androidFont.d().b(this.context, androidFont, dVar);
    }

    @Override // androidx.compose.ui.text.font.PlatformFontLoader
    @Nullable
    public Object c(@NotNull Font font) {
        t.j(font, "font");
        if (!(font instanceof AndroidFont)) {
            return this.loader.a(font);
        }
        AndroidFont androidFont = (AndroidFont) font;
        return androidFont.d().a(this.context, androidFont);
    }
}
