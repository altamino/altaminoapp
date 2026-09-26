package androidx.compose.ui.graphics;

import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.geometry.Offset;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@RequiresApi
final class RenderEffectVerificationHelper {

    @NotNull
    public static final RenderEffectVerificationHelper INSTANCE = new RenderEffectVerificationHelper();

    @DoNotInline
    @NotNull
    public final android.graphics.RenderEffect a(@Nullable RenderEffect renderEffect, float f, float f6, int i10) {
        if (renderEffect == null) {
            android.graphics.RenderEffect renderEffectCreateBlurEffect = android.graphics.RenderEffect.createBlurEffect(f, f6, AndroidTileMode_androidKt.a(i10));
            kotlin.jvm.internal.t.i(renderEffectCreateBlurEffect, "{\n            android.gr…)\n            )\n        }");
            return renderEffectCreateBlurEffect;
        }
        android.graphics.RenderEffect renderEffectCreateBlurEffect2 = android.graphics.RenderEffect.createBlurEffect(f, f6, renderEffect.a(), AndroidTileMode_androidKt.a(i10));
        kotlin.jvm.internal.t.i(renderEffectCreateBlurEffect2, "{\n            android.gr…)\n            )\n        }");
        return renderEffectCreateBlurEffect2;
    }

    @DoNotInline
    @NotNull
    public final android.graphics.RenderEffect b(@Nullable RenderEffect renderEffect, long j6) {
        if (renderEffect == null) {
            android.graphics.RenderEffect renderEffectCreateOffsetEffect = android.graphics.RenderEffect.createOffsetEffect(Offset.m(j6), Offset.n(j6));
            kotlin.jvm.internal.t.i(renderEffectCreateOffsetEffect, "{\n            android.gr…et.x, offset.y)\n        }");
            return renderEffectCreateOffsetEffect;
        }
        android.graphics.RenderEffect renderEffectCreateOffsetEffect2 = android.graphics.RenderEffect.createOffsetEffect(Offset.m(j6), Offset.n(j6), renderEffect.a());
        kotlin.jvm.internal.t.i(renderEffectCreateOffsetEffect2, "{\n            android.gr…)\n            )\n        }");
        return renderEffectCreateOffsetEffect2;
    }

    private RenderEffectVerificationHelper() {
    }
}
