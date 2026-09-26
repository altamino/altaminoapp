package androidx.compose.foundation;

import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.Role;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class ClickableKt$combinedClickable$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ e8.a<l0> $onClick;
    final /* synthetic */ String $onClickLabel;
    final /* synthetic */ e8.a<l0> $onDoubleClick;
    final /* synthetic */ e8.a<l0> $onLongClick;
    final /* synthetic */ String $onLongClickLabel;
    final /* synthetic */ Role $role;

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(1969174843);
        Modifier.Companion companion = Modifier.Companion;
        Indication indication = (Indication) composer.x(IndicationKt.a());
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            objH = InteractionSourceKt.a();
            composer.z(objH);
        }
        composer.Q();
        Modifier modifierF = ClickableKt.f(companion, (MutableInteractionSource) objH, indication, this.$enabled, this.$onClickLabel, this.$role, this.$onLongClickLabel, this.$onLongClick, this.$onDoubleClick, this.$onClick);
        composer.Q();
        return modifierF;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
