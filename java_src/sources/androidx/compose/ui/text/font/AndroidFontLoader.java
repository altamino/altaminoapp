package androidx.compose.ui.text.font;

import android.content.Context;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.v;
import w7.w;

/* JADX INFO: loaded from: classes9.dex */
public final class AndroidFontLoader implements PlatformFontLoader {

    @Nullable
    private final Object cacheKey;
    private final Context context;

    @Override // androidx.compose.ui.text.font.PlatformFontLoader
    @Nullable
    public Object a() {
        return this.cacheKey;
    }

    public AndroidFontLoader(@NotNull Context context) {
        t.j(context, "context");
        this.context = context.getApplicationContext();
    }

    @Override // androidx.compose.ui.text.font.PlatformFontLoader
    @Nullable
    public Object b(@NotNull Font font, @NotNull kotlin.coroutines.d<? super android.graphics.Typeface> dVar) {
        if (font instanceof AndroidFont) {
            AndroidFont androidFont = (AndroidFont) font;
            AndroidFont.TypefaceLoader typefaceLoaderD = androidFont.d();
            Context context = this.context;
            t.i(context, "context");
            return typefaceLoaderD.b(context, androidFont, dVar);
        }
        if (font instanceof ResourceFont) {
            Context context2 = this.context;
            t.i(context2, "context");
            Object objD = AndroidFontLoader_androidKt.d((ResourceFont) font, context2, dVar);
            return objD == kotlin.coroutines.intrinsics.d.e() ? objD : (android.graphics.Typeface) objD;
        }
        throw new IllegalArgumentException("Unknown font type: " + font);
    }

    @Override // androidx.compose.ui.text.font.PlatformFontLoader
    @Nullable
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public android.graphics.Typeface c(@NotNull Font font) {
        Object objB;
        t.j(font, "font");
        if (font instanceof AndroidFont) {
            AndroidFont androidFont = (AndroidFont) font;
            AndroidFont.TypefaceLoader typefaceLoaderD = androidFont.d();
            Context context = this.context;
            t.i(context, "context");
            return typefaceLoaderD.a(context, androidFont);
        }
        if (!(font instanceof ResourceFont)) {
            return null;
        }
        int iA = font.a();
        FontLoadingStrategy.Companion companion = FontLoadingStrategy.Companion;
        if (FontLoadingStrategy.f(iA, companion.b())) {
            Context context2 = this.context;
            t.i(context2, "context");
            return AndroidFontLoader_androidKt.c((ResourceFont) font, context2);
        }
        if (!FontLoadingStrategy.f(iA, companion.c())) {
            if (FontLoadingStrategy.f(iA, companion.a())) {
                throw new UnsupportedOperationException("Unsupported Async font load path");
            }
            throw new IllegalArgumentException("Unknown loading type " + ((Object) FontLoadingStrategy.h(font.a())));
        }
        try {
            v.a aVar = v.Companion;
            Context context3 = this.context;
            t.i(context3, "context");
            objB = v.b(AndroidFontLoader_androidKt.c((ResourceFont) font, context3));
        } catch (Throwable th) {
            v.a aVar2 = v.Companion;
            objB = v.b(w.a(th));
        }
        return (android.graphics.Typeface) (v.g(objB) ? null : objB);
    }
}
