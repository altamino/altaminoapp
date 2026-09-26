package e3;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.RestrictTo;
import androidx.interpolator.view.animation.FastOutLinearInInterpolator;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.interpolator.view.animation.LinearOutSlowInInterpolator;

/* JADX INFO: loaded from: classes9.dex */
@RestrictTo
public class a {
    public static final TimeInterpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    public static final TimeInterpolator FAST_OUT_SLOW_IN_INTERPOLATOR = new FastOutSlowInInterpolator();
    public static final TimeInterpolator FAST_OUT_LINEAR_IN_INTERPOLATOR = new FastOutLinearInInterpolator();
    public static final TimeInterpolator LINEAR_OUT_SLOW_IN_INTERPOLATOR = new LinearOutSlowInInterpolator();
    public static final TimeInterpolator DECELERATE_INTERPOLATOR = new DecelerateInterpolator();

    public static float a(float f, float f6, float f7) {
        return f + (f7 * (f6 - f));
    }

    public static int c(int i10, int i11, float f) {
        return i10 + Math.round(f * (i11 - i10));
    }

    public static float b(float f, float f6, @FloatRange float f7, @FloatRange float f10, @FloatRange float f11) {
        if (f11 < f7) {
            return f;
        }
        return f11 > f10 ? f6 : a(f, f6, (f11 - f7) / (f10 - f7));
    }
}
