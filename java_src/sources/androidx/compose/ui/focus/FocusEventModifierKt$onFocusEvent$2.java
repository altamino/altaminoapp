package androidx.compose.ui.focus;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.ui.Modifier;
import e8.l;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class FocusEventModifierKt$onFocusEvent$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ l<FocusState, l0> $onFocusEvent;

    /* JADX INFO: renamed from: androidx.compose.ui.focus.FocusEventModifierKt$onFocusEvent$2$1, reason: invalid class name */
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    FocusEventModifierKt$onFocusEvent$2(l<? super FocusState, l0> lVar) {
        super(3);
        this.$onFocusEvent = lVar;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(607036704);
        l<FocusState, l0> lVar = this.$onFocusEvent;
        composer.G(1157296644);
        boolean zK = composer.k(lVar);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new FocusEventModifierLocal(lVar);
            composer.z(objH);
        }
        composer.Q();
        FocusEventModifierLocal focusEventModifierLocal = (FocusEventModifierLocal) objH;
        EffectsKt.h(new AnonymousClass1(focusEventModifierLocal), composer, 0);
        composer.Q();
        return focusEventModifierLocal;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
