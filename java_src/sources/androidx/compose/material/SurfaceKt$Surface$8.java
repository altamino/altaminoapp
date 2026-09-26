package androidx.compose.material;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import e8.a;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class SurfaceKt$Surface$8 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$changed1;
    final /* synthetic */ int $$default;
    final /* synthetic */ BorderStroke $border;
    final /* synthetic */ long $color;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ long $contentColor;
    final /* synthetic */ float $elevation;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ a<l0> $onClick;
    final /* synthetic */ boolean $selected;
    final /* synthetic */ Shape $shape;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SurfaceKt$Surface$8(boolean z6, a<l0> aVar, Modifier modifier, boolean z10, Shape shape, long j6, long j10, BorderStroke borderStroke, float f, MutableInteractionSource mutableInteractionSource, p<? super Composer, ? super Integer, l0> pVar, int i10, int i11, int i12) {
        super(2);
        this.$selected = z6;
        this.$onClick = aVar;
        this.$modifier = modifier;
        this.$enabled = z10;
        this.$shape = shape;
        this.$color = j6;
        this.$contentColor = j10;
        this.$border = borderStroke;
        this.$elevation = f;
        this.$interactionSource = mutableInteractionSource;
        this.$content = pVar;
        this.$$changed = i10;
        this.$$changed1 = i11;
        this.$$default = i12;
    }

    public final void a(@Nullable Composer composer, int i10) {
        SurfaceKt.d(this.$selected, this.$onClick, this.$modifier, this.$enabled, this.$shape, this.$color, this.$contentColor, this.$border, this.$elevation, this.$interactionSource, this.$content, composer, this.$$changed | 1, this.$$changed1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
