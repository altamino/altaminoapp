package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import e8.a;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class ColorStyle implements TextDrawStyle {
    private final long value;

    public /* synthetic */ ColorStyle(long j6, k kVar) {
        this(j6);
    }

    @Override // androidx.compose.ui.text.style.TextDrawStyle
    public long a() {
        return this.value;
    }

    @Override // androidx.compose.ui.text.style.TextDrawStyle
    public /* synthetic */ TextDrawStyle b(TextDrawStyle textDrawStyle) {
        return TextDrawStyle.CC.a(this, textDrawStyle);
    }

    @Override // androidx.compose.ui.text.style.TextDrawStyle
    public /* synthetic */ TextDrawStyle c(a aVar) {
        return TextDrawStyle.CC.b(this, aVar);
    }

    @Override // androidx.compose.ui.text.style.TextDrawStyle
    @Nullable
    public Brush d() {
        return null;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ColorStyle) && Color.n(this.value, ((ColorStyle) obj).value);
    }

    public int hashCode() {
        return Color.t(this.value);
    }

    @NotNull
    public String toString() {
        return "ColorStyle(value=" + ((Object) Color.u(this.value)) + ')';
    }

    private ColorStyle(long j6) {
        this.value = j6;
        if (j6 == Color.Companion.f()) {
            throw new IllegalArgumentException("ColorStyle value must be specified, use TextDrawStyle.Unspecified instead.".toString());
        }
    }
}
