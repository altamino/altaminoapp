package androidx.compose.ui.text.font;

import androidx.compose.ui.text.ExperimentalTextApi;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@ExperimentalTextApi
final class DeviceFontFamilyNameFont extends AndroidFont {

    @NotNull
    private final String familyName;

    @Nullable
    private final android.graphics.Typeface resolvedTypeface;
    private final int style;

    @NotNull
    private final FontWeight weight;

    public /* synthetic */ DeviceFontFamilyNameFont(String str, FontWeight fontWeight, int i10, k kVar) {
        this(str, fontWeight, i10);
    }

    @Override // androidx.compose.ui.text.font.Font
    @NotNull
    public FontWeight b() {
        return this.weight;
    }

    @Override // androidx.compose.ui.text.font.Font
    public int c() {
        return this.style;
    }

    @Nullable
    public final android.graphics.Typeface e() {
        return this.resolvedTypeface;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!t.e(DeviceFontFamilyNameFont.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        if (obj == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.compose.ui.text.font.DeviceFontFamilyNameFont");
        }
        DeviceFontFamilyNameFont deviceFontFamilyNameFont = (DeviceFontFamilyNameFont) obj;
        return DeviceFontFamilyName.b(this.familyName, deviceFontFamilyNameFont.familyName) && t.e(b(), deviceFontFamilyNameFont.b()) && FontStyle.f(c(), deviceFontFamilyNameFont.c());
    }

    private DeviceFontFamilyNameFont(String str, FontWeight fontWeight, int i10) {
        super(FontLoadingStrategy.Companion.c(), NamedFontLoader.INSTANCE, null);
        this.familyName = str;
        this.weight = fontWeight;
        this.style = i10;
        this.resolvedTypeface = PlatformTypefacesKt.a().a(str, b(), c());
    }

    public int hashCode() {
        return (((DeviceFontFamilyName.c(this.familyName) * 31) + b().hashCode()) * 31) + FontStyle.g(c());
    }

    @NotNull
    public String toString() {
        return "Font(familyName=\"" + ((Object) DeviceFontFamilyName.d(this.familyName)) + "\", weight=" + b() + ", style=" + ((Object) FontStyle.h(c())) + ')';
    }
}
