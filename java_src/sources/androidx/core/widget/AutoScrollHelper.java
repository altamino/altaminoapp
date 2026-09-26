package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes7.dex */
public abstract class AutoScrollHelper implements View.OnTouchListener {
    private static final int DEFAULT_ACTIVATION_DELAY = ViewConfiguration.getTapTimeout();
    private static final int DEFAULT_EDGE_TYPE = 1;
    private static final float DEFAULT_MAXIMUM_EDGE = Float.MAX_VALUE;
    private static final int DEFAULT_MAXIMUM_VELOCITY_DIPS = 1575;
    private static final int DEFAULT_MINIMUM_VELOCITY_DIPS = 315;
    private static final int DEFAULT_RAMP_DOWN_DURATION = 500;
    private static final int DEFAULT_RAMP_UP_DURATION = 500;
    private static final float DEFAULT_RELATIVE_EDGE = 0.2f;
    private static final float DEFAULT_RELATIVE_VELOCITY = 1.0f;
    public static final int EDGE_TYPE_INSIDE = 0;
    public static final int EDGE_TYPE_INSIDE_EXTEND = 1;
    public static final int EDGE_TYPE_OUTSIDE = 2;
    private static final int HORIZONTAL = 0;
    public static final float NO_MAX = Float.MAX_VALUE;
    public static final float NO_MIN = 0.0f;
    public static final float RELATIVE_UNSPECIFIED = 0.0f;
    private static final int VERTICAL = 1;
    private int mActivationDelay;
    private boolean mAlreadyDelayed;
    boolean mAnimating;
    private int mEdgeType;
    private boolean mEnabled;
    private boolean mExclusive;
    boolean mNeedsCancel;
    boolean mNeedsReset;
    private Runnable mRunnable;
    final View mTarget;
    final ClampedScroller mScroller = new ClampedScroller();
    private final Interpolator mEdgeInterpolator = new AccelerateInterpolator();
    private float[] mRelativeEdges = {0.0f, 0.0f};
    private float[] mMaximumEdges = {Float.MAX_VALUE, Float.MAX_VALUE};
    private float[] mRelativeVelocity = {0.0f, 0.0f};
    private float[] mMinimumVelocity = {0.0f, 0.0f};
    private float[] mMaximumVelocity = {Float.MAX_VALUE, Float.MAX_VALUE};

    private static class ClampedScroller {
        private int mEffectiveRampDown;
        private int mRampDownDuration;
        private int mRampUpDuration;
        private float mStopValue;
        private float mTargetVelocityX;
        private float mTargetVelocityY;
        private long mStartTime = Long.MIN_VALUE;
        private long mStopTime = -1;
        private long mDeltaTime = 0;
        private int mDeltaX = 0;
        private int mDeltaY = 0;

        private float g(float f) {
            return ((-4.0f) * f * f) + (f * 4.0f);
        }

        public int b() {
            return this.mDeltaX;
        }

        public int c() {
            return this.mDeltaY;
        }

        public void j(int i10) {
            this.mRampDownDuration = i10;
        }

        public void k(int i10) {
            this.mRampUpDuration = i10;
        }

        public void l(float f, float f6) {
            this.mTargetVelocityX = f;
            this.mTargetVelocityY = f6;
        }

        private float e(long j6) {
            long j10 = this.mStartTime;
            if (j6 < j10) {
                return 0.0f;
            }
            long j11 = this.mStopTime;
            if (j11 < 0 || j6 < j11) {
                return AutoScrollHelper.e((j6 - j10) / this.mRampUpDuration, 0.0f, 1.0f) * 0.5f;
            }
            float f = this.mStopValue;
            return (1.0f - f) + (f * AutoScrollHelper.e((j6 - j11) / this.mEffectiveRampDown, 0.0f, 1.0f));
        }

