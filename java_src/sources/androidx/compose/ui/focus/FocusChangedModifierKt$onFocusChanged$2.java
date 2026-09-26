package androidx.compose.ui.focus;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import e8.l;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class FocusChangedModifierKt$onFocusChanged$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ l<FocusState, l0> $onFocusChanged;

    /* JADX INFO: renamed from: androidx.compose.ui.focus.FocusChangedModifierKt$onFocusChanged$2$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<FocusState, l0> {
        final /* synthetic */ MutableState<FocusState> $focusState;
        final /* synthetic */ l<FocusState, l0> $onFocusChanged;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(MutableState<FocusState> mutableState, l<? super FocusState, l0> lVar) {
            super(1);
            this.$focusState = mutableState;
            this.$onFocusChanged = lVar;
        }

        public final void a(@NotNull FocusState it) {
            t.j(it, "it");
            if (t.e(this.$focusState.getValue(), it)) {
                return;
            }
            this.$focusState.setValue(it);
            this.$onFocusChanged.invoke(it);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(FocusState focusState) {
            a(focusState);
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    FocusChangedModifierKt$onFocusChanged$2(l<? super FocusState, l0> lVar) {
        super(3);
        this.$onFocusChanged = lVar;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(-1741761824);
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
            composer.z(objH);
        }
        composer.Q();
        Modifier modifierB = FocusEventModifierKt.b(Modifier.Companion, new AnonymousClass1((MutableState) objH, this.$onFocusChanged));
        composer.Q();
        return modifierB;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
