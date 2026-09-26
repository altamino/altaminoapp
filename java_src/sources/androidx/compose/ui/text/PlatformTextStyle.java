package androidx.compose.ui.text;

import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@ExperimentalTextApi
public final class PlatformTextStyle {

    @Nullable
    private final PlatformParagraphStyle paragraphStyle;

    @Nullable
    private final PlatformSpanStyle spanStyle;

    public PlatformTextStyle(@Nullable PlatformSpanStyle platformSpanStyle, @Nullable PlatformParagraphStyle platformParagraphStyle) {
        this.spanStyle = platformSpanStyle;
        this.paragraphStyle = platformParagraphStyle;
    }

    @Nullable
    public final PlatformParagraphStyle a() {
        return this.paragraphStyle;
    }

    @Nullable
    public final PlatformSpanStyle b() {
        return this.spanStyle;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlatformTextStyle)) {
            return false;
        }
        PlatformTextStyle platformTextStyle = (PlatformTextStyle) obj;
        return t.e(this.paragraphStyle, platformTextStyle.paragraphStyle) && t.e(this.spanStyle, platformTextStyle.spanStyle);
    }

    public /* synthetic */ PlatformTextStyle(boolean z6, int i10, k kVar) {
        this((i10 & 1) != 0 ? true : z6);
    }

    public int hashCode() {
        PlatformSpanStyle platformSpanStyle = this.spanStyle;
        int iHashCode = (platformSpanStyle != null ? platformSpanStyle.hashCode() : 0) * 31;
        PlatformParagraphStyle platformParagraphStyle = this.paragraphStyle;
        return iHashCode + (platformParagraphStyle != null ? platformParagraphStyle.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "PlatformTextStyle(spanStyle=" + this.spanStyle + ", paragraphSyle=" + this.paragraphStyle + ')';
    }

    public PlatformTextStyle(boolean z6) {
        this(null, new PlatformParagraphStyle(z6));
    }
}
