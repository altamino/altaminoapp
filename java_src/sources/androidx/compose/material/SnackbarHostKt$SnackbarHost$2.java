package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class SnackbarHostKt$SnackbarHost$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ SnackbarHostState $hostState;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ q<SnackbarData, Composer, Integer, l0> $snackbar;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SnackbarHostKt$SnackbarHost$2(SnackbarHostState snackbarHostState, Modifier modifier, q<? super SnackbarData, ? super Composer, ? super Integer, l0> qVar, int i10, int i11) {
        super(2);
        this.$hostState = snackbarHostState;
        this.$modifier = modifier;
        this.$snackbar = qVar;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        SnackbarHostKt.b(this.$hostState, this.$modifier, this.$snackbar, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
