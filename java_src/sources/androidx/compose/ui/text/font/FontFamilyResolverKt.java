package androidx.compose.ui.text.font;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class FontFamilyResolverKt {

    @NotNull
    private static final TypefaceRequestCache GlobalTypefaceRequestCache = new TypefaceRequestCache();

    @NotNull
    private static final AsyncTypefaceCache GlobalAsyncTypefaceCache = new AsyncTypefaceCache();

    @NotNull
    public static final AsyncTypefaceCache a() {
        return GlobalAsyncTypefaceCache;
    }

    @NotNull
    public static final TypefaceRequestCache b() {
        return GlobalTypefaceRequestCache;
    }
}
