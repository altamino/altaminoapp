package androidx.compose.foundation;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class IndicationKt$indication$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ Indication $indication;
    final /* synthetic */ InteractionSource $interactionSource;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    IndicationKt$indication$2(Indication indication, InteractionSource interactionSource) {
        super(3);
        this.$indication = indication;
        this.$interactionSource = interactionSource;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(-353972293);
        Indication indication = this.$indication;
        if (indication == null) {
            indication = NoIndication.INSTANCE;
        }
        IndicationInstance indicationInstanceA = indication.a(this.$interactionSource, composer, 0);
        composer.G(1157296644);
        boolean zK = composer.k(indicationInstanceA);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new IndicationModifier(indicationInstanceA);
            composer.z(objH);
        }
        composer.Q();
        IndicationModifier indicationModifier = (IndicationModifier) objH;
        composer.Q();
        return indicationModifier;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
