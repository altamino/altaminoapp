package androidx.compose.foundation.text.selection;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import e8.l;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class SelectionMagnifierKt$animatedSelectionMagnifier$1 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ e8.a<Offset> $magnifierCenter;
    final /* synthetic */ l<e8.a<Offset>, Modifier> $platformMagnifier;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionMagnifierKt$animatedSelectionMagnifier$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.a<Offset> {
        final /* synthetic */ State<Offset> $animatedCenter$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(State<Offset> state) {
            super(0);
            this.$animatedCenter$delegate = state;
        }

        public final long b() {
            return SelectionMagnifierKt$animatedSelectionMagnifier$1.c(this.$animatedCenter$delegate);
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ Offset invoke() {
            return Offset.d(b());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SelectionMagnifierKt$animatedSelectionMagnifier$1(e8.a<Offset> aVar, l<? super e8.a<Offset>, ? extends Modifier> lVar) {
        super(3);
        this.$magnifierCenter = aVar;
        this.$platformMagnifier = lVar;
    }

    @Composable
    @NotNull
    public final Modifier b(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(759876635);
        Modifier modifierInvoke = this.$platformMagnifier.invoke(new AnonymousClass1(SelectionMagnifierKt.f(this.$magnifierCenter, composer, 0)));
        composer.Q();
        return modifierInvoke;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return b(modifier, composer, num.intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long c(State<Offset> state) {
        return state.getValue().u();
    }
}
