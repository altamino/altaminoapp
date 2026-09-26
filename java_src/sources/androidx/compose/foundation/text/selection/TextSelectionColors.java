package androidx.compose.foundation.text.selection;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.graphics.Color;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
@Immutable
public final class TextSelectionColors {
    private final long backgroundColor;
    private final long handleColor;

    public /* synthetic */ TextSelectionColors(long j6, long j10, k kVar) {
        this(j6, j10);
    }

    public final long a() {
        return this.backgroundColor;
    }

    public final long b() {
        return this.handleColor;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextSelectionColors)) {
            return false;
        }
        TextSelectionColors textSelectionColors = (TextSelectionColors) obj;
        return Color.n(this.handleColor, textSelectionColors.handleColor) && Color.n(this.backgroundColor, textSelectionColors.backgroundColor);
    }

    private TextSelectionColors(long j6, long j10) {
        this.handleColor = j6;
        this.backgroundColor = j10;
    }

    public int hashCode() {
        return (Color.t(this.handleColor) * 31) + Color.t(this.backgroundColor);
    }

    @NotNull
    public String toString() {
        return "SelectionColors(selectionHandleColor=" + ((Object) Color.u(this.handleColor)) + ", selectionBackgroundColor=" + ((Object) Color.u(this.backgroundColor)) + ')';
    }
}
