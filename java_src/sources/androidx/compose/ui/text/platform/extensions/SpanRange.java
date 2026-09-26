package androidx.compose.ui.text.platform.extensions;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
final class SpanRange {
    private final int end;

    @NotNull
    private final Object span;
    private final int start;

    @NotNull
    public final Object a() {
        return this.span;
    }

    public final int b() {
        return this.start;
    }

    public final int c() {
        return this.end;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpanRange)) {
            return false;
        }
        SpanRange spanRange = (SpanRange) obj;
        return t.e(this.span, spanRange.span) && this.start == spanRange.start && this.end == spanRange.end;
    }

    public int hashCode() {
        return (((this.span.hashCode() * 31) + this.start) * 31) + this.end;
    }

    @NotNull
    public String toString() {
        return "SpanRange(span=" + this.span + ", start=" + this.start + ", end=" + this.end + ')';
    }

    public SpanRange(@NotNull Object span, int i10, int i11) {
        t.j(span, "span");
        this.span = span;
        this.start = i10;
        this.end = i11;
    }
}
