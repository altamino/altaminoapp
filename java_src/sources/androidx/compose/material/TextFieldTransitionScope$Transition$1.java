package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.graphics.Color;
import e8.p;
import e8.q;
import e8.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class TextFieldTransitionScope$Transition$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ t<Float, Color, Color, Float, Composer, Integer, l0> $content;
    final /* synthetic */ q<InputPhase, Composer, Integer, Color> $contentColor;
    final /* synthetic */ long $focusedTextStyleColor;
    final /* synthetic */ InputPhase $inputState;
    final /* synthetic */ boolean $showLabel;
    final /* synthetic */ TextFieldTransitionScope $tmp0_rcvr;
    final /* synthetic */ long $unfocusedTextStyleColor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TextFieldTransitionScope$Transition$1(TextFieldTransitionScope textFieldTransitionScope, InputPhase inputPhase, long j6, long j10, q<? super InputPhase, ? super Composer, ? super Integer, Color> qVar, boolean z6, t<? super Float, ? super Color, ? super Color, ? super Float, ? super Composer, ? super Integer, l0> tVar, int i10) {
        super(2);
        this.$tmp0_rcvr = textFieldTransitionScope;
        this.$inputState = inputPhase;
        this.$focusedTextStyleColor = j6;
        this.$unfocusedTextStyleColor = j10;
        this.$contentColor = qVar;
        this.$showLabel = z6;
        this.$content = tVar;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        this.$tmp0_rcvr.a(this.$inputState, this.$focusedTextStyleColor, this.$unfocusedTextStyleColor, this.$contentColor, this.$showLabel, this.$content, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
