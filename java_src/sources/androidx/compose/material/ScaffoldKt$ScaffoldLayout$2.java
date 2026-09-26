package androidx.compose.material;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ScaffoldKt$ScaffoldLayout$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ p<Composer, Integer, l0> $bottomBar;
    final /* synthetic */ q<PaddingValues, Composer, Integer, l0> $content;
    final /* synthetic */ p<Composer, Integer, l0> $fab;
    final /* synthetic */ int $fabPosition;
    final /* synthetic */ boolean $isFabDocked;
    final /* synthetic */ p<Composer, Integer, l0> $snackbar;
    final /* synthetic */ p<Composer, Integer, l0> $topBar;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ScaffoldKt$ScaffoldLayout$2(boolean z6, int i10, p<? super Composer, ? super Integer, l0> pVar, q<? super PaddingValues, ? super Composer, ? super Integer, l0> qVar, p<? super Composer, ? super Integer, l0> pVar2, p<? super Composer, ? super Integer, l0> pVar3, p<? super Composer, ? super Integer, l0> pVar4, int i11) {
        super(2);
        this.$isFabDocked = z6;
        this.$fabPosition = i10;
        this.$topBar = pVar;
        this.$content = qVar;
        this.$snackbar = pVar2;
        this.$fab = pVar3;
        this.$bottomBar = pVar4;
        this.$$changed = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        ScaffoldKt.b(this.$isFabDocked, this.$fabPosition, this.$topBar, this.$content, this.$snackbar, this.$fab, this.$bottomBar, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
