package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class ClickableKt$PressedInteractionSourceDisposableEffect$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ClickableKt$PressedInteractionSourceDisposableEffect$2(MutableInteractionSource mutableInteractionSource, MutableState<PressInteraction.Press> mutableState, int i10) {
        super(2);
        this.$interactionSource = mutableInteractionSource;
        this.$pressedInteraction = mutableState;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        ClickableKt.a(this.$interactionSource, this.$pressedInteraction, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
