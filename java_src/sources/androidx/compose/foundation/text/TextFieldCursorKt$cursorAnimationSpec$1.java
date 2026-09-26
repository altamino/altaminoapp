package androidx.compose.foundation.text;

import androidx.compose.animation.core.KeyframesSpec;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class TextFieldCursorKt$cursorAnimationSpec$1 extends v implements l<KeyframesSpec.KeyframesSpecConfig<Float>, l0> {
    public static final TextFieldCursorKt$cursorAnimationSpec$1 INSTANCE = new TextFieldCursorKt$cursorAnimationSpec$1();

    TextFieldCursorKt$cursorAnimationSpec$1() {
        super(1);
    }

    public final void a(@NotNull KeyframesSpec.KeyframesSpecConfig<Float> keyframes) {
        t.j(keyframes, "$this$keyframes");
        keyframes.e(1000);
        Float fValueOf = Float.valueOf(1.0f);
        keyframes.a(fValueOf, 0);
        keyframes.a(fValueOf, 499);
        Float fValueOf2 = Float.valueOf(0.0f);
        keyframes.a(fValueOf2, 500);
        keyframes.a(fValueOf2, 999);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
        a(keyframesSpecConfig);
        return l0.INSTANCE;
    }
}
