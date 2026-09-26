package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class SnackbarKt$Snackbar$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ p<Composer, Integer, l0> $action;
    final /* synthetic */ boolean $actionOnNewLine;
    final /* synthetic */ long $backgroundColor;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ long $contentColor;
    final /* synthetic */ float $elevation;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ Shape $shape;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SnackbarKt$Snackbar$2(Modifier modifier, p<? super Composer, ? super Integer, l0> pVar, boolean z6, Shape shape, long j6, long j10, float f, p<? super Composer, ? super Integer, l0> pVar2, int i10, int i11) {
        super(2);
        this.$modifier = modifier;
        this.$action = pVar;
        this.$actionOnNewLine = z6;
        this.$shape = shape;
        this.$backgroundColor = j6;
        this.$contentColor = j10;
        this.$elevation = f;
        this.$content = pVar2;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        SnackbarKt.c(this.$modifier, this.$action, this.$actionOnNewLine, this.$shape, this.$backgroundColor, this.$contentColor, this.$elevation, this.$content, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
