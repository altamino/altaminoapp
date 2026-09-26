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

/* JADX INFO: loaded from: classes2.dex */
final class BottomSheetScaffoldKt$BottomSheetScaffold$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$changed1;
    final /* synthetic */ int $$changed2;
    final /* synthetic */ int $$default;
    final /* synthetic */ long $backgroundColor;
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
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ BottomSheetScaffoldState $scaffoldState;
    final /* synthetic */ long $sheetBackgroundColor;
    final /* synthetic */ q<ColumnScope, Composer, Integer, l0> $sheetContent;
    final /* synthetic */ long $sheetContentColor;
    final /* synthetic */ float $sheetElevation;
    final /* synthetic */ boolean $sheetGesturesEnabled;
    final /* synthetic */ float $sheetPeekHeight;
    final /* synthetic */ Shape $sheetShape;
    final /* synthetic */ q<SnackbarHostState, Composer, Integer, l0> $snackbarHost;
    final /* synthetic */ p<Composer, Integer, l0> $topBar;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BottomSheetScaffoldKt$BottomSheetScaffold$2(q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar, Modifier modifier, BottomSheetScaffoldState bottomSheetScaffoldState, p<? super Composer, ? super Integer, l0> pVar, q<? super SnackbarHostState, ? super Composer, ? super Integer, l0> qVar2, p<? super Composer, ? super Integer, l0> pVar2, int i10, boolean z6, Shape shape, float f, long j6, long j10, float f6, q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar3, boolean z10, Shape shape2, float f7, long j11, long j12, long j13, long j14, long j15, q<? super PaddingValues, ? super Composer, ? super Integer, l0> qVar4, int i11, int i12, int i13, int i14) {
        super(2);
        this.$sheetContent = qVar;
        this.$modifier = modifier;
        this.$scaffoldState = bottomSheetScaffoldState;
        this.$topBar = pVar;
        this.$snackbarHost = qVar2;
        this.$floatingActionButton = pVar2;
        this.$floatingActionButtonPosition = i10;
        this.$sheetGesturesEnabled = z6;
        this.$sheetShape = shape;
        this.$sheetElevation = f;
        this.$sheetBackgroundColor = j6;
        this.$sheetContentColor = j10;
        this.$sheetPeekHeight = f6;
        this.$drawerContent = qVar3;
        this.$drawerGesturesEnabled = z10;
        this.$drawerShape = shape2;
        this.$drawerElevation = f7;
        this.$drawerBackgroundColor = j11;
        this.$drawerContentColor = j12;
        this.$drawerScrimColor = j13;
        this.$backgroundColor = j14;
        this.$contentColor = j15;
        this.$content = qVar4;
        this.$$changed = i11;
        this.$$changed1 = i12;
        this.$$changed2 = i13;
        this.$$default = i14;
    }

    public final void a(@Nullable Composer composer, int i10) {
        BottomSheetScaffoldKt.a(this.$sheetContent, this.$modifier, this.$scaffoldState, this.$topBar, this.$snackbarHost, this.$floatingActionButton, this.$floatingActionButtonPosition, this.$sheetGesturesEnabled, this.$sheetShape, this.$sheetElevation, this.$sheetBackgroundColor, this.$sheetContentColor, this.$sheetPeekHeight, this.$drawerContent, this.$drawerGesturesEnabled, this.$drawerShape, this.$drawerElevation, this.$drawerBackgroundColor, this.$drawerContentColor, this.$drawerScrimColor, this.$backgroundColor, this.$contentColor, this.$content, composer, this.$$changed | 1, this.$$changed1, this.$$changed2, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
