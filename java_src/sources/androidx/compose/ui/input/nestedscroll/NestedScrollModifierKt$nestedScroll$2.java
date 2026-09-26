package androidx.compose.ui.input.nestedscroll;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.ui.Modifier;
import e8.q;
import kotlin.coroutines.h;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final class NestedScrollModifierKt$nestedScroll$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ NestedScrollConnection $connection;
    final /* synthetic */ NestedScrollDispatcher $dispatcher;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NestedScrollModifierKt$nestedScroll$2(NestedScrollDispatcher nestedScrollDispatcher, NestedScrollConnection nestedScrollConnection) {
        super(3);
        this.$dispatcher = nestedScrollDispatcher;
        this.$connection = nestedScrollConnection;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(410346167);
        composer.G(773894976);
        composer.G(-492369756);
        Object objH = composer.H();
        Composer.Companion companion = Composer.Companion;
        if (objH == companion.a()) {
            Object compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composer));
            composer.z(compositionScopedCoroutineScopeCanceller);
            objH = compositionScopedCoroutineScopeCanceller;
        }
        composer.Q();
        o0 o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
        composer.Q();
        NestedScrollDispatcher nestedScrollDispatcher = this.$dispatcher;
        composer.G(100475938);
        if (nestedScrollDispatcher == null) {
            composer.G(-492369756);
            Object objH2 = composer.H();
            if (objH2 == companion.a()) {
                objH2 = new NestedScrollDispatcher();
                composer.z(objH2);
            }
            composer.Q();
            nestedScrollDispatcher = (NestedScrollDispatcher) objH2;
        }
        composer.Q();
        NestedScrollConnection nestedScrollConnection = this.$connection;
        composer.G(1618982084);
        boolean zK = composer.k(nestedScrollConnection) | composer.k(nestedScrollDispatcher) | composer.k(o0VarA);
        Object objH3 = composer.H();
        if (zK || objH3 == companion.a()) {
            nestedScrollDispatcher.h(o0VarA);
            objH3 = new NestedScrollModifierLocal(nestedScrollDispatcher, nestedScrollConnection);
            composer.z(objH3);
        }
        composer.Q();
        NestedScrollModifierLocal nestedScrollModifierLocal = (NestedScrollModifierLocal) objH3;
        composer.Q();
        return nestedScrollModifierLocal;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
