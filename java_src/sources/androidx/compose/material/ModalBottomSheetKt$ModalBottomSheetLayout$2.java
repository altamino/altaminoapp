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
final class ModalBottomSheetKt$ModalBottomSheetLayout$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ long $scrimColor;
    final /* synthetic */ long $sheetBackgroundColor;
    final /* synthetic */ q<ColumnScope, Composer, Integer, l0> $sheetContent;
    final /* synthetic */ long $sheetContentColor;
    final /* synthetic */ float $sheetElevation;
    final /* synthetic */ Shape $sheetShape;
    final /* synthetic */ ModalBottomSheetState $sheetState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ModalBottomSheetKt$ModalBottomSheetLayout$2(q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar, Modifier modifier, ModalBottomSheetState modalBottomSheetState, Shape shape, float f, long j6, long j10, long j11, p<? super Composer, ? super Integer, l0> pVar, int i10, int i11) {
        super(2);
        this.$sheetContent = qVar;
        this.$modifier = modifier;
        this.$sheetState = modalBottomSheetState;
        this.$sheetShape = shape;
        this.$sheetElevation = f;
        this.$sheetBackgroundColor = j6;
        this.$sheetContentColor = j10;
        this.$scrimColor = j11;
        this.$content = pVar;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        ModalBottomSheetKt.a(this.$sheetContent, this.$modifier, this.$sheetState, this.$sheetShape, this.$sheetElevation, this.$sheetBackgroundColor, this.$sheetContentColor, this.$scrimColor, this.$content, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
