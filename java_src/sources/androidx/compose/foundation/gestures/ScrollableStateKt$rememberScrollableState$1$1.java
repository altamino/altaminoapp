package androidx.compose.foundation.gestures;

import androidx.compose.runtime.State;
import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
final class ScrollableStateKt$rememberScrollableState$1$1 extends v implements l<Float, Float> {
    final /* synthetic */ State<l<Float, Float>> $lambdaState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ScrollableStateKt$rememberScrollableState$1$1(State<? extends l<? super Float, Float>> state) {
        super(1);
        this.$lambdaState = state;
    }

    @NotNull
    public final Float invoke(float f) {
        return this.$lambdaState.getValue().invoke(Float.valueOf(f));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Float invoke(Float f) {
        return invoke(f.floatValue());
    }
}
