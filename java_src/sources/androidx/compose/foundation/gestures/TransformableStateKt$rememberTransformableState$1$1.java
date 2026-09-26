package androidx.compose.foundation.gestures;

import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import e8.q;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
final class TransformableStateKt$rememberTransformableState$1$1 extends v implements q<Float, Offset, Float, l0> {
    final /* synthetic */ State<q<Float, Offset, Float, l0>> $lambdaState;

    public final void a(float f, long j6, float f6) {
        this.$lambdaState.getValue().invoke(Float.valueOf(f), Offset.d(j6), Float.valueOf(f6));
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(Float f, Offset offset, Float f6) {
        a(f.floatValue(), offset.u(), f6.floatValue());
        return l0.INSTANCE;
    }
}
