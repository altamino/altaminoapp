package com.plattysoft.leonids;

import a6.e;
import android.R;
import android.animation.Animator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.Timer;

/* JADX INFO: loaded from: classes5.dex */
public class d {
    private static final long TIMMERTASK_INTERVAL = 50;
    private int mActivatedParticles;
    private final ArrayList<com.plattysoft.leonids.b> mActiveParticles;
    private ValueAnimator mAnimator;
    public long mCurrentTime;
    private float mDpToPxScale;
    private c mDrawingView;
    private int mEmiterXMax;
    private int mEmiterXMin;
    private int mEmiterYMax;
    private int mEmiterYMin;
    private long mEmitingTime;
    private List<a6.b> mInitializers;
    private int mMaxParticles;
    private List<b6.b> mModifiers;
    private int[] mParentLocation;
    private ViewGroup mParentView;
    private ArrayList<com.plattysoft.leonids.b> mParticles;
    private float mParticlesPerMilisecond;
    private Random mRandom;
    private long mTimeToLive;
    private Timer mTimer;

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            d.this.m(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    class b implements Animator.AnimatorListener {
        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        b() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            d.this.f();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d.this.f();
        }
    }

    private d(Activity activity, int i10, long j6, int i11) {
        this.mActiveParticles = new ArrayList<>();
        this.mCurrentTime = 0L;
        this.mRandom = new Random();
        this.mParentView = (ViewGroup) activity.findViewById(i11);
        this.mModifiers = new ArrayList();
        this.mInitializers = new ArrayList();
        this.mMaxParticles = i10;
        this.mParticles = new ArrayList<>();
        this.mTimeToLive = j6;
        int[] iArr = new int[2];
        this.mParentLocation = iArr;
        this.mParentView.getLocationInWindow(iArr);
        this.mDpToPxScale = activity.getResources().getDisplayMetrics().xdpi / 160.0f;
    }

