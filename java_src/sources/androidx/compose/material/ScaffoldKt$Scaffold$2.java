package androidx.compose.material;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ScaffoldKt$Scaffold$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$changed1;
    final /* synthetic */ int $$default;
    final /* synthetic */ long $backgroundColor;
    final /* synthetic */ p<Composer, Integer, l0> $bottomBar;
    final /* synthetic */ q<PaddingValues, Composer, Integer, l0> $content;
    final /* synthetic */ long $contentColor;
    final /* synthetic */ long $drawerBackgroundColor;
    final /* synthetic */ q<ColumnScope, Composer, Integer, l0> $drawerContent;
    final /* synthetic */ long $drawerContentColor;
    final /* synthetic */ float $drawerElevation;
    final /* synthetic */ boolean $drawerGesturesEnabled;
    final /* synthetic */ long $drawerScrimColor;
    final /* synthetic */ Shape $drawerShape;
    final /* synthetic */ p<Composer, Integer, l0> $floatingActionButton;
    final /* synthetic */ int $floatingActionButtonPosition;
    final /* synthetic */ boolean $isFloatingActionButtonDocked;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ ScaffoldState $scaffoldState;
    final /* synthetic */ q<SnackbarHostState, Composer, Integer, l0> $snackbarHost;
    final /* synthetic */ p<Composer, Integer, l0> $topBar;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ScaffoldKt$Scaffold$2(Modifier modifier, ScaffoldState scaffoldState, p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, q<? super SnackbarHostState, ? super Composer, ? super Integer, l0> qVar, p<? super Composer, ? super Integer, l0> pVar3, int i10, boolean z6, q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar2, boolean z10, Shape shape, float f, long j6, long j10, long j11, long j12, long j13, q<? super PaddingValues, ? super Composer, ? super Integer, l0> qVar3, int i11, int i12, int i13) {
        super(2);
        this.$modifier = modifier;
        this.$scaffoldState = scaffoldState;
        this.$topBar = pVar;
        this.$bottomBar = pVar2;
        this.$snackbarHost = qVar;
        this.$floatingActionButton = pVar3;
        this.$floatingActionButtonPosition = i10;
        this.$isFloatingActionButtonDocked = z6;
        this.$drawerContent = qVar2;
        this.$drawerGesturesEnabled = z10;
        this.$drawerShape = shape;
        this.$drawerElevation = f;
        this.$drawerBackgroundColor = j6;
        this.$drawerContentColor = j10;
        this.$drawerScrimColor = j11;
        this.$backgroundColor = j12;
        this.$contentColor = j13;
        this.$content = qVar3;
        this.$$changed = i11;
        this.$$changed1 = i12;
        this.$$default = i13;
    }

    public final void a(@Nullable Composer composer, int i10) {
        ScaffoldKt.a(this.$modifier, this.$scaffoldState, this.$topBar, this.$bottomBar, this.$snackbarHost, this.$floatingActionButton, this.$floatingActionButtonPosition, this.$isFloatingActionButtonDocked, this.$drawerContent, this.$drawerGesturesEnabled, this.$drawerShape, this.$drawerElevation, this.$drawerBackgroundColor, this.$drawerContentColor, this.$drawerScrimColor, this.$backgroundColor, this.$contentColor, this.$content, composer, this.$$changed | 1, this.$$changed1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
