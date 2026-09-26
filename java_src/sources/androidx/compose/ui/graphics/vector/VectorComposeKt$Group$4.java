package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.Composer;
import e8.p;
import java.util.List;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class VectorComposeKt$Group$4 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ List<PathNode> $clipPathData;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ String $name;
    final /* synthetic */ float $pivotX;
    final /* synthetic */ float $pivotY;
    final /* synthetic */ float $rotation;
    final /* synthetic */ float $scaleX;
    final /* synthetic */ float $scaleY;
    final /* synthetic */ float $translationX;
    final /* synthetic */ float $translationY;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    VectorComposeKt$Group$4(String str, float f, float f6, float f7, float f10, float f11, float f12, float f13, List<? extends PathNode> list, p<? super Composer, ? super Integer, l0> pVar, int i10, int i11) {
        super(2);
        this.$name = str;
        this.$rotation = f;
        this.$pivotX = f6;
        this.$pivotY = f7;
        this.$scaleX = f10;
        this.$scaleY = f11;
        this.$translationX = f12;
        this.$translationY = f13;
        this.$clipPathData = list;
        this.$content = pVar;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        VectorComposeKt.a(this.$name, this.$rotation, this.$pivotX, this.$pivotY, this.$scaleX, this.$scaleY, this.$translationX, this.$translationY, this.$clipPathData, this.$content, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
