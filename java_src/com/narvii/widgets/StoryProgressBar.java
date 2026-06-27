package com.narvii.widgets;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.narvii.lib.R;
import com.narvii.model.story.StorySceneMilestone;
import com.narvii.scene.ScenePlayRecord;
import com.narvii.util.KUtils;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StoryProgressBar.kt */
/* loaded from: classes3.dex */
public final class StoryProgressBar extends View {
    private HashMap _$_findViewCache;
    private float activeAlpha;
    private int activeIndex;
    private float activeScale;
    private float activeTransferX;
    private Paint indicatorPaint;
    private float interActCircle;
    private ArrayList<Integer> interActSceneList;
    private boolean isPaused;
    private float lineHeight;
    private List<? extends StorySceneMilestone> milestoneList;
    private int milestoneSize;
    private float normalCircle;
    private int primaryColor;
    private Paint primaryPaint;
    private ValueAnimator scaleAnimator;
    private int secondaryColor;
    private float startScale;
    private String storyId;
    private IStoryPollQuizPlayListener storyQuizPollPlayListener;
    private float strokeWidth;
    private ValueAnimator tAnimator;
    private ValueAnimator transferAnimator;

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

    public final void setSceneSize(int i) {
    }

    public final float getStrokeWidth() {
        return this.strokeWidth;
    }

    public final void setStrokeWidth(float f) {
        this.strokeWidth = f;
    }

    public final Paint getIndicatorPaint() {
        return this.indicatorPaint;
    }

    public final void setIndicatorPaint(Paint paint) {
        Intrinsics.checkParameterIsNotNull(paint, "<set-?>");
        this.indicatorPaint = paint;
    }

    public final IStoryPollQuizPlayListener getStoryQuizPollPlayListener() {
        return this.storyQuizPollPlayListener;
    }

    public final void setStoryQuizPollPlayListener(IStoryPollQuizPlayListener iStoryPollQuizPlayListener) {
        this.storyQuizPollPlayListener = iStoryPollQuizPlayListener;
    }

    public StoryProgressBar(Context context) {
        this(context, null);
    }

