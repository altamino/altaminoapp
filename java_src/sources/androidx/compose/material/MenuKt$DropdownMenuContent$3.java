package androidx.compose.material;

import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.TransformOrigin;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class MenuKt$DropdownMenuContent$3 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ q<ColumnScope, Composer, Integer, l0> $content;
    final /* synthetic */ MutableTransitionState<Boolean> $expandedStates;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ MutableState<TransformOrigin> $transformOriginState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    MenuKt$DropdownMenuContent$3(MutableTransitionState<Boolean> mutableTransitionState, MutableState<TransformOrigin> mutableState, Modifier modifier, q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar, int i10, int i11) {
        super(2);
        this.$expandedStates = mutableTransitionState;
        this.$transformOriginState = mutableState;
        this.$modifier = modifier;
        this.$content = qVar;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        MenuKt.a(this.$expandedStates, this.$transformOriginState, this.$modifier, this.$content, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
