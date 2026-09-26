package androidx.compose.ui.layout;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class LayoutNodeSubcompositionsState$subcompose$2$1$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ LayoutNodeSubcompositionsState.NodeState $nodeState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    LayoutNodeSubcompositionsState$subcompose$2$1$1(LayoutNodeSubcompositionsState.NodeState nodeState, p<? super Composer, ? super Integer, l0> pVar) {
        super(2);
        this.$nodeState = nodeState;
        this.$content = pVar;
    }

    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        boolean zA = this.$nodeState.a();
        p<Composer, Integer, l0> pVar = this.$content;
        composer.f(207, Boolean.valueOf(zA));
        boolean zM = composer.m(zA);
        if (zA) {
            pVar.invoke(composer, 0);
        } else {
            composer.a(zM);
        }
        composer.F();
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
