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
final class ClickableKt$clickable$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ e8.a<l0> $onClick;
    final /* synthetic */ String $onClickLabel;
    final /* synthetic */ Role $role;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ClickableKt$clickable$2(boolean z6, String str, Role role, e8.a<l0> aVar) {
        super(3);
        this.$enabled = z6;
        this.$onClickLabel = str;
        this.$role = role;
        this.$onClick = aVar;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(-756081143);
        Modifier.Companion companion = Modifier.Companion;
        Indication indication = (Indication) composer.x(IndicationKt.a());
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            objH = InteractionSourceKt.a();
            composer.z(objH);
        }
        composer.Q();
        Modifier modifierB = ClickableKt.b(companion, (MutableInteractionSource) objH, indication, this.$enabled, this.$onClickLabel, this.$role, this.$onClick);
        composer.Q();
        return modifierB;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
