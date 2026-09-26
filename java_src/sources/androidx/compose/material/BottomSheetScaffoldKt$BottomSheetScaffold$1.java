package androidx.compose.material;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.graphics.Shape;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class BottomSheetScaffoldKt$BottomSheetScaffold$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty1;
    final /* synthetic */ p<Composer, Integer, l0> $child;
    final /* synthetic */ long $drawerBackgroundColor;
    final /* synthetic */ q<ColumnScope, Composer, Integer, l0> $drawerContent;
    final /* synthetic */ long $drawerContentColor;
    final /* synthetic */ float $drawerElevation;
    final /* synthetic */ boolean $drawerGesturesEnabled;
    final /* synthetic */ long $drawerScrimColor;
    final /* synthetic */ Shape $drawerShape;
    final /* synthetic */ BottomSheetScaffoldState $scaffoldState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BottomSheetScaffoldKt$BottomSheetScaffold$1(q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar, p<? super Composer, ? super Integer, l0> pVar, BottomSheetScaffoldState bottomSheetScaffoldState, boolean z6, Shape shape, float f, long j6, long j10, long j11, int i10) {
        super(2);
        this.$drawerContent = qVar;
        this.$child = pVar;
        this.$scaffoldState = bottomSheetScaffoldState;
        this.$drawerGesturesEnabled = z6;
        this.$drawerShape = shape;
        this.$drawerElevation = f;
        this.$drawerBackgroundColor = j6;
        this.$drawerContentColor = j10;
        this.$drawerScrimColor = j11;
        this.$$dirty1 = i10;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        if (this.$drawerContent == null) {
            composer.G(-249544858);
            this.$child.invoke(composer, 6);
            composer.Q();
            return;
        }
        composer.G(-249544821);
        q<ColumnScope, Composer, Integer, l0> qVar = this.$drawerContent;
        DrawerState drawerStateB = this.$scaffoldState.b();
        boolean z6 = this.$drawerGesturesEnabled;
        Shape shape = this.$drawerShape;
        float f = this.$drawerElevation;
        long j6 = this.$drawerBackgroundColor;
        long j10 = this.$drawerContentColor;
        long j11 = this.$drawerScrimColor;
        p<Composer, Integer, l0> pVar = this.$child;
        int i11 = this.$$dirty1;
        DrawerKt.d(qVar, null, drawerStateB, z6, shape, f, j6, j10, j11, pVar, composer, ((i11 >> 9) & 14) | 805306368 | ((i11 >> 3) & 7168) | ((i11 >> 3) & 57344) | ((i11 >> 3) & 458752) | ((i11 >> 3) & 3670016) | ((i11 >> 3) & 29360128) | ((i11 >> 3) & 234881024), 2);
        composer.Q();
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
