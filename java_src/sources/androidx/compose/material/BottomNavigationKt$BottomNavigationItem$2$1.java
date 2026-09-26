package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class BottomNavigationKt$BottomNavigationItem$2$1 extends v implements q<Float, Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ boolean $alwaysShowLabel;
    final /* synthetic */ p<Composer, Integer, l0> $icon;
    final /* synthetic */ p<Composer, Integer, l0> $styledLabel;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BottomNavigationKt$BottomNavigationItem$2$1(boolean z6, p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, int i10) {
        super(3);
        this.$alwaysShowLabel = z6;
        this.$icon = pVar;
        this.$styledLabel = pVar2;
        this.$$dirty = i10;
    }

    @ComposableTarget
    @Composable
    public final void a(float f, @Nullable Composer composer, int i10) {
        if ((i10 & 14) == 0) {
            i10 |= composer.n(f) ? 4 : 2;
        }
        if ((i10 & 91) == 18 && composer.b()) {
            composer.g();
            return;
        }
        if (this.$alwaysShowLabel) {
            f = 1.0f;
        }
        BottomNavigationKt.c(this.$icon, this.$styledLabel, f, composer, (this.$$dirty >> 9) & 14);
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(Float f, Composer composer, Integer num) {
        a(f.floatValue(), composer, num.intValue());
        return l0.INSTANCE;
    }
}