        public void a() {
            if (this.mDeltaTime == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float fG = g(e(jCurrentAnimationTimeMillis));
            long j6 = jCurrentAnimationTimeMillis - this.mDeltaTime;
            this.mDeltaTime = jCurrentAnimationTimeMillis;
            float f = j6 * fG;
            this.mDeltaX = (int) (this.mTargetVelocityX * f);
            this.mDeltaY = (int) (f * this.mTargetVelocityY);
        }

        public int d() {
            float f = this.mTargetVelocityX;
            return (int) (f / Math.abs(f));
        }

        public int f() {
            float f = this.mTargetVelocityY;
            return (int) (f / Math.abs(f));
        }

        public boolean h() {
            return this.mStopTime > 0 && AnimationUtils.currentAnimationTimeMillis() > this.mStopTime + ((long) this.mEffectiveRampDown);
        }

        ClampedScroller() {
        }

        public void i() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.mEffectiveRampDown = AutoScrollHelper.f((int) (jCurrentAnimationTimeMillis - this.mStartTime), 0, this.mRampDownDuration);
            this.mStopValue = e(jCurrentAnimationTimeMillis);
            this.mStopTime = jCurrentAnimationTimeMillis;
        }

        public void m() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.mStartTime = jCurrentAnimationTimeMillis;
            this.mStopTime = -1L;
            this.mDeltaTime = jCurrentAnimationTimeMillis;
            this.mStopValue = 0.5f;
            this.mDeltaX = 0;
            this.mDeltaY = 0;
        }
    }

    private class ScrollAnimationRunnable implements Runnable {
        ScrollAnimationRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AutoScrollHelper autoScrollHelper = AutoScrollHelper.this;
            if (autoScrollHelper.mAnimating) {
                if (autoScrollHelper.mNeedsReset) {
                    autoScrollHelper.mNeedsReset = false;
                    autoScrollHelper.mScroller.m();
                }
                ClampedScroller clampedScroller = AutoScrollHelper.this.mScroller;
                if (clampedScroller.h() || !AutoScrollHelper.this.u()) {
                    AutoScrollHelper.this.mAnimating = false;
                    return;
                }
                AutoScrollHelper autoScrollHelper2 = AutoScrollHelper.this;
                if (autoScrollHelper2.mNeedsCancel) {
                    autoScrollHelper2.mNeedsCancel = false;
                    autoScrollHelper2.c();
                }
                clampedScroller.a();
                AutoScrollHelper.this.j(clampedScroller.b(), clampedScroller.c());
                ViewCompat.l0(AutoScrollHelper.this.mTarget, this);
            }
        }
    }

    static float e(float f, float f6, float f7) {
        if (f > f7) {
            return f7;
        }
        return f < f6 ? f6 : f;
    }

    static int f(int i10, int i11, int i12) {
        if (i10 > i12) {
            return i12;
        }
        return i10 < i11 ? i11 : i10;
    }

    private float g(float f, float f6) {
        if (f6 == 0.0f) {
            return 0.0f;
        }
        int i10 = this.mEdgeType;
        if (i10 == 0 || i10 == 1) {
            if (f < f6) {
                if (f >= 0.0f) {
                    return 1.0f - (f / f6);
                }
                if (this.mAnimating && i10 == 1) {
                    return 1.0f;
                }
            }
        } else if (i10 == 2 && f < 0.0f) {
            return f / (-f6);
        }
        return 0.0f;
    }

    private float h(float f, float f6, float f7, float f10) {
        float interpolation;
        float fE = e(f * f6, 0.0f, f7);
        float fG = g(f6 - f10, fE) - g(f10, fE);
        if (fG < 0.0f) {
            interpolation = -this.mEdgeInterpolator.getInterpolation(-fG);
        } else {
            if (fG <= 0.0f) {
                return 0.0f;
            }
            interpolation = this.mEdgeInterpolator.getInterpolation(fG);
        }
        return e(interpolation, -1.0f, 1.0f);
    }

    public abstract boolean a(int i10);

    public abstract boolean b(int i10);

    public abstract void j(int i10, int i11);

    @NonNull
    public AutoScrollHelper k(int i10) {
        this.mActivationDelay = i10;
        return this;
    }

    @NonNull
    public AutoScrollHelper l(int i10) {
        this.mEdgeType = i10;
        return this;
    }

    private float d(int i10, float f, float f6, float f7) {
        float fH = h(this.mRelativeEdges[i10], f6, this.mMaximumEdges[i10], f);
        if (fH == 0.0f) {
            return 0.0f;
        }
        float f10 = this.mRelativeVelocity[i10];
        float f11 = this.mMinimumVelocity[i10];
        float f12 = this.mMaximumVelocity[i10];
        float f13 = f10 * f7;
        return fH > 0.0f ? e(fH * f13, f11, f12) : -e((-fH) * f13, f11, f12);
    }

    private void i() {
        if (this.mNeedsReset) {
            this.mAnimating = false;
        } else {
            this.mScroller.i();
        }
    }

    private void v() {
        int i10;
        if (this.mRunnable == null) {
            this.mRunnable = new ScrollAnimationRunnable();
        }
        this.mAnimating = true;
        this.mNeedsReset = true;
        if (this.mAlreadyDelayed || (i10 = this.mActivationDelay) <= 0) {
            this.mRunnable.run();
        } else {
            ViewCompat.m0(this.mTarget, this.mRunnable, i10);
        }
        this.mAlreadyDelayed = true;
    }

    public AutoScrollHelper m(boolean z6) {
        if (this.mEnabled && !z6) {
            i();
        }
        this.mEnabled = z6;
        return this;
    }

    @NonNull
    public AutoScrollHelper n(float f, float f6) {
        float[] fArr = this.mMaximumEdges;
        fArr[0] = f;
        fArr[1] = f6;
        return this;
    }

    @NonNull
    public AutoScrollHelper o(float f, float f6) {
        float[] fArr = this.mMaximumVelocity;
        fArr[0] = f / 1000.0f;
        fArr[1] = f6 / 1000.0f;
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0016  */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.mEnabled) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                i();
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    i();
                }
            }
            return this.mExclusive && this.mAnimating;
        }
        this.mNeedsCancel = true;
        this.mAlreadyDelayed = false;
        this.mScroller.l(d(0, motionEvent.getX(), view.getWidth(), this.mTarget.getWidth()), d(1, motionEvent.getY(), view.getHeight(), this.mTarget.getHeight()));
        if (!this.mAnimating && u()) {
            v();
        }
        if (this.mExclusive) {
            return false;
        }
    }

    @NonNull
    public AutoScrollHelper p(float f, float f6) {
        float[] fArr = this.mMinimumVelocity;
        fArr[0] = f / 1000.0f;
        fArr[1] = f6 / 1000.0f;
        return this;
    }

    @NonNull
    public AutoScrollHelper q(int i10) {
        this.mScroller.j(i10);
        return this;
    }

    @NonNull
    public AutoScrollHelper r(int i10) {
        this.mScroller.k(i10);
        return this;
    }

    @NonNull
    public AutoScrollHelper s(float f, float f6) {
        float[] fArr = this.mRelativeEdges;
        fArr[0] = f;
        fArr[1] = f6;
        return this;
    }

    @NonNull
    public AutoScrollHelper t(float f, float f6) {
        float[] fArr = this.mRelativeVelocity;
        fArr[0] = f / 1000.0f;
        fArr[1] = f6 / 1000.0f;
        return this;
    }

    boolean u() {
        ClampedScroller clampedScroller = this.mScroller;
        int iF = clampedScroller.f();
        int iD = clampedScroller.d();
        return (iF != 0 && b(iF)) || (iD != 0 && a(iD));
    }

    public AutoScrollHelper(@NonNull View view) {
        this.mTarget = view;
        float f = Resources.getSystem().getDisplayMetrics().density;
        float f6 = (int) ((1575.0f * f) + 0.5f);
        o(f6, f6);
        float f7 = (int) ((f * 315.0f) + 0.5f);
        p(f7, f7);
        l(1);
        n(Float.MAX_VALUE, Float.MAX_VALUE);
        s(0.2f, 0.2f);
        t(1.0f, 1.0f);
        k(DEFAULT_ACTIVATION_DELAY);
        r(500);
        q(500);
    }

    void c() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
        this.mTarget.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }
}
