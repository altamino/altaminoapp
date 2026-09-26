package androidx.compose.ui.text.font;

import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AndroidPreloadedFont extends AndroidFont {
    @Nullable
    public abstract String e();

    @Nullable
    public abstract android.graphics.Typeface f();

    public AndroidPreloadedFont() {
        super(FontLoadingStrategy.Companion.b(), AndroidPreloadedFontTypefaceLoader.INSTANCE, null);
    }
}
