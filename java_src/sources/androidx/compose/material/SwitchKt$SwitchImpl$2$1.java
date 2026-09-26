package androidx.compose.material;

import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
final class SwitchKt$SwitchImpl$2$1 extends v implements l<DrawScope, l0> {
    final /* synthetic */ State<Color> $trackColor$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SwitchKt$SwitchImpl$2$1(State<Color> state) {
        super(1);
        this.$trackColor$delegate = state;
    }

    public final void a(@NotNull DrawScope Canvas) {
        t.j(Canvas, "$this$Canvas");
        SwitchKt.h(Canvas, SwitchKt.c(this.$trackColor$delegate), Canvas.H0(SwitchKt.j()), Canvas.H0(SwitchKt.i()));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(DrawScope drawScope) {
        a(drawScope);
        return l0.INSTANCE;
    }
}
