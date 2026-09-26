package androidx.compose.foundation.gestures;

import androidx.compose.runtime.State;
import e8.l;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class DraggableKt$rememberDraggableState$1$1 extends v implements l<Float, l0> {
    final /* synthetic */ State<l<Float, l0>> $onDeltaState;

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Float f) {
        invoke(f.floatValue());
        return l0.INSTANCE;
    }

    public final void invoke(float f) {
        this.$onDeltaState.getValue().invoke(Float.valueOf(f));
    }
}
