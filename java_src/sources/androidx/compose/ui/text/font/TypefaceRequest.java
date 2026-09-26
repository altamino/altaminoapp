package androidx.compose.ui.text.font;

import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class TypefaceRequest {

    @Nullable
    private final FontFamily fontFamily;
    private final int fontStyle;
    private final int fontSynthesis;

    @NotNull
    private final FontWeight fontWeight;

    @Nullable
    private final Object resourceLoaderCacheKey;

    public /* synthetic */ TypefaceRequest(FontFamily fontFamily, FontWeight fontWeight, int i10, int i11, Object obj, k kVar) {
        this(fontFamily, fontWeight, i10, i11, obj);
    }

    public static /* synthetic */ TypefaceRequest b(TypefaceRequest typefaceRequest, FontFamily fontFamily, FontWeight fontWeight, int i10, int i11, Object obj, int i12, Object obj2) {
        if ((i12 & 1) != 0) {
            fontFamily = typefaceRequest.fontFamily;
        }
        if ((i12 & 2) != 0) {
            fontWeight = typefaceRequest.fontWeight;
        }
        FontWeight fontWeight2 = fontWeight;
        if ((i12 & 4) != 0) {
            i10 = typefaceRequest.fontStyle;
        }
        int i13 = i10;
        if ((i12 & 8) != 0) {
            i11 = typefaceRequest.fontSynthesis;
        }
        int i14 = i11;
        if ((i12 & 16) != 0) {
            obj = typefaceRequest.resourceLoaderCacheKey;
        }
        return typefaceRequest.a(fontFamily, fontWeight2, i13, i14, obj);
    }

    @NotNull
    public final TypefaceRequest a(@Nullable FontFamily fontFamily, @NotNull FontWeight fontWeight, int i10, int i11, @Nullable Object obj) {
        t.j(fontWeight, "fontWeight");
        return new TypefaceRequest(fontFamily, fontWeight, i10, i11, obj, null);
    }

    @Nullable
    public final FontFamily c() {
        return this.fontFamily;
    }

    public final int d() {
        return this.fontStyle;
    }

    public final int e() {
        return this.fontSynthesis;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TypefaceRequest)) {
            return false;
        }
        TypefaceRequest typefaceRequest = (TypefaceRequest) obj;
        return t.e(this.fontFamily, typefaceRequest.fontFamily) && t.e(this.fontWeight, typefaceRequest.fontWeight) && FontStyle.f(this.fontStyle, typefaceRequest.fontStyle) && FontSynthesis.h(this.fontSynthesis, typefaceRequest.fontSynthesis) && t.e(this.resourceLoaderCacheKey, typefaceRequest.resourceLoaderCacheKey);
    }

    @NotNull
    public final FontWeight f() {
        return this.fontWeight;
    }

    public int hashCode() {
        FontFamily fontFamily = this.fontFamily;
        int iHashCode = (((((((fontFamily == null ? 0 : fontFamily.hashCode()) * 31) + this.fontWeight.hashCode()) * 31) + FontStyle.g(this.fontStyle)) * 31) + FontSynthesis.i(this.fontSynthesis)) * 31;
        Object obj = this.resourceLoaderCacheKey;
        return iHashCode + (obj != null ? obj.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "TypefaceRequest(fontFamily=" + this.fontFamily + ", fontWeight=" + this.fontWeight + ", fontStyle=" + ((Object) FontStyle.h(this.fontStyle)) + ", fontSynthesis=" + ((Object) FontSynthesis.l(this.fontSynthesis)) + ", resourceLoaderCacheKey=" + this.resourceLoaderCacheKey + ')';
    }

    private TypefaceRequest(FontFamily fontFamily, FontWeight fontWeight, int i10, int i11, Object obj) {
        this.fontFamily = fontFamily;
        this.fontWeight = fontWeight;
        this.fontStyle = i10;
        this.fontSynthesis = i11;
        this.resourceLoaderCacheKey = obj;
    }
}
