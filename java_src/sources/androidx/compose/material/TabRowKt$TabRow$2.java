package androidx.compose.material;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import e8.p;
import e8.q;
import java.util.List;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class TabRowKt$TabRow$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ p<Composer, Integer, l0> $divider;
    final /* synthetic */ q<List<TabPosition>, Composer, Integer, l0> $indicator;
    final /* synthetic */ p<Composer, Integer, l0> $tabs;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TabRowKt$TabRow$2(p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar, int i10) {
        super(2);
        this.$tabs = pVar;
        this.$divider = pVar2;
        this.$indicator = qVar;
        this.$$dirty = i10;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        Modifier modifierN = SizeKt.n(Modifier.Companion, 0.0f, 1, null);
        p<Composer, Integer, l0> pVar = this.$tabs;
        p<Composer, Integer, l0> pVar2 = this.$divider;
        q<List<TabPosition>, Composer, Integer, l0> qVar = this.$indicator;
        int i11 = this.$$dirty;
        composer.G(1618982084);
        boolean zK = composer.k(pVar) | composer.k(pVar2) | composer.k(qVar);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new TabRowKt$TabRow$2$1$1(pVar, pVar2, qVar, i11);
            composer.z(objH);
        }
        composer.Q();
        SubcomposeLayoutKt.a(modifierN, (p) objH, composer, 6, 0);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
