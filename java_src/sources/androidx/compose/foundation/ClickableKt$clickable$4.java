package androidx.compose.foundation;

import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import androidx.compose.ui.semantics.Role;
import e8.l;
import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class ClickableKt$clickable$4 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ Indication $indication;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ e8.a<l0> $onClick;
    final /* synthetic */ String $onClickLabel;
    final /* synthetic */ Role $role;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ClickableKt$clickable$4(e8.a<l0> aVar, boolean z6, MutableInteractionSource mutableInteractionSource, Indication indication, String str, Role role) {
        super(3);
        this.$onClick = aVar;
        this.$enabled = z6;
        this.$interactionSource = mutableInteractionSource;
        this.$indication = indication;
        this.$onClickLabel = str;
        this.$role = role;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(92076020);
        State stateN = SnapshotStateKt.n(this.$onClick, composer, 0);
        composer.G(-492369756);
        Object objH = composer.H();
        Composer.Companion companion = Composer.Companion;
        if (objH == companion.a()) {
            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
            composer.z(objH);
        }
        composer.Q();
        MutableState mutableState = (MutableState) objH;
        composer.G(1841981204);
        if (this.$enabled) {
            ClickableKt.a(this.$interactionSource, mutableState, composer, 48);
        }
        composer.Q();
        e8.a<Boolean> aVarD = Clickable_androidKt.d(composer, 0);
        composer.G(-492369756);
        Object objH2 = composer.H();
        if (objH2 == companion.a()) {
            objH2 = SnapshotStateKt__SnapshotStateKt.e(Boolean.TRUE, null, 2, null);
            composer.z(objH2);
        }
        composer.Q();
        final MutableState mutableState2 = (MutableState) objH2;
        State stateN2 = SnapshotStateKt.n(new ClickableKt$clickable$4$delayPressInteraction$1(mutableState2, aVarD), composer, 0);
        Modifier.Companion companion2 = Modifier.Companion;
        Modifier modifierC = SuspendingPointerInputFilterKt.c(companion2, this.$interactionSource, Boolean.valueOf(this.$enabled), new ClickableKt$clickable$4$gesture$1(this.$enabled, this.$interactionSource, mutableState, stateN2, stateN, null));
        composer.G(-492369756);
        Object objH3 = composer.H();
        if (objH3 == companion.a()) {
            objH3 = new ModifierLocalConsumer() { // from class: androidx.compose.foundation.ClickableKt$clickable$4$1$1
                @Override // androidx.compose.ui.Modifier
                public /* synthetic */ Modifier B(Modifier modifier) {
                    return androidx.compose.ui.a.a(this, modifier);
                }

                @Override // androidx.compose.ui.Modifier
                public /* synthetic */ Object V(Object obj, p pVar) {
                    return androidx.compose.ui.b.c(this, obj, pVar);
                }

                @Override // androidx.compose.ui.Modifier
                public /* synthetic */ Object a0(Object obj, p pVar) {
                    return androidx.compose.ui.b.b(this, obj, pVar);
                }

                @Override // androidx.compose.ui.Modifier
                public /* synthetic */ boolean d0(l lVar) {
                    return androidx.compose.ui.b.a(this, lVar);
                }

                @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
                public void z0(@NotNull ModifierLocalReadScope scope) {
                    t.j(scope, "scope");
                    mutableState2.setValue((Boolean) scope.a(ScrollableKt.e()));
                }
            };
            composer.z(objH3);
        }
        composer.Q();
        Modifier modifierG = ClickableKt.g(companion2.B((Modifier) objH3), modifierC, this.$interactionSource, this.$indication, this.$enabled, this.$onClickLabel, this.$role, null, null, this.$onClick);
        composer.Q();
        return modifierG;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