    public StoryProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.primaryColor = -1;
        this.secondaryColor = -7829368;
        this.primaryPaint = new Paint();
        this.milestoneSize = 10;
        this.activeIndex = -1;
        this.activeScale = 1.0f;
        this.activeTransferX = 1.0f;
        this.startScale = 1.2f;
        this.strokeWidth = Utils.dpToPx(getContext(), 1.5f);
        this.interActSceneList = new ArrayList<>();
        this.normalCircle = Utils.dpToPx(getContext(), 6.0f);
        this.interActCircle = Utils.dpToPx(getContext(), 10.0f);
        this.lineHeight = Utils.dpToPx(getContext(), 1.5f);
        this.indicatorPaint = new Paint();
        TypedArray typedArrayObtainStyledAttributes = context != null ? context.obtainStyledAttributes(attributeSet, R.styleable.StoryProgressBar) : null;
        this.primaryColor = typedArrayObtainStyledAttributes != null ? typedArrayObtainStyledAttributes.getColor(R.styleable.StoryProgressBar_primaryColor, (int) 4294967295L) : (int) 4294967295L;
        this.secondaryColor = typedArrayObtainStyledAttributes != null ? typedArrayObtainStyledAttributes.getColor(R.styleable.StoryProgressBar_secondaryColor, (int) 2164260863L) : (int) 2164260863L;
        if (typedArrayObtainStyledAttributes != null) {
            typedArrayObtainStyledAttributes.recycle();
        }
        this.primaryPaint.setAntiAlias(true);
        this.primaryPaint.setColor(this.primaryColor);
        this.indicatorPaint.setAntiAlias(true);
    }

    public final void resetCurSceneIndex() {
        ValueAnimator valueAnimator = this.scaleAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.transferAnimator;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        this.activeIndex = -1;
        this.activeScale = 1.0f;
        this.activeAlpha = 1.0f;
        this.storyId = null;
        this.interActSceneList.clear();
    }

    public final void setStory(String str, List<? extends StorySceneMilestone> list) {
        if (Utils.isEqualsNotNull(this.storyId, str) && KUtils.Companion.isListSame(list, this.milestoneList, new Function2<StorySceneMilestone, StorySceneMilestone, Boolean>() { // from class: com.narvii.widgets.StoryProgressBar.setStory.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Boolean invoke(StorySceneMilestone storySceneMilestone, StorySceneMilestone storySceneMilestone2) {
                return Boolean.valueOf(invoke2(storySceneMilestone, storySceneMilestone2));
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final boolean invoke2(StorySceneMilestone p1, StorySceneMilestone p2) {
                Intrinsics.checkParameterIsNotNull(p1, "p1");
                Intrinsics.checkParameterIsNotNull(p2, "p2");
                return p1.containsPollOrQuiz() == p2.containsPollOrQuiz();
            }
        })) {
            return;
        }
        this.storyId = str;
        this.milestoneList = list;
        this.interActSceneList.clear();
        this.milestoneSize = list != null ? list.size() : 0;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (list.get(i).containsPollOrQuiz()) {
                    this.interActSceneList.add(Integer.valueOf(i));
                }
            }
        }
        this.activeScale = 1.0f;
        this.activeAlpha = 1.0f;
    }

    public final void setCurSceneIndex(int i) {
        int i2 = this.activeIndex;
        if (i2 != i && i <= this.milestoneSize && i >= 0) {
            final boolean z = i > i2;
            this.activeIndex = i;
            ValueAnimator valueAnimator = this.scaleAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator valueAnimator2 = this.transferAnimator;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
            }
            ValueAnimator sAnimator = ValueAnimator.ofFloat(0.0f, 1.0f);
            Intrinsics.checkExpressionValueIsNotNull(sAnimator, "sAnimator");
            sAnimator.setRepeatCount(-1);
            sAnimator.setDuration(1200L);
            sAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widgets.StoryProgressBar.setCurSceneIndex.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator animation) {
                    StoryProgressBar storyProgressBar = StoryProgressBar.this;
                    Intrinsics.checkExpressionValueIsNotNull(animation, "animation");
                    Object animatedValue = animation.getAnimatedValue();
                    if (animatedValue != null) {
                        storyProgressBar.activeScale = (((Float) animatedValue).floatValue() * 8.8f) + 1.2f;
                        StoryProgressBar storyProgressBar2 = StoryProgressBar.this;
                        Object animatedValue2 = animation.getAnimatedValue();
                        if (animatedValue2 != null) {
                            storyProgressBar2.activeAlpha = 1.0f - (((Float) animatedValue2).floatValue() * 2.0f);
                            if (StoryProgressBar.this.activeAlpha < 0.0f) {
                                StoryProgressBar.this.activeAlpha = 0.0f;
                            }
                            StoryProgressBar.this.invalidate();
                            return;
                        }
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
                    }
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
                }
            });
            sAnimator.addListener(new Animator.AnimatorListener() { // from class: com.narvii.widgets.StoryProgressBar.setCurSceneIndex.2
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    StoryProgressBar.this.activeScale = 1.0f;
                    StoryProgressBar.this.activeAlpha = 1.0f;
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    StoryProgressBar.this.activeTransferX = 1.0f;
                }
            });
            this.scaleAnimator = sAnimator;
            this.tAnimator = ValueAnimator.ofFloat(0.0f, 1.0f);
            ValueAnimator valueAnimator3 = this.tAnimator;
            if (valueAnimator3 != null) {
                valueAnimator3.setDuration(300L);
            }
            ValueAnimator valueAnimator4 = this.tAnimator;
            if (valueAnimator4 != null) {
                valueAnimator4.setInterpolator(new DecelerateInterpolator());
            }
            ValueAnimator valueAnimator5 = this.tAnimator;
            if (valueAnimator5 != null) {
                valueAnimator5.addListener(new Animator.AnimatorListener() { // from class: com.narvii.widgets.StoryProgressBar.setCurSceneIndex.3
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ValueAnimator valueAnimator6;
                        if (!StoryProgressBar.this.isPaused && (valueAnimator6 = StoryProgressBar.this.scaleAnimator) != null) {
                            valueAnimator6.start();
                        }
                        StoryProgressBar.this.activeTransferX = 1.0f;
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        StoryProgressBar storyProgressBar = StoryProgressBar.this;
                        storyProgressBar.startScale = storyProgressBar.activeScale;
                        StoryProgressBar.this.activeTransferX = z ? 0.01f : -0.01f;
                        ValueAnimator valueAnimator6 = StoryProgressBar.this.scaleAnimator;
                        if (valueAnimator6 != null) {
                            valueAnimator6.cancel();
                        }
                    }
                });
            }
            ValueAnimator valueAnimator6 = this.tAnimator;
            if (valueAnimator6 != null) {
                valueAnimator6.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widgets.StoryProgressBar.setCurSceneIndex.4
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator animation) {
                        StoryProgressBar storyProgressBar = StoryProgressBar.this;
                        Intrinsics.checkExpressionValueIsNotNull(animation, "animation");
                        Object animatedValue = animation.getAnimatedValue();
                        if (animatedValue != null) {
                            storyProgressBar.activeTransferX = ((Float) animatedValue).floatValue();
                            StoryProgressBar storyProgressBar2 = StoryProgressBar.this;
                            storyProgressBar2.activeTransferX = z ? storyProgressBar2.activeTransferX : (-1) * storyProgressBar2.activeTransferX;
                            if (!z && StoryProgressBar.this.activeTransferX == 0.0f) {
                                StoryProgressBar.this.activeTransferX = -0.01f;
                            }
                            StoryProgressBar.this.invalidate();
                            return;
                        }
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
                    }
                });
            }
            ValueAnimator valueAnimator7 = this.tAnimator;
            if (valueAnimator7 != null) {
                valueAnimator7.start();
            }
            this.transferAnimator = this.tAnimator;
        }
    }

    public final void pauseAnimation() {
        ValueAnimator valueAnimator;
        if (Build.VERSION.SDK_INT >= 19) {
            this.isPaused = true;
            ValueAnimator valueAnimator2 = this.scaleAnimator;
            if (valueAnimator2 == null || !valueAnimator2.isStarted() || (valueAnimator = this.scaleAnimator) == null) {
                return;
            }
            valueAnimator.pause();
        }
    }

    public final void resumeAnimation() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.isPaused = false;
            ValueAnimator valueAnimator = this.scaleAnimator;
            if (valueAnimator != null && valueAnimator.isPaused()) {
                ValueAnimator valueAnimator2 = this.scaleAnimator;
                if (valueAnimator2 != null) {
                    valueAnimator2.resume();
                    return;
                }
                return;
            }
            ValueAnimator valueAnimator3 = this.scaleAnimator;
            if (valueAnimator3 != null) {
                valueAnimator3.start();
            }
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.scaleAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.transferAnimator;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        ValueAnimator valueAnimator3 = this.tAnimator;
        if (valueAnimator3 != null) {
            valueAnimator3.cancel();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:142:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0330 A[SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onDraw(android.graphics.Canvas r28) {
        /*
            Method dump skipped, instructions count: 844
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.widgets.StoryProgressBar.onDraw(android.graphics.Canvas):void");
    }

    public final ScenePlayRecord getInteractionPlayeRecord(int i) {
        List<? extends StorySceneMilestone> list;
        StorySceneMilestone storySceneMilestone;
        String strMilestoneId;
        IStoryPollQuizPlayListener iStoryPollQuizPlayListener;
        List<? extends StorySceneMilestone> list2 = this.milestoneList;
        if (list2 == null || i < 0) {
            return null;
        }
        if (i >= (list2 != null ? list2.size() : 0) || (list = this.milestoneList) == null || (storySceneMilestone = list.get(i)) == null || (strMilestoneId = storySceneMilestone.milestoneId()) == null || (iStoryPollQuizPlayListener = this.storyQuizPollPlayListener) == null) {
            return null;
        }
        return iStoryPollQuizPlayListener.getPollQuizPlayRecord(strMilestoneId);
    }

    public final void updatePlayedPollQuiz() {
        invalidate();
    }
}
