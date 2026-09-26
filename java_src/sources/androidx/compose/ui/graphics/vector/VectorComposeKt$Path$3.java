package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.graphics.Brush;
import e8.p;
import java.util.List;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class VectorComposeKt$Path$3 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$changed1;
    final /* synthetic */ int $$default;
    final /* synthetic */ Brush $fill;
    final /* synthetic */ float $fillAlpha;
    final /* synthetic */ String $name;
    final /* synthetic */ List<PathNode> $pathData;
    final /* synthetic */ int $pathFillType;
    final /* synthetic */ Brush $stroke;
    final /* synthetic */ float $strokeAlpha;
    final /* synthetic */ int $strokeLineCap;
    final /* synthetic */ int $strokeLineJoin;
    final /* synthetic */ float $strokeLineMiter;
    final /* synthetic */ float $strokeLineWidth;
    final /* synthetic */ float $trimPathEnd;
    final /* synthetic */ float $trimPathOffset;
    final /* synthetic */ float $trimPathStart;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    VectorComposeKt$Path$3(List<? extends PathNode> list, int i10, String str, Brush brush, float f, Brush brush2, float f6, float f7, int i11, int i12, float f10, float f11, float f12, float f13, int i13, int i14, int i15) {
        super(2);
        this.$pathData = list;
        this.$pathFillType = i10;
        this.$name = str;
        this.$fill = brush;
        this.$fillAlpha = f;
        this.$stroke = brush2;
        this.$strokeAlpha = f6;
        this.$strokeLineWidth = f7;
        this.$strokeLineCap = i11;
        this.$strokeLineJoin = i12;
        this.$strokeLineMiter = f10;
        this.$trimPathStart = f11;
        this.$trimPathEnd = f12;
        this.$trimPathOffset = f13;
        this.$$changed = i13;
        this.$$changed1 = i14;
        this.$$default = i15;
    }

    public final void a(@Nullable Composer composer, int i10) {
        VectorComposeKt.b(this.$pathData, this.$pathFillType, this.$name, this.$fill, this.$fillAlpha, this.$stroke, this.$strokeAlpha, this.$strokeLineWidth, this.$strokeLineCap, this.$strokeLineJoin, this.$strokeLineMiter, this.$trimPathStart, this.$trimPathEnd, this.$trimPathOffset, composer, this.$$changed | 1, this.$$changed1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
