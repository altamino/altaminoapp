package androidx.compose.material;

import androidx.compose.animation.core.KeyframesSpec;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class ProgressIndicatorKt$CircularProgressIndicator$endAngle$2 extends v implements l<KeyframesSpec.KeyframesSpecConfig<Float>, l0> {
    public static final ProgressIndicatorKt$CircularProgressIndicator$endAngle$2 INSTANCE = new ProgressIndicatorKt$CircularProgressIndicator$endAngle$2();

    ProgressIndicatorKt$CircularProgressIndicator$endAngle$2() {
        super(1);
    }

    public final void a(@NotNull KeyframesSpec.KeyframesSpecConfig<Float> keyframes) {
        t.j(keyframes, "$this$keyframes");
        keyframes.e(1332);
        keyframes.f(keyframes.a(Float.valueOf(0.0f), 0), ProgressIndicatorKt.CircularEasing);
        keyframes.a(Float.valueOf(290.0f), 666);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
        a(keyframesSpecConfig);
        return l0.INSTANCE;
    }
}