    private void g(View view, int i10) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        if (l(i10, 3)) {
            int i11 = iArr[0] - this.mParentLocation[0];
            this.mEmiterXMin = i11;
            this.mEmiterXMax = i11;
        } else if (l(i10, 5)) {
            int width = (iArr[0] + view.getWidth()) - this.mParentLocation[0];
            this.mEmiterXMin = width;
            this.mEmiterXMax = width;
        } else if (l(i10, 1)) {
            int width2 = (iArr[0] + (view.getWidth() / 2)) - this.mParentLocation[0];
            this.mEmiterXMin = width2;
            this.mEmiterXMax = width2;
        } else {
            int i12 = iArr[0];
            this.mEmiterXMin = i12 - this.mParentLocation[0];
            this.mEmiterXMax = (i12 + view.getWidth()) - this.mParentLocation[0];
        }
        if (l(i10, 48)) {
            int i13 = iArr[1] - this.mParentLocation[1];
            this.mEmiterYMin = i13;
            this.mEmiterYMax = i13;
        } else if (l(i10, 80)) {
            int height = (iArr[1] + view.getHeight()) - this.mParentLocation[1];
            this.mEmiterYMin = height;
            this.mEmiterYMax = height;
        } else if (l(i10, 16)) {
            int height2 = (iArr[1] + (view.getHeight() / 2)) - this.mParentLocation[1];
            this.mEmiterYMin = height2;
            this.mEmiterYMax = height2;
        } else {
            int i14 = iArr[1];
            this.mEmiterYMin = i14 - this.mParentLocation[1];
            this.mEmiterYMax = (i14 + view.getHeight()) - this.mParentLocation[1];
        }
    }

    private boolean l(int i10, int i11) {
        return (i10 & i11) == i11;
    }

    private void t(Interpolator interpolator, long j6) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, (int) j6);
        this.mAnimator = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(j6);
        this.mAnimator.addUpdateListener(new a());
        this.mAnimator.addListener(new b());
        this.mAnimator.setInterpolator(interpolator);
        this.mAnimator.start();
    }

    private void u(int i10, int i11) {
        this.mActivatedParticles = 0;
        this.mParticlesPerMilisecond = i10 / 1000.0f;
        c cVar = new c(this.mParentView.getContext());
        this.mDrawingView = cVar;
        this.mParentView.addView(cVar);
        this.mDrawingView.a(this.mActiveParticles);
        v(i10);
        long j6 = i11;
        this.mEmitingTime = j6;
        t(new LinearInterpolator(), j6 + this.mTimeToLive);
    }

    public float h(float f) {
        return f * this.mDpToPxScale;
    }

    private void c(long j6) {
        com.plattysoft.leonids.b bVarRemove = this.mParticles.remove(0);
        bVarRemove.d();
        for (int i10 = 0; i10 < this.mInitializers.size(); i10++) {
            this.mInitializers.get(i10).initParticle(bVarRemove, this.mRandom);
        }
        bVarRemove.b(this.mTimeToLive, k(this.mEmiterXMin, this.mEmiterXMax), k(this.mEmiterYMin, this.mEmiterYMax));
        bVarRemove.a(j6, this.mModifiers);
        this.mActiveParticles.add(bVarRemove);
        this.mActivatedParticles++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.mParentView.removeView(this.mDrawingView);
        this.mDrawingView = null;
        this.mParentView.postInvalidate();
        this.mParticles.addAll(this.mActiveParticles);
    }

    private int k(int i10, int i11) {
        return i10 == i11 ? i10 : this.mRandom.nextInt(i11 - i10) + i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(long j6) {
        while (true) {
            long j10 = this.mEmitingTime;
            if (((j10 <= 0 || j6 >= j10) && j10 != -1) || this.mParticles.isEmpty() || this.mActivatedParticles >= this.mParticlesPerMilisecond * j6) {
                break;
            } else {
                c(j6);
            }
        }
        synchronized (this.mActiveParticles) {
            int i10 = 0;
            while (i10 < this.mActiveParticles.size()) {
                try {
                    if (!this.mActiveParticles.get(i10).e(j6)) {
                        com.plattysoft.leonids.b bVarRemove = this.mActiveParticles.remove(i10);
                        i10--;
                        this.mParticles.add(bVarRemove);
                    }
                    i10++;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        this.mDrawingView.postInvalidate();
    }

    private void v(int i10) {
        if (i10 == 0) {
            return;
        }
        long j6 = this.mCurrentTime;
        long j10 = (j6 / 1000) / ((long) i10);
        if (j10 == 0) {
            return;
        }
        long j11 = j6 / j10;
        int i11 = 1;
        while (true) {
            long j12 = i11;
            if (j12 > j10) {
                return;
            }
            m((j12 * j11) + 1);
            i11++;
        }
    }

    public d d(a6.b bVar) {
        this.mInitializers.add(bVar);
        return this;
    }

    public d e(b6.b bVar) {
        this.mModifiers.add(bVar);
        return this;
    }

    public void i(View view, int i10, int i11) {
        j(view, 17, i10, i11);
    }

    public void n(View view, int i10) {
        o(view, i10, new LinearInterpolator());
    }

    public void o(View view, int i10, Interpolator interpolator) {
        g(view, 17);
        this.mActivatedParticles = 0;
        this.mEmitingTime = this.mTimeToLive;
        for (int i11 = 0; i11 < i10 && i11 < this.mMaxParticles; i11++) {
            c(0L);
        }
        c cVar = new c(this.mParentView.getContext());
        this.mDrawingView = cVar;
        this.mParentView.addView(cVar);
        this.mDrawingView.a(this.mActiveParticles);
        t(interpolator, this.mTimeToLive);
    }

    public d p(float f, int i10) {
        this.mInitializers.add(new a6.a(h(f), h(f), i10, i10));
        return this;
    }

    public d q(int i10, int i11) {
        this.mInitializers.add(new a6.c(i10, i11));
        return this;
    }

    public d r(float f, float f6) {
        this.mInitializers.add(new a6.d(f, f6));
        return this;
    }

    public d s(float f, float f6) {
        this.mInitializers.add(new e(f, f6));
        return this;
    }

    public void j(View view, int i10, int i11, int i12) {
        g(view, i10);
        u(i11, i12);
    }

    public d(Activity activity, int i10, int i11, long j6) {
        this(activity, i10, activity.getResources().getDrawable(i11), j6, R.id.content);
    }

    public d(Activity activity, int i10, int i11, long j6, int i12) {
        this(activity, i10, activity.getResources().getDrawable(i11), j6, i12);
    }

    public d(Activity activity, int i10, Drawable drawable, long j6) {
        this(activity, i10, drawable, j6, R.id.content);
    }

    public d(Activity activity, int i10, Drawable drawable, long j6, int i11) {
        this(activity, i10, j6, i11);
        int i12 = 0;
        if (drawable instanceof BitmapDrawable) {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            while (i12 < this.mMaxParticles) {
                this.mParticles.add(new com.plattysoft.leonids.b(bitmap));
                i12++;
            }
            return;
        }
        if (drawable instanceof AnimationDrawable) {
            AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
            while (i12 < this.mMaxParticles) {
                this.mParticles.add(new com.plattysoft.leonids.a(animationDrawable));
                i12++;
            }
        }
    }

    public d(Activity activity, int i10, Bitmap bitmap, long j6) {
        this(activity, i10, bitmap, j6, R.id.content);
    }

    public d(Activity activity, int i10, Bitmap bitmap, long j6, int i11) {
        this(activity, i10, j6, i11);
        for (int i12 = 0; i12 < this.mMaxParticles; i12++) {
            this.mParticles.add(new com.plattysoft.leonids.b(bitmap));
        }
    }

    public d(Activity activity, int i10, AnimationDrawable animationDrawable, long j6) {
        this(activity, i10, animationDrawable, j6, R.id.content);
    }

    public d(Activity activity, int i10, AnimationDrawable animationDrawable, long j6, int i11) {
        this(activity, i10, j6, i11);
        for (int i12 = 0; i12 < this.mMaxParticles; i12++) {
            this.mParticles.add(new com.plattysoft.leonids.a(animationDrawable));
        }
    }
}
