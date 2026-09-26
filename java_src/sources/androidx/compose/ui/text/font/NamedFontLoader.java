package androidx.compose.ui.text.font;

import android.content.Context;
import androidx.compose.ui.text.ExperimentalTextApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@ExperimentalTextApi
final class NamedFontLoader implements AndroidFont.TypefaceLoader {

    @NotNull
    public static final NamedFontLoader INSTANCE = new NamedFontLoader();

    @Override // androidx.compose.ui.text.font.AndroidFont.TypefaceLoader
    @Nullable
    public android.graphics.Typeface a(@NotNull Context context, @NotNull AndroidFont font) {
        t.j(context, "context");
        t.j(font, "font");
        DeviceFontFamilyNameFont deviceFontFamilyNameFont = font instanceof DeviceFontFamilyNameFont ? (DeviceFontFamilyNameFont) font : null;
        if (deviceFontFamilyNameFont != null) {
            return deviceFontFamilyNameFont.e();
        }
        return null;
    }

    @Override // androidx.compose.ui.text.font.AndroidFont.TypefaceLoader
    @Nullable
    public Object b(@NotNull Context context, @NotNull AndroidFont androidFont, @NotNull kotlin.coroutines.d<? super android.graphics.Typeface> dVar) {
        throw new UnsupportedOperationException("All preloaded fonts are optional local.");
    }

    private NamedFontLoader() {
    }
}
