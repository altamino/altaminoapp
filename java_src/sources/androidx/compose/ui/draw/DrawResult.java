package androidx.compose.ui.draw;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
@StabilityInferred
public final class DrawResult {
    public static final int $stable = 8;

    @NotNull
    private l<? super ContentDrawScope, l0> block;

    @NotNull
    public final l<ContentDrawScope, l0> a() {
        return this.block;
    }

    public DrawResult(@NotNull l<? super ContentDrawScope, l0> block) {
        t.j(block, "block");
        this.block = block;
    }
}
