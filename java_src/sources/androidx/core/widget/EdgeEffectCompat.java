package androidx.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.EdgeEffect;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes5.dex */
public final class EdgeEffectCompat {
    private final EdgeEffect mEdgeEffect;

    @RequiresApi
    private static class Api31Impl {
        @DoNotInline
        public static EdgeEffect a(Context context, AttributeSet attributeSet) {
            try {
                return new EdgeEffect(context, attributeSet);
            } catch (Throwable unused) {
                return new EdgeEffect(context);
            }
        }

        private Api31Impl() {
        }

        @DoNotInline
        public static float b(EdgeEffect edgeEffect) {
            try {
                return edgeEffect.getDistance();
            } catch (Throwable unused) {
                return 0.0f;
            }
        }

        @DoNotInline
        public static float c(EdgeEffect edgeEffect, float f, float f6) {
            try {
                return edgeEffect.onPullDistance(f, f6);
            } catch (Throwable unused) {
                edgeEffect.onPull(f, f6);
                return 0.0f;
            }
        }
    }

    @RequiresApi
    static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        static void a(EdgeEffect edgeEffect, float f, float f6) {
            edgeEffect.onPull(f, f6);
        }
    }

    @NonNull
    public static EdgeEffect a(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        return Build.VERSION.SDK_INT >= 31 ? Api31Impl.a(context, attributeSet) : new EdgeEffect(context);
    }

    public static float d(@NonNull EdgeEffect edgeEffect) {
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.b(edgeEffect);
        }
        return 0.0f;
    }

    public static float i(@NonNull EdgeEffect edgeEffect, float f, float f6) {
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.c(edgeEffect, f, f6);
        }
        g(edgeEffect, f, f6);
        return f;
    }

    @Deprecated
    public boolean b(Canvas canvas) {
        return this.mEdgeEffect.draw(canvas);
    }

    @Deprecated
    public void c() {
        this.mEdgeEffect.finish();
    }

    @Deprecated
    public boolean e() {
        return this.mEdgeEffect.isFinished();
    }

    @Deprecated
    public boolean f(int i10) {
        this.mEdgeEffect.onAbsorb(i10);
        return true;
    }

    @Deprecated
    public boolean h(float f) {
        this.mEdgeEffect.onPull(f);
        return true;
    }

    @Deprecated
    public boolean j() {
        this.mEdgeEffect.onRelease();
        return this.mEdgeEffect.isFinished();
    }

    @Deprecated
    public void k(int i10, int i11) {
        this.mEdgeEffect.setSize(i10, i11);
    }

    @Deprecated
    public EdgeEffectCompat(Context context) {
        this.mEdgeEffect = new EdgeEffect(context);
    }

    public static void g(@NonNull EdgeEffect edgeEffect, float f, float f6) {
        Api21Impl.a(edgeEffect, f, f6);
    }
}
