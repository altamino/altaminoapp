package androidx.compose.ui.text.font;

import androidx.compose.runtime.State;
import androidx.compose.ui.text.ExperimentalTextApi;
import e8.l;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes2.dex */
@ExperimentalTextApi
public final class FontFamilyResolverImpl implements FontFamily.Resolver {

    @NotNull
    private final l<TypefaceRequest, Object> createDefaultTypeface;

    @NotNull
    private final FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter;

    @NotNull
    private final PlatformFontFamilyTypefaceAdapter platformFamilyTypefaceAdapter;

    @NotNull
    private final PlatformFontLoader platformFontLoader;

    @NotNull
    private final PlatformResolveInterceptor platformResolveInterceptor;

    @NotNull
    private final TypefaceRequestCache typefaceRequestCache;

    public FontFamilyResolverImpl(@NotNull PlatformFontLoader platformFontLoader, @NotNull PlatformResolveInterceptor platformResolveInterceptor, @NotNull TypefaceRequestCache typefaceRequestCache, @NotNull FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter, @NotNull PlatformFontFamilyTypefaceAdapter platformFamilyTypefaceAdapter) {
        t.j(platformFontLoader, "platformFontLoader");
        t.j(platformResolveInterceptor, "platformResolveInterceptor");
        t.j(typefaceRequestCache, "typefaceRequestCache");
        t.j(fontListFontFamilyTypefaceAdapter, "fontListFontFamilyTypefaceAdapter");
        t.j(platformFamilyTypefaceAdapter, "platformFamilyTypefaceAdapter");
        this.platformFontLoader = platformFontLoader;
        this.platformResolveInterceptor = platformResolveInterceptor;
        this.typefaceRequestCache = typefaceRequestCache;
        this.fontListFontFamilyTypefaceAdapter = fontListFontFamilyTypefaceAdapter;
        this.platformFamilyTypefaceAdapter = platformFamilyTypefaceAdapter;
        this.createDefaultTypeface = new FontFamilyResolverImpl$createDefaultTypeface$1(this);
    }

    @NotNull
    public final PlatformFontLoader f() {
        return this.platformFontLoader;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final State<Object> h(TypefaceRequest typefaceRequest) {
        return this.typefaceRequestCache.d(typefaceRequest, new FontFamilyResolverImpl$resolve$result$1(this, typefaceRequest));
    }

    @Override // androidx.compose.ui.text.font.FontFamily.Resolver
    @NotNull
    public State<Object> a(@Nullable FontFamily fontFamily, @NotNull FontWeight fontWeight, int i10, int i11) {
        t.j(fontWeight, "fontWeight");
        return h(new TypefaceRequest(this.platformResolveInterceptor.a(fontFamily), this.platformResolveInterceptor.b(fontWeight), this.platformResolveInterceptor.c(i10), this.platformResolveInterceptor.d(i11), this.platformFontLoader.a(), null));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public Object g(@NotNull FontFamily fontFamily, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        FontFamilyResolverImpl$preload$1 fontFamilyResolverImpl$preload$1;
        FontFamilyResolverImpl fontFamilyResolverImpl;
        if (dVar instanceof FontFamilyResolverImpl$preload$1) {
            fontFamilyResolverImpl$preload$1 = (FontFamilyResolverImpl$preload$1) dVar;
            int i10 = fontFamilyResolverImpl$preload$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                fontFamilyResolverImpl$preload$1.label = i10 - Integer.MIN_VALUE;
            } else {
                fontFamilyResolverImpl$preload$1 = new FontFamilyResolverImpl$preload$1(this, dVar);
            }
        } else {
            fontFamilyResolverImpl$preload$1 = new FontFamilyResolverImpl$preload$1(this, dVar);
        }
        Object obj = fontFamilyResolverImpl$preload$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = fontFamilyResolverImpl$preload$1.label;
        if (i11 == 0) {
            w.b(obj);
            if (!(fontFamily instanceof FontListFontFamily)) {
                return l0.INSTANCE;
            }
            FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter = this.fontListFontFamilyTypefaceAdapter;
            PlatformFontLoader platformFontLoader = this.platformFontLoader;
            fontFamilyResolverImpl$preload$1.L$0 = this;
            fontFamilyResolverImpl$preload$1.L$1 = fontFamily;
            fontFamilyResolverImpl$preload$1.label = 1;
            if (fontListFontFamilyTypefaceAdapter.b(fontFamily, platformFontLoader, fontFamilyResolverImpl$preload$1) == objE) {
                return objE;
            }
            fontFamilyResolverImpl = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            fontFamily = (FontFamily) fontFamilyResolverImpl$preload$1.L$1;
            fontFamilyResolverImpl = (FontFamilyResolverImpl) fontFamilyResolverImpl$preload$1.L$0;
            w.b(obj);
        }
        List<Font> listQ = ((FontListFontFamily) fontFamily).q();
        ArrayList arrayList = new ArrayList(listQ.size());
        int size = listQ.size();
        for (int i12 = 0; i12 < size; i12++) {
            Font font = listQ.get(i12);
            arrayList.add(new TypefaceRequest(fontFamilyResolverImpl.platformResolveInterceptor.a(fontFamily), fontFamilyResolverImpl.platformResolveInterceptor.b(font.b()), fontFamilyResolverImpl.platformResolveInterceptor.c(font.c()), FontSynthesis.Companion.a(), fontFamilyResolverImpl.platformFontLoader.a(), null));
        }
        fontFamilyResolverImpl.typefaceRequestCache.c(arrayList, new FontFamilyResolverImpl$preload$2(fontFamilyResolverImpl));
        return l0.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ FontFamilyResolverImpl(PlatformFontLoader platformFontLoader, PlatformResolveInterceptor platformResolveInterceptor, TypefaceRequestCache typefaceRequestCache, FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter, PlatformFontFamilyTypefaceAdapter platformFontFamilyTypefaceAdapter, int i10, k kVar) {
        this(platformFontLoader, (i10 & 2) != 0 ? PlatformResolveInterceptor.Companion.a() : platformResolveInterceptor, (i10 & 4) != 0 ? FontFamilyResolverKt.b() : typefaceRequestCache, (i10 & 8) != 0 ? new FontListFontFamilyTypefaceAdapter(FontFamilyResolverKt.a(), null, 2, 0 == true ? 1 : 0) : fontListFontFamilyTypefaceAdapter, (i10 & 16) != 0 ? new PlatformFontFamilyTypefaceAdapter() : platformFontFamilyTypefaceAdapter);
    }
}
