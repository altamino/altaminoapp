package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class BackdropScaffoldKt$BackdropScaffold$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$changed1;
    final /* synthetic */ int $$default;
    final /* synthetic */ p<Composer, Integer, l0> $appBar;
    final /* synthetic */ long $backLayerBackgroundColor;
    final /* synthetic */ p<Composer, Integer, l0> $backLayerContent;
    final /* synthetic */ long $backLayerContentColor;
    final /* synthetic */ long $frontLayerBackgroundColor;
    final /* synthetic */ p<Composer, Integer, l0> $frontLayerContent;
    final /* synthetic */ long $frontLayerContentColor;
    final /* synthetic */ float $frontLayerElevation;
    final /* synthetic */ long $frontLayerScrimColor;
    final /* synthetic */ Shape $frontLayerShape;
    final /* synthetic */ boolean $gesturesEnabled;
    final /* synthetic */ float $headerHeight;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ float $peekHeight;
    final /* synthetic */ boolean $persistentAppBar;
    final /* synthetic */ BackdropScaffoldState $scaffoldState;
    final /* synthetic */ q<SnackbarHostState, Composer, Integer, l0> $snackbarHost;
    final /* synthetic */ boolean $stickyFrontLayer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BackdropScaffoldKt$BackdropScaffold$2(p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, p<? super Composer, ? super Integer, l0> pVar3, Modifier modifier, BackdropScaffoldState backdropScaffoldState, boolean z6, float f, float f6, boolean z10, boolean z11, long j6, long j10, Shape shape, float f7, long j11, long j12, long j13, q<? super SnackbarHostState, ? super Composer, ? super Integer, l0> qVar, int i10, int i11, int i12) {
        super(2);
        this.$appBar = pVar;
        this.$backLayerContent = pVar2;
        this.$frontLayerContent = pVar3;
        this.$modifier = modifier;
        this.$scaffoldState = backdropScaffoldState;
        this.$gesturesEnabled = z6;
        this.$peekHeight = f;
        this.$headerHeight = f6;
        this.$persistentAppBar = z10;
        this.$stickyFrontLayer = z11;
        this.$backLayerBackgroundColor = j6;
        this.$backLayerContentColor = j10;
        this.$frontLayerShape = shape;
        this.$frontLayerElevation = f7;
        this.$frontLayerBackgroundColor = j11;
        this.$frontLayerContentColor = j12;
        this.$frontLayerScrimColor = j13;
        this.$snackbarHost = qVar;
        this.$$changed = i10;
        this.$$changed1 = i11;
        this.$$default = i12;
    }

    public final void a(@Nullable Composer composer, int i10) {
        BackdropScaffoldKt.c(this.$appBar, this.$backLayerContent, this.$frontLayerContent, this.$modifier, this.$scaffoldState, this.$gesturesEnabled, this.$peekHeight, this.$headerHeight, this.$persistentAppBar, this.$stickyFrontLayer, this.$backLayerBackgroundColor, this.$backLayerContentColor, this.$frontLayerShape, this.$frontLayerElevation, this.$frontLayerBackgroundColor, this.$frontLayerContentColor, this.$frontLayerScrimColor, this.$snackbarHost, composer, this.$$changed | 1, this.$$changed1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
