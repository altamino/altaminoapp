package androidx.compose.ui.semantics;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.l;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class SemanticsModifierKt$semantics$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ boolean $mergeDescendants;
    final /* synthetic */ l<SemanticsPropertyReceiver, l0> $properties;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SemanticsModifierKt$semantics$2(boolean z6, l<? super SemanticsPropertyReceiver, l0> lVar) {
        super(3);
        this.$mergeDescendants = z6;
        this.$properties = lVar;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(-140499264);
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            objH = Integer.valueOf(SemanticsModifierCore.Companion.a());
            composer.z(objH);
        }
        composer.Q();
        SemanticsModifierCore semanticsModifierCore = new SemanticsModifierCore(((Number) objH).intValue(), this.$mergeDescendants, false, this.$properties);
        composer.Q();
        return semanticsModifierCore;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
