package androidx.compose.foundation;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.EdgeEffect;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class EdgeEffectCompat {

    @NotNull
    public static final EdgeEffectCompat INSTANCE = new EdgeEffectCompat();

    @NotNull
    public final EdgeEffect a(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        t.j(context, "context");
        return Build.VERSION.SDK_INT >= 31 ? Api31Impl.INSTANCE.a(context, attributeSet) : new EdgeEffect(context);
    }

    public final float b(@NotNull EdgeEffect edgeEffect) {
        t.j(edgeEffect, "<this>");
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.INSTANCE.b(edgeEffect);
        }
        return 0.0f;
    }

    public final void c(@NotNull EdgeEffect edgeEffect, int i10) {
        t.j(edgeEffect, "<this>");
        if (Build.VERSION.SDK_INT >= 31) {
            edgeEffect.onAbsorb(i10);
        } else if (edgeEffect.isFinished()) {
            edgeEffect.onAbsorb(i10);
        }
    }

    public final float d(@NotNull EdgeEffect edgeEffect, float f, float f6) {
        t.j(edgeEffect, "<this>");
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.INSTANCE.c(edgeEffect, f, f6);
        }
        edgeEffect.onPull(f, f6);
        return f;
    }

    private EdgeEffectCompat() {
    }
}
