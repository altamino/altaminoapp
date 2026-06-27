package com.plattysoft.leonids;

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
import com.plattysoft.leonids.initializers.AccelerationInitializer;
import com.plattysoft.leonids.initializers.ParticleInitializer;
import com.plattysoft.leonids.initializers.RotationInitiazer;
import com.plattysoft.leonids.initializers.RotationSpeedInitializer;
import com.plattysoft.leonids.initializers.ScaleInitializer;
import com.plattysoft.leonids.modifiers.ParticleModifier;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.Timer;

/* loaded from: classes3.dex */
public class ParticleSystem {
    private static final long TIMMERTASK_INTERVAL = 50;
    private int mActivatedParticles;
    private final ArrayList<Particle> mActiveParticles;
    private ValueAnimator mAnimator;
    public long mCurrentTime;
    private float mDpToPxScale;
    private ParticleField mDrawingView;
    private int mEmiterXMax;
    private int mEmiterXMin;
    private int mEmiterYMax;
    private int mEmiterYMin;
    private long mEmitingTime;
    private List<ParticleInitializer> mInitializers;
    private int mMaxParticles;
    private List<ParticleModifier> mModifiers;
    private int[] mParentLocation;
    private ViewGroup mParentView;
    private ArrayList<Particle> mParticles;
    private float mParticlesPerMilisecond;
    private Random mRandom;
    private long mTimeToLive;
    private Timer mTimer;

    private boolean hasGravity(int i, int i2) {
        return (i & i2) == i2;
    }

    private ParticleSystem(Activity activity, int i, long j, int i2) {
        this.mActiveParticles = new ArrayList<>();
        this.mCurrentTime = 0L;
        this.mRandom = new Random();
        this.mParentView = (ViewGroup) activity.findViewById(i2);
        this.mModifiers = new ArrayList();
        this.mInitializers = new ArrayList();
        this.mMaxParticles = i;
        this.mParticles = new ArrayList<>();
        this.mTimeToLive = j;
        this.mParentLocation = new int[2];
        this.mParentView.getLocationInWindow(this.mParentLocation);
        this.mDpToPxScale = activity.getResources().getDisplayMetrics().xdpi / 160.0f;
    }

    public ParticleSystem(Activity activity, int i, int i2, long j) {
        this(activity, i, activity.getResources().getDrawable(i2), j, R.id.content);
    }

    public ParticleSystem(Activity activity, int i, int i2, long j, int i3) {
        this(activity, i, activity.getResources().getDrawable(i2), j, i3);
    }

    public ParticleSystem(Activity activity, int i, Drawable drawable, long j) {
        this(activity, i, drawable, j, R.id.content);
    }

    public ParticleSystem(Activity activity, int i, Drawable drawable, long j, int i2) {
        this(activity, i, j, i2);
        int i3 = 0;
        if (drawable instanceof BitmapDrawable) {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            while (i3 < this.mMaxParticles) {
                this.mParticles.add(new Particle(bitmap));
                i3++;
            }
            return;
        }
        if (drawable instanceof AnimationDrawable) {
            AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
            while (i3 < this.mMaxParticles) {
                this.mParticles.add(new AnimatedParticle(animationDrawable));
                i3++;
            }
        }
    }

    public float dpToPx(float f) {
        return f * this.mDpToPxScale;
    }

    public ParticleSystem(Activity activity, int i, Bitmap bitmap, long j) {
        this(activity, i, bitmap, j, R.id.content);
    }

    public ParticleSystem(Activity activity, int i, Bitmap bitmap, long j, int i2) {
        this(activity, i, j, i2);
        for (int i3 = 0; i3 < this.mMaxParticles; i3++) {
            this.mParticles.add(new Particle(bitmap));
        }
    }

    public ParticleSystem(Activity activity, int i, AnimationDrawable animationDrawable, long j) {
        this(activity, i, animationDrawable, j, R.id.content);
    }

    public ParticleSystem(Activity activity, int i, AnimationDrawable animationDrawable, long j, int i2) {
        this(activity, i, j, i2);
        for (int i3 = 0; i3 < this.mMaxParticles; i3++) {
            this.mParticles.add(new AnimatedParticle(animationDrawable));
        }
    }

    public ParticleSystem addModifier(ParticleModifier particleModifier) {
        this.mModifiers.add(particleModifier);
        return this;
    }

    public ParticleSystem addInitializer(ParticleInitializer particleInitializer) {
        this.mInitializers.add(particleInitializer);
        return this;
    }

    public ParticleSystem setInitialRotationRange(int i, int i2) {
        this.mInitializers.add(new RotationInitiazer(i, i2));
        return this;
    }

    public ParticleSystem setScaleRange(float f, float f2) {
        this.mInitializers.add(new ScaleInitializer(f, f2));
        return this;
    }

    public ParticleSystem setRotationSpeedRange(float f, float f2) {
        this.mInitializers.add(new RotationSpeedInitializer(f, f2));
        return this;
    }

    public ParticleSystem setAcceleration(float f, int i) {
        this.mInitializers.add(new AccelerationInitializer(dpToPx(f), dpToPx(f), i, i));
        return this;
    }

    public void emitWithGravity(View view, int i, int i2, int i3) {
        configureEmiter(view, i);
        startEmiting(i2, i3);
    }

    public void emit(View view, int i, int i2) {
        emitWithGravity(view, 17, i, i2);
    }

