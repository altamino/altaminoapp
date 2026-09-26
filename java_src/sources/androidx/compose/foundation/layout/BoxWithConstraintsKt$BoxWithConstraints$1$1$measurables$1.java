package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
final class BoxWithConstraintsKt$BoxWithConstraints$1$1$measurables$1 extends v implements e8.p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ q<BoxWithConstraintsScope, Composer, Integer, l0> $content;
    final /* synthetic */ BoxWithConstraintsScopeImpl $scope;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BoxWithConstraintsKt$BoxWithConstraints$1$1$measurables$1(q<? super BoxWithConstraintsScope, ? super Composer, ? super Integer, l0> qVar, BoxWithConstraintsScopeImpl boxWithConstraintsScopeImpl, int i10) {
        super(2);
        this.$content = qVar;
        this.$scope = boxWithConstraintsScopeImpl;
        this.$$dirty = i10;
    }

    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            this.$content.invoke(this.$scope, composer, Integer.valueOf((this.$$dirty >> 6) & 112));
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
