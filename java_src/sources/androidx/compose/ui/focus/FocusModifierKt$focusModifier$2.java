package androidx.compose.ui.focus;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.ui.Modifier;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
final class FocusModifierKt$focusModifier$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    public static final FocusModifierKt$focusModifier$2 INSTANCE = new FocusModifierKt$focusModifier$2();

    /* JADX INFO: renamed from: androidx.compose.ui.focus.FocusModifierKt$focusModifier$2$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.a<l0> {
        final /* synthetic */ FocusModifier $focusModifier;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(FocusModifier focusModifier) {
            super(0);
            this.$focusModifier = focusModifier;
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ l0 invoke() {
            invoke2();
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            FocusTransactionsKt.k(this.$focusModifier);
        }
    }

    FocusModifierKt$focusModifier$2() {
        super(3);
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(-1810534337);
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            objH = new FocusModifier(FocusStateImpl.Inactive, null, 2, null);
            composer.z(objH);
        }
        composer.Q();
        FocusModifier focusModifier = (FocusModifier) objH;
        EffectsKt.h(new AnonymousClass1(focusModifier), composer, 0);
        Modifier modifierB = FocusModifierKt.b(composed, focusModifier);
        composer.Q();
        return modifierB;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
