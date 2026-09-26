package androidx.compose.material;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class DrawerKt$ModalDrawer$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ long $drawerBackgroundColor;
    final /* synthetic */ q<ColumnScope, Composer, Integer, l0> $drawerContent;
    final /* synthetic */ long $drawerContentColor;
    final /* synthetic */ float $drawerElevation;
    final /* synthetic */ Shape $drawerShape;
    final /* synthetic */ DrawerState $drawerState;
    final /* synthetic */ boolean $gesturesEnabled;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ long $scrimColor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DrawerKt$ModalDrawer$2(q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar, Modifier modifier, DrawerState drawerState, boolean z6, Shape shape, float f, long j6, long j10, long j11, p<? super Composer, ? super Integer, l0> pVar, int i10, int i11) {
        super(2);
        this.$drawerContent = qVar;
        this.$modifier = modifier;
        this.$drawerState = drawerState;
        this.$gesturesEnabled = z6;
        this.$drawerShape = shape;
        this.$drawerElevation = f;
        this.$drawerBackgroundColor = j6;
        this.$drawerContentColor = j10;
        this.$scrimColor = j11;
        this.$content = pVar;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        DrawerKt.d(this.$drawerContent, this.$modifier, this.$drawerState, this.$gesturesEnabled, this.$drawerShape, this.$drawerElevation, this.$drawerBackgroundColor, this.$drawerContentColor, this.$scrimColor, this.$content, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
