package e3;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class i {
    private long delay;
    private long duration;

    @Nullable
    private TimeInterpolator interpolator;
    private int repeatCount;
    private int repeatMode;

    public i(long j6, long j10) {
        this.interpolator = null;
        this.repeatCount = 0;
        this.repeatMode = 1;
        this.delay = j6;
        this.duration = j10;
    }

    public long c() {
        return this.delay;
    }

    public long d() {
        return this.duration;
    }

    public int g() {
        return this.repeatCount;
    }

    public int h() {
        return this.repeatMode;
    }

    public i(long j6, long j10, @NonNull TimeInterpolator timeInterpolator) {
        this.repeatCount = 0;
        this.repeatMode = 1;
        this.delay = j6;
        this.duration = j10;
        this.interpolator = timeInterpolator;
    }

    @NonNull
    static i b(@NonNull ValueAnimator valueAnimator) {
        i iVar = new i(valueAnimator.getStartDelay(), valueAnimator.getDuration(), f(valueAnimator));
        iVar.repeatCount = valueAnimator.getRepeatCount();
        iVar.repeatMode = valueAnimator.getRepeatMode();
        return iVar;
    }

    @Nullable
    public TimeInterpolator e() {
        TimeInterpolator timeInterpolator = this.interpolator;
        return timeInterpolator != null ? timeInterpolator : a.FAST_OUT_SLOW_IN_INTERPOLATOR;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (c() == iVar.c() && d() == iVar.d() && g() == iVar.g() && h() == iVar.h()) {
            return e().getClass().equals(iVar.e().getClass());
        }
        return false;
    }

    @NonNull
    public String toString() {
        return '\n' + getClass().getName() + kotlinx.serialization.json.internal.b.BEGIN_OBJ + Integer.toHexString(System.identityHashCode(this)) + " delay: " + c() + " duration: " + d() + " interpolator: " + e().getClass() + " repeatCount: " + g() + " repeatMode: " + h() + "}\n";
    }

    private static TimeInterpolator f(@NonNull ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        if (!(interpolator instanceof AccelerateDecelerateInterpolator) && interpolator != null) {
            if (interpolator instanceof AccelerateInterpolator) {
                return a.FAST_OUT_LINEAR_IN_INTERPOLATOR;
            }
            if (interpolator instanceof DecelerateInterpolator) {
                return a.LINEAR_OUT_SLOW_IN_INTERPOLATOR;
            }
            return interpolator;
        }
        return a.FAST_OUT_SLOW_IN_INTERPOLATOR;
    }

    public void a(@NonNull Animator animator) {
        animator.setStartDelay(c());
        animator.setDuration(d());
        animator.setInterpolator(e());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(g());
            valueAnimator.setRepeatMode(h());
        }
    }

    public int hashCode() {
        return (((((((((int) (c() ^ (c() >>> 32))) * 31) + ((int) (d() ^ (d() >>> 32)))) * 31) + e().getClass().hashCode()) * 31) + g()) * 31) + h();
    }
}
