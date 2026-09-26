package androidx.compose.ui.text.font;

import androidx.compose.ui.text.ExperimentalTextApi;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class ResourceFont implements Font {
    private final int loadingStrategy;
    private final int resId;
    private final int style;

    @NotNull
    private final FontWeight weight;

    public /* synthetic */ ResourceFont(int i10, FontWeight fontWeight, int i11, int i12, k kVar) {
        this(i10, fontWeight, i11, i12);
    }

    @Override // androidx.compose.ui.text.font.Font
    @ExperimentalTextApi
    public int a() {
        return this.loadingStrategy;
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

    public final int d() {
        return this.resId;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResourceFont)) {
            return false;
        }
        ResourceFont resourceFont = (ResourceFont) obj;
        return this.resId == resourceFont.resId && t.e(b(), resourceFont.b()) && FontStyle.f(c(), resourceFont.c()) && FontLoadingStrategy.f(a(), resourceFont.a());
    }

    private ResourceFont(int i10, FontWeight fontWeight, int i11, int i12) {
        this.resId = i10;
        this.weight = fontWeight;
        this.style = i11;
        this.loadingStrategy = i12;
    }

    public int hashCode() {
        return (((((this.resId * 31) + b().hashCode()) * 31) + FontStyle.g(c())) * 31) + FontLoadingStrategy.g(a());
    }

    @NotNull
    public String toString() {
        return "ResourceFont(resId=" + this.resId + ", weight=" + b() + ", style=" + ((Object) FontStyle.h(c())) + ", loadingStrategy=" + ((Object) FontLoadingStrategy.h(a())) + ')';
    }

    public /* synthetic */ ResourceFont(int i10, FontWeight fontWeight, int i11, int i12, int i13, k kVar) {
        this(i10, (i13 & 2) != 0 ? FontWeight.Companion.d() : fontWeight, (i13 & 4) != 0 ? FontStyle.Companion.b() : i11, (i13 & 8) != 0 ? FontLoadingStrategy.Companion.a() : i12, null);
    }
}
