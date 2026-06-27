package com.narvii.story.widgets;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StoryLoadingView.kt */
/* loaded from: classes3.dex */
public final class StoryLoadingView extends View {
    private static final long ANIMATION_DURATION = 230;
    public static final Companion Companion = new Companion(null);
    private static final float END_TRANSPARENCY = 0.0f;
    private static final float END_WIDTH_RATIO = 0.5f;
    private static final float MIDDLE_TRANSPARENCY = 1.0f;
    private static final float MIDDLE_WIDTH_RATIO = 0.3f;
    private static final float START_TRANSPARENCY = 0.1f;
    private static final float START_WIDTH_RATIO = 0.025f;
    private HashMap _$_findViewCache;
    private AnimatorSet animatorSet;
    private boolean canceled;
    private int currentAlpha;
    private float currentRatio;
    private final Paint mPaint;
    private boolean visibility;

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    public StoryLoadingView(Context context) {
        super(context);
        this.mPaint = new Paint();
        this.currentRatio = START_WIDTH_RATIO;
        this.currentAlpha = (int) 25.5f;
        this.mPaint.setAntiAlias(true);
        this.mPaint.setColor(-1);
        this.mPaint.setStyle(Paint.Style.FILL);
        ValueAnimator startToMiddleAni = ValueAnimator.ofFloat(START_WIDTH_RATIO, 0.3f);
        startToMiddleAni.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.story.widgets.StoryLoadingView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator it) {
                StoryLoadingView storyLoadingView = StoryLoadingView.this;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                Object animatedValue = it.getAnimatedValue();
                if (animatedValue != null) {
                    storyLoadingView.currentRatio = ((Float) animatedValue).floatValue();
                    StoryLoadingView storyLoadingView2 = StoryLoadingView.this;
                    storyLoadingView2.currentAlpha = (int) (((((storyLoadingView2.currentRatio - StoryLoadingView.START_WIDTH_RATIO) / 0.275f) * 0.9f) + 0.1f) * 255);
                    StoryLoadingView.this.invalidate();
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(startToMiddleAni, "startToMiddleAni");
        startToMiddleAni.setDuration(ANIMATION_DURATION);
        ValueAnimator middleToEndAni = ValueAnimator.ofFloat(0.3f, 0.5f);
        middleToEndAni.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.story.widgets.StoryLoadingView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator it) {
                StoryLoadingView storyLoadingView = StoryLoadingView.this;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                Object animatedValue = it.getAnimatedValue();
                if (animatedValue != null) {
                    storyLoadingView.currentRatio = ((Float) animatedValue).floatValue();
                    StoryLoadingView storyLoadingView2 = StoryLoadingView.this;
                    storyLoadingView2.currentAlpha = (int) (((((storyLoadingView2.currentRatio - 0.3f) / 0.19999999f) * (-1.0f)) + 1.0f) * 255);
                    StoryLoadingView.this.invalidate();
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(middleToEndAni, "middleToEndAni");
        middleToEndAni.setDuration(ANIMATION_DURATION);
        this.animatorSet = new AnimatorSet();
        this.animatorSet.playSequentially(startToMiddleAni, middleToEndAni);
        this.animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.narvii.story.widgets.StoryLoadingView.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (StoryLoadingView.this.canceled) {
                    return;
                }
                StoryLoadingView.this.animatorSet.start();
            }
        });
        this.animatorSet.start();
    }

    public StoryLoadingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPaint = new Paint();
        this.currentRatio = START_WIDTH_RATIO;
        this.currentAlpha = (int) 25.5f;
        this.mPaint.setAntiAlias(true);
        this.mPaint.setColor(-1);
        this.mPaint.setStyle(Paint.Style.FILL);
        ValueAnimator startToMiddleAni = ValueAnimator.ofFloat(START_WIDTH_RATIO, 0.3f);
        startToMiddleAni.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.story.widgets.StoryLoadingView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator it) {
                StoryLoadingView storyLoadingView = StoryLoadingView.this;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                Object animatedValue = it.getAnimatedValue();
                if (animatedValue != null) {
                    storyLoadingView.currentRatio = ((Float) animatedValue).floatValue();
                    StoryLoadingView storyLoadingView2 = StoryLoadingView.this;
                    storyLoadingView2.currentAlpha = (int) (((((storyLoadingView2.currentRatio - StoryLoadingView.START_WIDTH_RATIO) / 0.275f) * 0.9f) + 0.1f) * 255);
                    StoryLoadingView.this.invalidate();
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(startToMiddleAni, "startToMiddleAni");
        startToMiddleAni.setDuration(ANIMATION_DURATION);
        ValueAnimator middleToEndAni = ValueAnimator.ofFloat(0.3f, 0.5f);
        middleToEndAni.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.story.widgets.StoryLoadingView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator it) {
                StoryLoadingView storyLoadingView = StoryLoadingView.this;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                Object animatedValue = it.getAnimatedValue();
                if (animatedValue != null) {
                    storyLoadingView.currentRatio = ((Float) animatedValue).floatValue();
                    StoryLoadingView storyLoadingView2 = StoryLoadingView.this;
                    storyLoadingView2.currentAlpha = (int) (((((storyLoadingView2.currentRatio - 0.3f) / 0.19999999f) * (-1.0f)) + 1.0f) * 255);
                    StoryLoadingView.this.invalidate();
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(middleToEndAni, "middleToEndAni");
        middleToEndAni.setDuration(ANIMATION_DURATION);
        this.animatorSet = new AnimatorSet();
        this.animatorSet.playSequentially(startToMiddleAni, middleToEndAni);
        this.animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.narvii.story.widgets.StoryLoadingView.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (StoryLoadingView.this.canceled) {
                    return;
                }
                StoryLoadingView.this.animatorSet.start();
            }
        });
        this.animatorSet.start();
    }

    public StoryLoadingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mPaint = new Paint();
        this.currentRatio = START_WIDTH_RATIO;
        this.currentAlpha = (int) 25.5f;
        this.mPaint.setAntiAlias(true);
        this.mPaint.setColor(-1);
        this.mPaint.setStyle(Paint.Style.FILL);
        ValueAnimator startToMiddleAni = ValueAnimator.ofFloat(START_WIDTH_RATIO, 0.3f);
        startToMiddleAni.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.story.widgets.StoryLoadingView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator it) {
                StoryLoadingView storyLoadingView = StoryLoadingView.this;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                Object animatedValue = it.getAnimatedValue();
                if (animatedValue != null) {
                    storyLoadingView.currentRatio = ((Float) animatedValue).floatValue();
                    StoryLoadingView storyLoadingView2 = StoryLoadingView.this;
                    storyLoadingView2.currentAlpha = (int) (((((storyLoadingView2.currentRatio - StoryLoadingView.START_WIDTH_RATIO) / 0.275f) * 0.9f) + 0.1f) * 255);
                    StoryLoadingView.this.invalidate();
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(startToMiddleAni, "startToMiddleAni");
        startToMiddleAni.setDuration(ANIMATION_DURATION);
        ValueAnimator middleToEndAni = ValueAnimator.ofFloat(0.3f, 0.5f);
        middleToEndAni.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.story.widgets.StoryLoadingView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator it) {
                StoryLoadingView storyLoadingView = StoryLoadingView.this;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                Object animatedValue = it.getAnimatedValue();
                if (animatedValue != null) {
                    storyLoadingView.currentRatio = ((Float) animatedValue).floatValue();
                    StoryLoadingView storyLoadingView2 = StoryLoadingView.this;
                    storyLoadingView2.currentAlpha = (int) (((((storyLoadingView2.currentRatio - 0.3f) / 0.19999999f) * (-1.0f)) + 1.0f) * 255);
                    StoryLoadingView.this.invalidate();
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(middleToEndAni, "middleToEndAni");
        middleToEndAni.setDuration(ANIMATION_DURATION);
        this.animatorSet = new AnimatorSet();
        this.animatorSet.playSequentially(startToMiddleAni, middleToEndAni);
        this.animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.narvii.story.widgets.StoryLoadingView.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (StoryLoadingView.this.canceled) {
                    return;
                }
                StoryLoadingView.this.animatorSet.start();
            }
        });
        this.animatorSet.start();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (canvas != null) {
            float width = (0.5f - this.currentRatio) * getWidth();
            float width2 = (this.currentRatio + 0.5f) * getWidth();
            this.mPaint.setAlpha(this.currentAlpha);
            canvas.drawRect(width, 0.0f, width2, getHeight(), this.mPaint);
        }
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
        if (this.visibility != z) {
            this.visibility = z;
            if (z) {
                startAnimation();
            } else {
                cancelAnimation();
            }
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cancelAnimation();
    }

    private final void startAnimation() {
        this.canceled = false;
        this.animatorSet.start();
    }

    private final void cancelAnimation() {
        this.canceled = true;
        this.animatorSet.cancel();
    }

    /* compiled from: StoryLoadingView.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
