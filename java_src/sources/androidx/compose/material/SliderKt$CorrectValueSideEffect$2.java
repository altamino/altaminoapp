package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import e8.l;
import e8.p;
import j8.e;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class SliderKt$CorrectValueSideEffect$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ l<Float, Float> $scaleToOffset;
    final /* synthetic */ e<Float> $trackRange;
    final /* synthetic */ float $value;
    final /* synthetic */ e<Float> $valueRange;
    final /* synthetic */ MutableState<Float> $valueState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SliderKt$CorrectValueSideEffect$2(l<? super Float, Float> lVar, e<Float> eVar, e<Float> eVar2, MutableState<Float> mutableState, float f, int i10) {
        super(2);
        this.$scaleToOffset = lVar;
        this.$valueRange = eVar;
        this.$trackRange = eVar2;
        this.$valueState = mutableState;
        this.$value = f;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        SliderKt.a(this.$scaleToOffset, this.$valueRange, this.$trackRange, this.$valueState, this.$value, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
