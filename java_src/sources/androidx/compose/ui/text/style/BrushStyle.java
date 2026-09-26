package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ShaderBrush;
import e8.a;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
final class BrushStyle implements TextDrawStyle {

    @NotNull
    private final ShaderBrush value;

    @Override // androidx.compose.ui.text.style.TextDrawStyle
    public /* synthetic */ TextDrawStyle b(TextDrawStyle textDrawStyle) {
        return TextDrawStyle.CC.a(this, textDrawStyle);
    }

    @Override // androidx.compose.ui.text.style.TextDrawStyle
    public /* synthetic */ TextDrawStyle c(a aVar) {
        return TextDrawStyle.CC.b(this, aVar);
    }

    @Override // androidx.compose.ui.text.style.TextDrawStyle
    @NotNull
    public Brush d() {
        return this.value;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BrushStyle) && t.e(this.value, ((BrushStyle) obj).value);
    }

    public int hashCode() {
        return this.value.hashCode();
    }

    @NotNull
    public String toString() {
        return "BrushStyle(value=" + this.value + ')';
    }

    public BrushStyle(@NotNull ShaderBrush value) {
        t.j(value, "value");
        this.value = value;
    }

    @Override // androidx.compose.ui.text.style.TextDrawStyle
    public long a() {
        return Color.Companion.f();
    }
}