    private void startEmiting(int i, int i2) {
        this.mActivatedParticles = 0;
        this.mParticlesPerMilisecond = i / 1000.0f;
        this.mDrawingView = new ParticleField(this.mParentView.getContext());
        this.mParentView.addView(this.mDrawingView);
        this.mDrawingView.setParticles(this.mActiveParticles);
        updateParticlesBeforeStartTime(i);
        long j = i2;
        this.mEmitingTime = j;
        startAnimator(new LinearInterpolator(), j + this.mTimeToLive);
    }

    public void oneShot(View view, int i) {
        oneShot(view, i, new LinearInterpolator());
    }

    public void oneShot(View view, int i, Interpolator interpolator) {
        configureEmiter(view, 17);
        this.mActivatedParticles = 0;
        this.mEmitingTime = this.mTimeToLive;
        for (int i2 = 0; i2 < i && i2 < this.mMaxParticles; i2++) {
            activateParticle(0L);
        }
        this.mDrawingView = new ParticleField(this.mParentView.getContext());
        this.mParentView.addView(this.mDrawingView);
        this.mDrawingView.setParticles(this.mActiveParticles);
        startAnimator(interpolator, this.mTimeToLive);
    }

    private void startAnimator(Interpolator interpolator, long j) {
        this.mAnimator = ValueAnimator.ofInt(0, (int) j);
        this.mAnimator.setDuration(j);
        this.mAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.plattysoft.leonids.ParticleSystem.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ParticleSystem.this.onUpdate(((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        this.mAnimator.addListener(new Animator.AnimatorListener() { // from class: com.plattysoft.leonids.ParticleSystem.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ParticleSystem.this.cleanupAnimation();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                ParticleSystem.this.cleanupAnimation();
            }
        });
        this.mAnimator.setInterpolator(interpolator);
        this.mAnimator.start();
    }

    private void configureEmiter(View view, int i) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        if (hasGravity(i, 3)) {
            this.mEmiterXMin = iArr[0] - this.mParentLocation[0];
            this.mEmiterXMax = this.mEmiterXMin;
        } else if (hasGravity(i, 5)) {
            this.mEmiterXMin = (iArr[0] + view.getWidth()) - this.mParentLocation[0];
            this.mEmiterXMax = this.mEmiterXMin;
        } else if (hasGravity(i, 1)) {
            this.mEmiterXMin = (iArr[0] + (view.getWidth() / 2)) - this.mParentLocation[0];
            this.mEmiterXMax = this.mEmiterXMin;
        } else {
            this.mEmiterXMin = iArr[0] - this.mParentLocation[0];
            this.mEmiterXMax = (iArr[0] + view.getWidth()) - this.mParentLocation[0];
        }
        if (hasGravity(i, 48)) {
            this.mEmiterYMin = iArr[1] - this.mParentLocation[1];
            this.mEmiterYMax = this.mEmiterYMin;
        } else if (hasGravity(i, 80)) {
            this.mEmiterYMin = (iArr[1] + view.getHeight()) - this.mParentLocation[1];
            this.mEmiterYMax = this.mEmiterYMin;
        } else if (hasGravity(i, 16)) {
            this.mEmiterYMin = (iArr[1] + (view.getHeight() / 2)) - this.mParentLocation[1];
            this.mEmiterYMax = this.mEmiterYMin;
        } else {
            this.mEmiterYMin = iArr[1] - this.mParentLocation[1];
            this.mEmiterYMax = (iArr[1] + view.getHeight()) - this.mParentLocation[1];
        }
    }

    private void activateParticle(long j) {
        Particle particleRemove = this.mParticles.remove(0);
        particleRemove.init();
        for (int i = 0; i < this.mInitializers.size(); i++) {
            this.mInitializers.get(i).initParticle(particleRemove, this.mRandom);
        }
        particleRemove.configure(this.mTimeToLive, getFromRange(this.mEmiterXMin, this.mEmiterXMax), getFromRange(this.mEmiterYMin, this.mEmiterYMax));
        particleRemove.activate(j, this.mModifiers);
        this.mActiveParticles.add(particleRemove);
        this.mActivatedParticles++;
    }

    private int getFromRange(int i, int i2) {
        return i == i2 ? i : this.mRandom.nextInt(i2 - i) + i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUpdate(long j) {
        while (true) {
            long j2 = this.mEmitingTime;
            if (((j2 <= 0 || j >= j2) && this.mEmitingTime != -1) || this.mParticles.isEmpty() || this.mActivatedParticles >= this.mParticlesPerMilisecond * j) {
                break;
            } else {
                activateParticle(j);
            }
        }
        synchronized (this.mActiveParticles) {
            int i = 0;
            while (i < this.mActiveParticles.size()) {
                if (!this.mActiveParticles.get(i).update(j)) {
                    Particle particleRemove = this.mActiveParticles.remove(i);
                    i--;
                    this.mParticles.add(particleRemove);
                }
                i++;
            }
        }
        this.mDrawingView.postInvalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanupAnimation() {
        this.mParentView.removeView(this.mDrawingView);
        this.mDrawingView = null;
        this.mParentView.postInvalidate();
        this.mParticles.addAll(this.mActiveParticles);
    }

    private void updateParticlesBeforeStartTime(int i) {
        if (i == 0) {
            return;
        }
        long j = this.mCurrentTime;
        long j2 = (j / 1000) / i;
        if (j2 == 0) {
            return;
        }
        long j3 = j / j2;
        int i2 = 1;
        while (true) {
            long j4 = i2;
            if (j4 > j2) {
                return;
            }
            onUpdate((j4 * j3) + 1);
            i2++;
        }
    }
}
