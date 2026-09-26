package androidx.vectordrawable.graphics.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public class AnimationUtilsCompat {
    private AnimationUtilsCompat() {
    }

    public static Interpolator a(Context context, int i10) throws Resources.NotFoundException {
        return AnimationUtils.loadInterpolator(context, i10);
    }
}
