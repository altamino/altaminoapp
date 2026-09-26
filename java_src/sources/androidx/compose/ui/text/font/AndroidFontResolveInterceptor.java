package androidx.compose.ui.text.font;

import j8.o;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class AndroidFontResolveInterceptor implements PlatformResolveInterceptor {
    private final int fontWeightAdjustment;

    @Override // androidx.compose.ui.text.font.PlatformResolveInterceptor
    public /* synthetic */ FontFamily a(FontFamily fontFamily) {
        return e.a(this, fontFamily);
    }

    @Override // androidx.compose.ui.text.font.PlatformResolveInterceptor
    public /* synthetic */ int c(int i10) {
        return e.b(this, i10);
    }

    @Override // androidx.compose.ui.text.font.PlatformResolveInterceptor
    public /* synthetic */ int d(int i10) {
        return e.c(this, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AndroidFontResolveInterceptor) && this.fontWeightAdjustment == ((AndroidFontResolveInterceptor) obj).fontWeightAdjustment;
    }

    public int hashCode() {
        return this.fontWeightAdjustment;
    }

    @NotNull
    public String toString() {
        return "AndroidFontResolveInterceptor(fontWeightAdjustment=" + this.fontWeightAdjustment + ')';
    }

    @Override // androidx.compose.ui.text.font.PlatformResolveInterceptor
    @NotNull
    public FontWeight b(@NotNull FontWeight fontWeight) {
        t.j(fontWeight, "fontWeight");
        int i10 = this.fontWeightAdjustment;
        return (i10 == 0 || i10 == Integer.MAX_VALUE) ? fontWeight : new FontWeight(o.n(fontWeight.k() + this.fontWeightAdjustment, 1, 1000));
    }

    public AndroidFontResolveInterceptor(int i10) {
        this.fontWeightAdjustment = i10;
    }
}
