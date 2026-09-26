package androidx.compose.material;

import androidx.compose.animation.core.KeyframesSpec;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class ProgressIndicatorKt$LinearProgressIndicator$secondLineTail$2 extends v implements l<KeyframesSpec.KeyframesSpecConfig<Float>, l0> {
    public static final ProgressIndicatorKt$LinearProgressIndicator$secondLineTail$2 INSTANCE = new ProgressIndicatorKt$LinearProgressIndicator$secondLineTail$2();

    ProgressIndicatorKt$LinearProgressIndicator$secondLineTail$2() {
        super(1);
    }

    public final void a(@NotNull KeyframesSpec.KeyframesSpecConfig<Float> keyframes) {
        t.j(keyframes, "$this$keyframes");
        keyframes.e(1800);
        keyframes.f(keyframes.a(Float.valueOf(0.0f), 1267), ProgressIndicatorKt.SecondLineTailEasing);
        keyframes.a(Float.valueOf(1.0f), 1800);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
        a(keyframesSpecConfig);
        return l0.INSTANCE;
    }
}
