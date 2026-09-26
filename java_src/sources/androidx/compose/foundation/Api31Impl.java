package androidx.compose.foundation;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.EdgeEffect;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@RequiresApi
final class Api31Impl {

    @NotNull
    public static final Api31Impl INSTANCE = new Api31Impl();

    @DoNotInline
    @NotNull
    public final EdgeEffect a(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        t.j(context, "context");
        try {
            return new EdgeEffect(context, attributeSet);
        } catch (Throwable unused) {
            return new EdgeEffect(context);
        }
    }

    @DoNotInline
    public final float b(@NotNull EdgeEffect edgeEffect) {
        t.j(edgeEffect, "edgeEffect");
        try {
            return edgeEffect.getDistance();
        } catch (Throwable unused) {
            return 0.0f;
        }
    }

    @DoNotInline
    public final float c(@NotNull EdgeEffect edgeEffect, float f, float f6) {
        t.j(edgeEffect, "edgeEffect");
        try {
            return edgeEffect.onPullDistance(f, f6);
        } catch (Throwable unused) {
            edgeEffect.onPull(f, f6);
            return 0.0f;
        }
    }

    private Api31Impl() {
    }
}
