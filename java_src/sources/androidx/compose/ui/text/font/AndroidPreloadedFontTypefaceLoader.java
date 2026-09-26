package androidx.compose.ui.text.font;

import android.content.Context;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class AndroidPreloadedFontTypefaceLoader implements AndroidFont.TypefaceLoader {

    @NotNull
    public static final AndroidPreloadedFontTypefaceLoader INSTANCE = new AndroidPreloadedFontTypefaceLoader();

    @Override // androidx.compose.ui.text.font.AndroidFont.TypefaceLoader
    @Nullable
    public android.graphics.Typeface a(@NotNull Context context, @NotNull AndroidFont font) {
        t.j(context, "context");
        t.j(font, "font");
        AndroidPreloadedFont androidPreloadedFont = font instanceof AndroidPreloadedFont ? (AndroidPreloadedFont) font : null;
        if (androidPreloadedFont != null) {
            return androidPreloadedFont.f();
        }
        return null;
    }

    @Override // androidx.compose.ui.text.font.AndroidFont.TypefaceLoader
    @Nullable
    public Object b(@NotNull Context context, @NotNull AndroidFont androidFont, @NotNull kotlin.coroutines.d<?> dVar) {
        throw new UnsupportedOperationException("All preloaded fonts are blocking.");
    }

    private AndroidPreloadedFontTypefaceLoader() {
    }
}
