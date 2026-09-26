package androidx.compose.ui.text.font;

import androidx.compose.ui.text.ExperimentalTextApi;
import e8.l;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import kotlin.collections.d0;
import kotlin.coroutines.g;
import kotlin.coroutines.h;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.q0;
import kotlinx.coroutines.y2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.u;

/* JADX INFO: loaded from: classes4.dex */
@ExperimentalTextApi
public final class FontListFontFamilyTypefaceAdapter implements FontFamilyTypefaceAdapter {

    @NotNull
    private o0 asyncLoadScope;

    @NotNull
    private final AsyncTypefaceCache asyncTypefaceCache;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final FontMatcher fontMatcher = new FontMatcher();

    @NotNull
    private static final l0 DropExceptionHandler = new FontListFontFamilyTypefaceAdapter$special$$inlined$CoroutineExceptionHandler$1(l0.Key);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FontListFontFamilyTypefaceAdapter() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public FontListFontFamilyTypefaceAdapter(@NotNull AsyncTypefaceCache asyncTypefaceCache, @NotNull g injectedContext) {
        t.j(asyncTypefaceCache, "asyncTypefaceCache");
        t.j(injectedContext, "injectedContext");
        this.asyncTypefaceCache = asyncTypefaceCache;
        this.asyncLoadScope = p0.a(DropExceptionHandler.plus(injectedContext).plus(y2.a((b2) injectedContext.get(b2.Key))));
    }

    @Nullable
    public final Object b(@NotNull FontFamily fontFamily, @NotNull PlatformFontLoader platformFontLoader, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
        if (!(fontFamily instanceof FontListFontFamily)) {
            return w7.l0.INSTANCE;
        }
        FontListFontFamily fontListFontFamily = (FontListFontFamily) fontFamily;
        List<Font> listQ = fontListFontFamily.q();
        List<Font> listQ2 = fontListFontFamily.q();
        ArrayList arrayList = new ArrayList(listQ2.size());
        int size = listQ2.size();
        for (int i10 = 0; i10 < size; i10++) {
            Font font = listQ2.get(i10);
            if (FontLoadingStrategy.f(font.a(), FontLoadingStrategy.Companion.a())) {
                arrayList.add(font);
            }
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size2 = arrayList.size();
        for (int i11 = 0; i11 < size2; i11++) {
            Font font2 = (Font) arrayList.get(i11);
            arrayList2.add(a0.a(font2.b(), FontStyle.c(font2.c())));
        }
        HashSet hashSet = new HashSet(arrayList2.size());
        ArrayList arrayList3 = new ArrayList(arrayList2.size());
        int size3 = arrayList2.size();
        for (int i12 = 0; i12 < size3; i12++) {
            Object obj = arrayList2.get(i12);
            if (hashSet.add((u) obj)) {
                arrayList3.add(obj);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        int size4 = arrayList3.size();
        for (int i13 = 0; i13 < size4; i13++) {
            u uVar = (u) arrayList3.get(i13);
            FontWeight fontWeight = (FontWeight) uVar.a();
            int i14 = ((FontStyle) uVar.b()).i();
            List list = (List) FontListFontFamilyTypefaceAdapterKt.b(fontMatcher.a(listQ, fontWeight, i14), new TypefaceRequest(fontFamily, fontWeight, i14, FontSynthesis.Companion.a(), platformFontLoader.a(), null), this.asyncTypefaceCache, platformFontLoader, FontListFontFamilyTypefaceAdapter$preload$2$1.INSTANCE).a();
            if (list != null) {
                arrayList4.add(d0.j0(list));
            }
        }
        Object objF = p0.f(new FontListFontFamilyTypefaceAdapter$preload$3(arrayList4, this, platformFontLoader, null), dVar);
        return objF == kotlin.coroutines.intrinsics.d.e() ? objF : w7.l0.INSTANCE;
    }

    @Nullable
    public TypefaceResult c(@NotNull TypefaceRequest typefaceRequest, @NotNull PlatformFontLoader platformFontLoader, @NotNull l<? super TypefaceResult.Immutable, w7.l0> onAsyncCompletion, @NotNull l<? super TypefaceRequest, ? extends Object> createDefaultTypeface) {
        t.j(typefaceRequest, "typefaceRequest");
        t.j(platformFontLoader, "platformFontLoader");
        t.j(onAsyncCompletion, "onAsyncCompletion");
        t.j(createDefaultTypeface, "createDefaultTypeface");
        if (!(typefaceRequest.c() instanceof FontListFontFamily)) {
            return null;
        }
        u uVarB = FontListFontFamilyTypefaceAdapterKt.b(fontMatcher.a(((FontListFontFamily) typefaceRequest.c()).q(), typefaceRequest.f(), typefaceRequest.d()), typefaceRequest, this.asyncTypefaceCache, platformFontLoader, createDefaultTypeface);
        List list = (List) uVarB.a();
        Object objB = uVarB.b();
        if (list == null) {
            return new TypefaceResult.Immutable(objB, false, 2, null);
        }
        AsyncFontListLoader asyncFontListLoader = new AsyncFontListLoader(list, objB, typefaceRequest, this.asyncTypefaceCache, onAsyncCompletion, platformFontLoader);
        kotlinx.coroutines.k.d(this.asyncLoadScope, null, q0.UNDISPATCHED, new FontListFontFamilyTypefaceAdapter$resolve$1(asyncFontListLoader, null), 1, null);
        return new TypefaceResult.Async(asyncFontListLoader);
    }

    public /* synthetic */ FontListFontFamilyTypefaceAdapter(AsyncTypefaceCache asyncTypefaceCache, g gVar, int i10, k kVar) {
        this((i10 & 1) != 0 ? new AsyncTypefaceCache() : asyncTypefaceCache, (i10 & 2) != 0 ? h.INSTANCE : gVar);
    }
}
