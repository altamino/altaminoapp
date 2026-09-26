package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class AndroidAlertDialog_androidKt$AlertDialog$1$1$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ p<Composer, Integer, l0> $confirmButton;
    final /* synthetic */ p<Composer, Integer, l0> $dismissButton;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AndroidAlertDialog_androidKt$AlertDialog$1$1$1(p<? super Composer, ? super Integer, l0> pVar, int i10, p<? super Composer, ? super Integer, l0> pVar2) {
        super(2);
        this.$dismissButton = pVar;
        this.$$dirty = i10;
        this.$confirmButton = pVar2;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        p<Composer, Integer, l0> pVar = this.$dismissButton;
        composer.G(-1046483318);
        if (pVar != null) {
            pVar.invoke(composer, Integer.valueOf((this.$$dirty >> 9) & 14));
            l0 l0Var = l0.INSTANCE;
        }
        composer.Q();
        this.$confirmButton.invoke(composer, Integer.valueOf((this.$$dirty >> 3) & 14));
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
