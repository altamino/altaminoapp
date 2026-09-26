package androidx.compose.foundation.selection;

import androidx.compose.foundation.Indication;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.state.ToggleableStateKt;
import e8.a;
import e8.l;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
final class ToggleableKt$toggleable$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ l<Boolean, l0> $onValueChange;
    final /* synthetic */ Role $role;
    final /* synthetic */ boolean $value;

    /* JADX INFO: renamed from: androidx.compose.foundation.selection.ToggleableKt$toggleable$2$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements a<l0> {
        final /* synthetic */ l<Boolean, l0> $onValueChange;
        final /* synthetic */ boolean $value;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(l<? super Boolean, l0> lVar, boolean z6) {
            super(0);
            this.$onValueChange = lVar;
            this.$value = z6;
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ l0 invoke() {
            invoke2();
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.$onValueChange.invoke(Boolean.valueOf(!this.$value));
        }
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(290332169);
        ToggleableState toggleableStateA = ToggleableStateKt.a(this.$value);
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            objH = InteractionSourceKt.a();
            composer.z(objH);
        }
        composer.Q();
        Modifier modifierC = ToggleableKt.c(composed, toggleableStateA, this.$enabled, this.$role, (MutableInteractionSource) objH, (Indication) composer.x(IndicationKt.a()), new AnonymousClass2(this.$onValueChange, this.$value));
        composer.Q();
        return modifierC;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
