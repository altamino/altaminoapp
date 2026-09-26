package androidx.compose.foundation.relocation;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final class BringIntoViewResponderKt$bringIntoViewResponder$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ BringIntoViewResponder $responder;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BringIntoViewResponderKt$bringIntoViewResponder$2(BringIntoViewResponder bringIntoViewResponder) {
        super(3);
        this.$responder = bringIntoViewResponder;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(-852052847);
        BringIntoViewParent bringIntoViewParentB = BringIntoViewResponder_androidKt.b(composer, 0);
        composer.G(1157296644);
        boolean zK = composer.k(bringIntoViewParentB);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new BringIntoViewResponderModifier(bringIntoViewParentB);
            composer.z(objH);
        }
        composer.Q();
        BringIntoViewResponderModifier bringIntoViewResponderModifier = (BringIntoViewResponderModifier) objH;
        bringIntoViewResponderModifier.n(this.$responder);
        composer.Q();
        return bringIntoViewResponderModifier;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
