package androidx.compose.material;

import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.TransformOrigin;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class AndroidMenu_androidKt$DropdownMenu$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ q<ColumnScope, Composer, Integer, l0> $content;
    final /* synthetic */ MutableTransitionState<Boolean> $expandedStates;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ MutableState<TransformOrigin> $transformOriginState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AndroidMenu_androidKt$DropdownMenu$1(MutableTransitionState<Boolean> mutableTransitionState, MutableState<TransformOrigin> mutableState, Modifier modifier, q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar, int i10) {
        super(2);
        this.$expandedStates = mutableTransitionState;
        this.$transformOriginState = mutableState;
        this.$modifier = modifier;
        this.$content = qVar;
        this.$$dirty = i10;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        MutableTransitionState<Boolean> mutableTransitionState = this.$expandedStates;
        MutableState<TransformOrigin> mutableState = this.$transformOriginState;
        Modifier modifier = this.$modifier;
        q<ColumnScope, Composer, Integer, l0> qVar = this.$content;
        int i11 = MutableTransitionState.$stable | 48;
        int i12 = this.$$dirty;
        MenuKt.a(mutableTransitionState, mutableState, modifier, qVar, composer, i11 | (i12 & 896) | ((i12 >> 6) & 7168), 0);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
