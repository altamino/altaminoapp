package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class SnackbarHostKt$FadeInFadeOutWithScale$2$1$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ q<SnackbarData, Composer, Integer, l0> $content;
    final /* synthetic */ SnackbarData $item;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SnackbarHostKt$FadeInFadeOutWithScale$2$1$1(q<? super SnackbarData, ? super Composer, ? super Integer, l0> qVar, SnackbarData snackbarData, int i10) {
        super(2);
        this.$content = qVar;
        this.$item = snackbarData;
        this.$$dirty = i10;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        q<SnackbarData, Composer, Integer, l0> qVar = this.$content;
        SnackbarData snackbarData = this.$item;
        t.g(snackbarData);
        qVar.invoke(snackbarData, composer, Integer.valueOf((this.$$dirty >> 3) & 112));
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
