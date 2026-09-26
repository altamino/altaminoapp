package androidx.compose.material;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class SurfaceKt$Surface$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ BorderStroke $border;
    final /* synthetic */ long $color;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ long $contentColor;
    final /* synthetic */ float $elevation;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ Shape $shape;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SurfaceKt$Surface$2(Modifier modifier, Shape shape, long j6, long j10, BorderStroke borderStroke, float f, p<? super Composer, ? super Integer, l0> pVar, int i10, int i11) {
        super(2);
        this.$modifier = modifier;
        this.$shape = shape;
        this.$color = j6;
        this.$contentColor = j10;
        this.$border = borderStroke;
        this.$elevation = f;
        this.$content = pVar;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        SurfaceKt.b(this.$modifier, this.$shape, this.$color, this.$contentColor, this.$border, this.$elevation, this.$content, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
