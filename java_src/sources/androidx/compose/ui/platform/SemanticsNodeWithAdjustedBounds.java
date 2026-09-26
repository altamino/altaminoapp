package androidx.compose.ui.platform;

import android.graphics.Rect;
import androidx.compose.ui.semantics.SemanticsNode;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class SemanticsNodeWithAdjustedBounds {

    @NotNull
    private final Rect adjustedBounds;

    @NotNull
    private final SemanticsNode semanticsNode;

    @NotNull
    public final Rect a() {
        return this.adjustedBounds;
    }

    @NotNull
    public final SemanticsNode b() {
        return this.semanticsNode;
    }

    public SemanticsNodeWithAdjustedBounds(@NotNull SemanticsNode semanticsNode, @NotNull Rect adjustedBounds) {
        kotlin.jvm.internal.t.j(semanticsNode, "semanticsNode");
        kotlin.jvm.internal.t.j(adjustedBounds, "adjustedBounds");
        this.semanticsNode = semanticsNode;
        this.adjustedBounds = adjustedBounds;
    }
}
