package androidx.compose.ui.text.font;

import androidx.compose.ui.text.ExperimentalTextApi;
import androidx.compose.ui.text.platform.AndroidTypeface;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
@ExperimentalTextApi
public final class PlatformFontFamilyTypefaceAdapter implements FontFamilyTypefaceAdapter {

    @NotNull
    private final PlatformTypefaces platformTypefaceResolver = PlatformTypefacesKt.a();

    @Nullable
    public TypefaceResult a(@NotNull TypefaceRequest typefaceRequest, @NotNull PlatformFontLoader platformFontLoader, @NotNull l<? super TypefaceResult.Immutable, l0> onAsyncCompletion, @NotNull l<? super TypefaceRequest, ? extends Object> createDefaultTypeface) {
        android.graphics.Typeface typefaceC;
        t.j(typefaceRequest, "typefaceRequest");
        t.j(platformFontLoader, "platformFontLoader");
        t.j(onAsyncCompletion, "onAsyncCompletion");
        t.j(createDefaultTypeface, "createDefaultTypeface");
        FontFamily fontFamilyC = typefaceRequest.c();
        if (fontFamilyC == null || (fontFamilyC instanceof DefaultFontFamily)) {
            typefaceC = this.platformTypefaceResolver.c(typefaceRequest.f(), typefaceRequest.d());
        } else if (fontFamilyC instanceof GenericFontFamily) {
            typefaceC = this.platformTypefaceResolver.b((GenericFontFamily) typefaceRequest.c(), typefaceRequest.f(), typefaceRequest.d());
        } else {
            if (!(fontFamilyC instanceof LoadedFontFamily)) {
                return null;
            }
            typefaceC = ((AndroidTypeface) ((LoadedFontFamily) typefaceRequest.c()).m()).a(typefaceRequest.f(), typefaceRequest.d(), typefaceRequest.e());
        }
        return new TypefaceResult.Immutable(typefaceC, false, 2, null);
    }
}
