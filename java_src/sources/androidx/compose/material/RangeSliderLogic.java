package androidx.compose.material;

import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.State;
import e8.p;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class RangeSliderLogic {

    @NotNull
    private final MutableInteractionSource endInteractionSource;

    @NotNull
    private final State<p<Boolean, Float, l0>> onDrag;

    @NotNull
    private final State<Float> rawOffsetEnd;

    @NotNull
    private final State<Float> rawOffsetStart;

    @NotNull
    private final MutableInteractionSource startInteractionSource;

    @NotNull
    public final MutableInteractionSource a(boolean z6) {
        return z6 ? this.startInteractionSource : this.endInteractionSource;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RangeSliderLogic(@NotNull MutableInteractionSource startInteractionSource, @NotNull MutableInteractionSource endInteractionSource, @NotNull State<Float> rawOffsetStart, @NotNull State<Float> rawOffsetEnd, @NotNull State<? extends p<? super Boolean, ? super Float, l0>> onDrag) {
        t.j(startInteractionSource, "startInteractionSource");
        t.j(endInteractionSource, "endInteractionSource");
        t.j(rawOffsetStart, "rawOffsetStart");
        t.j(rawOffsetEnd, "rawOffsetEnd");
        t.j(onDrag, "onDrag");
        this.startInteractionSource = startInteractionSource;
        this.endInteractionSource = endInteractionSource;
        this.rawOffsetStart = rawOffsetStart;
        this.rawOffsetEnd = rawOffsetEnd;
        this.onDrag = onDrag;
    }

    public final void b(boolean z6, float f, @NotNull Interaction interaction, @NotNull o0 scope) {
        t.j(interaction, "interaction");
        t.j(scope, "scope");
        this.onDrag.getValue().invoke(Boolean.valueOf(z6), Float.valueOf(f - (z6 ? this.rawOffsetStart : this.rawOffsetEnd).getValue().floatValue()));
        k.d(scope, null, null, new RangeSliderLogic$captureThumb$1(this, z6, interaction, null), 3, null);
    }

    public final int c(float f) {
        return Float.compare(Math.abs(this.rawOffsetStart.getValue().floatValue() - f), Math.abs(this.rawOffsetEnd.getValue().floatValue() - f));
    }
}
