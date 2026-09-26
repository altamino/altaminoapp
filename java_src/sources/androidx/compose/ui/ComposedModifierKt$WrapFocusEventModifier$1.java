package androidx.compose.ui;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.ui.focus.FocusEventModifier;
import androidx.compose.ui.focus.FocusEventModifierLocal;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ComposedModifierKt$WrapFocusEventModifier$1 extends v implements q<FocusEventModifier, Composer, Integer, FocusEventModifierLocal> {
    public static final ComposedModifierKt$WrapFocusEventModifier$1 INSTANCE = new ComposedModifierKt$WrapFocusEventModifier$1();

    /* JADX INFO: renamed from: androidx.compose.ui.ComposedModifierKt$WrapFocusEventModifier$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.a<l0> {
        final /* synthetic */ FocusEventModifierLocal $modifier;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(FocusEventModifierLocal focusEventModifierLocal) {
            super(0);
            this.$modifier = focusEventModifierLocal;
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ l0 invoke() {
            invoke2();
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.$modifier.d();
        }
    }

    ComposedModifierKt$WrapFocusEventModifier$1() {
        super(3);
    }

    @Composable
    @NotNull
    public final FocusEventModifierLocal a(@NotNull FocusEventModifier mod, @Nullable Composer composer, int i10) {
        t.j(mod, "mod");
        composer.G(-1790596922);
        composer.G(1157296644);
        boolean zK = composer.k(mod);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new FocusEventModifierLocal(new ComposedModifierKt$WrapFocusEventModifier$1$modifier$1$1(mod));
            composer.z(objH);
        }
        composer.Q();
        FocusEventModifierLocal focusEventModifierLocal = (FocusEventModifierLocal) objH;
        EffectsKt.h(new AnonymousClass1(focusEventModifierLocal), composer, 0);
        composer.Q();
        return focusEventModifierLocal;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ FocusEventModifierLocal invoke(FocusEventModifier focusEventModifier, Composer composer, Integer num) {
        return a(focusEventModifier, composer, num.intValue());
    }
}
