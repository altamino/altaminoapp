package androidx.compose.foundation;

import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
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
final class ClickableKt$combinedClickable$4 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ Indication $indication;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ e8.a<l0> $onClick;
    final /* synthetic */ String $onClickLabel;
    final /* synthetic */ e8.a<l0> $onDoubleClick;
    final /* synthetic */ e8.a<l0> $onLongClick;
    final /* synthetic */ String $onLongClickLabel;
    final /* synthetic */ Role $role;

    /* JADX INFO: renamed from: androidx.compose.foundation.ClickableKt$combinedClickable$4$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<DisposableEffectScope, DisposableEffectResult> {
        final /* synthetic */ MutableInteractionSource $interactionSource;
        final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(MutableState<PressInteraction.Press> mutableState, MutableInteractionSource mutableInteractionSource) {
            super(1);
            this.$pressedInteraction = mutableState;
            this.$interactionSource = mutableInteractionSource;
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
            t.j(DisposableEffect, "$this$DisposableEffect");
            final MutableState<PressInteraction.Press> mutableState = this.$pressedInteraction;
            final MutableInteractionSource mutableInteractionSource = this.$interactionSource;
            return new DisposableEffectResult() { // from class: androidx.compose.foundation.ClickableKt$combinedClickable$4$1$invoke$$inlined$onDispose$1
                @Override // androidx.compose.runtime.DisposableEffectResult
                public void t() {
                    PressInteraction.Press press = (PressInteraction.Press) mutableState.getValue();
                    if (press != null) {
                        mutableInteractionSource.a(new PressInteraction.Cancel(press));
                        mutableState.setValue(null);
                    }
                }
            };
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ClickableKt$combinedClickable$4(e8.a<l0> aVar, e8.a<l0> aVar2, e8.a<l0> aVar3, boolean z6, MutableInteractionSource mutableInteractionSource, Indication indication, String str, Role role, String str2) {
        super(3);
        this.$onClick = aVar;
        this.$onLongClick = aVar2;
        this.$onDoubleClick = aVar3;
        this.$enabled = z6;
        this.$interactionSource = mutableInteractionSource;
        this.$indication = indication;
        this.$onClickLabel = str;
        this.$role = role;
        this.$onLongClickLabel = str2;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(1841718000);
        State stateN = SnapshotStateKt.n(this.$onClick, composer, 0);
        State stateN2 = SnapshotStateKt.n(this.$onLongClick, composer, 0);
        State stateN3 = SnapshotStateKt.n(this.$onDoubleClick, composer, 0);
        boolean z6 = this.$onLongClick != null;
        boolean z10 = this.$onDoubleClick != null;
        composer.G(-492369756);
        Object objH = composer.H();
        Composer.Companion companion = Composer.Companion;
        if (objH == companion.a()) {
            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
            composer.z(objH);
        }
        composer.Q();
        MutableState mutableState = (MutableState) objH;
        composer.G(1321106866);
        if (this.$enabled) {
            EffectsKt.a(Boolean.valueOf(z6), new AnonymousClass1(mutableState, this.$interactionSource), composer, 0);
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
        State stateN4 = SnapshotStateKt.n(new ClickableKt$combinedClickable$4$delayPressInteraction$1(mutableState2, aVarD), composer, 0);
        Modifier.Companion companion2 = Modifier.Companion;
        Modifier modifierD = SuspendingPointerInputFilterKt.d(companion2, new Object[]{this.$interactionSource, Boolean.valueOf(z6), Boolean.valueOf(z10), Boolean.valueOf(this.$enabled)}, new ClickableKt$combinedClickable$4$gesture$1(z10, this.$enabled, z6, stateN3, stateN2, this.$interactionSource, mutableState, stateN4, stateN, null));
        composer.G(-492369756);
        Object objH3 = composer.H();
        if (objH3 == companion.a()) {
            objH3 = new ModifierLocalConsumer() { // from class: androidx.compose.foundation.ClickableKt$combinedClickable$4$2$1
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
        Modifier modifierG = ClickableKt.g(companion2.B((Modifier) objH3), modifierD, this.$interactionSource, this.$indication, this.$enabled, this.$onClickLabel, this.$role, this.$onLongClickLabel, this.$onLongClick, this.$onClick);
        composer.Q();
        return modifierG;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
