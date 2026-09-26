package com.narvii.widgets;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.narvii.lib.R;
import com.narvii.model.story.StorySceneMilestone;
import com.narvii.scene.ScenePlayRecord;
import com.narvii.util.KUtils;
import com.narvii.util.Utils;
import e8.p;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class StoryProgressBar extends View {
    private float activeAlpha;
    private int activeIndex;
    private float activeScale;
    private float activeTransferX;

    @NotNull
    private Paint indicatorPaint;
    private float interActCircle;

    @NotNull
    private ArrayList<Integer> interActSceneList;
    private boolean isPaused;
    private float lineHeight;

    @Nullable
    private List<? extends StorySceneMilestone> milestoneList;
    private int milestoneSize;
    private float normalCircle;
    private int primaryColor;

    @NotNull
    private Paint primaryPaint;

    @Nullable
    private ValueAnimator scaleAnimator;
    private int secondaryColor;
    private float startScale;

    @Nullable
    private String storyId;

    @Nullable
    private IStoryPollQuizPlayListener storyQuizPollPlayListener;
    private float strokeWidth;

    @Nullable
    private ValueAnimator tAnimator;

    @Nullable
    private ValueAnimator transferAnimator;

    /* JADX INFO: renamed from: com.narvii.widgets.StoryProgressBar$setStory$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements p<StorySceneMilestone, StorySceneMilestone, Boolean> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(2);
        }

        @Override // e8.p
        @NotNull
        public final Boolean invoke(@NotNull StorySceneMilestone p1, @NotNull StorySceneMilestone p5) {
            t.j(p1, "p1");
            t.j(p5, "p2");
            return Boolean.valueOf(p1.containsPollOrQuiz() == p5.containsPollOrQuiz());
        }
    }

    public StoryProgressBar(@Nullable Context context) {
        this(context, null);
    }

    @NotNull
    public final Paint getIndicatorPaint() {
        return this.indicatorPaint;
    }

    @Nullable
    public final IStoryPollQuizPlayListener getStoryQuizPollPlayListener() {
        return this.storyQuizPollPlayListener;
    }

    public final float getStrokeWidth() {
        return this.strokeWidth;
    }

    public final void pauseAnimation() {
        ValueAnimator valueAnimator;
        this.isPaused = true;
        ValueAnimator valueAnimator2 = this.scaleAnimator;
        if (valueAnimator2 == null || !valueAnimator2.isStarted() || (valueAnimator = this.scaleAnimator) == null) {
            return;
        }
        valueAnimator.pause();
    }

    public final void resumeAnimation() {
        this.isPaused = false;
        ValueAnimator valueAnimator = this.scaleAnimator;
        if (valueAnimator == null || !valueAnimator.isPaused()) {
            ValueAnimator valueAnimator2 = this.scaleAnimator;
            if (valueAnimator2 != null) {
                valueAnimator2.start();
                return;
            }
            return;
        }
        ValueAnimator valueAnimator3 = this.scaleAnimator;
        if (valueAnimator3 != null) {
            valueAnimator3.resume();
        }
    }

    public final void setIndicatorPaint(@NotNull Paint paint) {
        t.j(paint, "<set-?>");
        this.indicatorPaint = paint;
    }

    public final void setSceneSize(int i10) {
    }

    public final void setStoryQuizPollPlayListener(@Nullable IStoryPollQuizPlayListener iStoryPollQuizPlayListener) {
        this.storyQuizPollPlayListener = iStoryPollQuizPlayListener;
    }

    public final void setStrokeWidth(float f) {
        this.strokeWidth = f;
    }

    public StoryProgressBar(@Nullable Context context, @Nullable AttributeSet attributeSet) {
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
        this.primaryColor = typedArrayObtainStyledAttributes != null ? typedArrayObtainStyledAttributes.getColor(R.styleable.StoryProgressBar_primaryColor, -1) : -1;
        this.secondaryColor = typedArrayObtainStyledAttributes != null ? typedArrayObtainStyledAttributes.getColor(R.styleable.StoryProgressBar_secondaryColor, -2130706433) : -2130706433;
        if (typedArrayObtainStyledAttributes != null) {
            typedArrayObtainStyledAttributes.recycle();
        }
        this.primaryPaint.setAntiAlias(true);
        this.primaryPaint.setColor(this.primaryColor);
        this.indicatorPaint.setAntiAlias(true);
    }

    @Nullable
    public final ScenePlayRecord getInteractionPlayeRecord(int i10) {
        IStoryPollQuizPlayListener iStoryPollQuizPlayListener;
        StorySceneMilestone storySceneMilestone;
        List<? extends StorySceneMilestone> list = this.milestoneList;
        if (list == null || i10 < 0) {
            return null;
        }
        if (i10 >= (list != null ? list.size() : 0)) {
            return null;
        }
        List<? extends StorySceneMilestone> list2 = this.milestoneList;
        String strMilestoneId = (list2 == null || (storySceneMilestone = list2.get(i10)) == null) ? null : storySceneMilestone.milestoneId();
        if (strMilestoneId == null || (iStoryPollQuizPlayListener = this.storyQuizPollPlayListener) == null) {
            return null;
        }
        return iStoryPollQuizPlayListener.getPollQuizPlayRecord(strMilestoneId);
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0239  */
    /* JADX WARN: Code duplicated, block: B:108:0x0254  */
    /* JADX WARN: Code duplicated, block: B:109:0x0257  */
    /* JADX WARN: Code duplicated, block: B:115:0x0268  */
    /* JADX WARN: Code duplicated, block: B:123:0x028b  */
    /* JADX WARN: Code duplicated, block: B:125:0x028f  */
    /* JADX WARN: Code duplicated, block: B:128:0x02a0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:129:0x02a2  */
    /* JADX WARN: Code duplicated, block: B:132:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:134:0x02b0  */
    /* JADX WARN: Code duplicated, block: B:136:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:138:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:139:0x02ba  */
    /* JADX WARN: Code duplicated, block: B:141:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:144:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:147:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:149:0x02d1 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:152:0x02d8  */
    /* JADX WARN: Code duplicated, block: B:154:0x02df  */
    /* JADX WARN: Code duplicated, block: B:156:0x02e9  */
    /* JADX WARN: Code duplicated, block: B:158:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:159:0x02f8  */
    /* JADX WARN: Code duplicated, block: B:164:0x02f9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:0x020c  */
    @Override // android.view.View
    protected void onDraw(@NotNull Canvas canvas) {
        float f;
        int i10;
        float f6;
        float f7;
        float f10;
        Paint.Style style;
        int i11;
        int i12;
        char c7;
        ScenePlayRecord interactionPlayeRecord;
        int i13;
        int i14;
        int i15;
        float f11;
        float f12;
        float f13;
        float f14;
        int i16;
        t.j(canvas, "canvas");
        super.onDraw(canvas);
        int i17 = 1;
        if (this.milestoneSize <= 1) {
            return;
        }
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
        float f15 = (width * 1.0f) / 9;
        float paddingLeft = (((10 - this.milestoneSize) * f15) / 2.0f) + getPaddingLeft();
        boolean z6 = this.activeTransferX >= 0.0f;
        int i18 = 0;
        for (int i19 = this.milestoneSize; i18 < i19; i19 = i19) {
            float f16 = height / 2.0f;
            float f17 = this.interActSceneList.contains(Integer.valueOf(i18)) ? this.interActCircle : this.normalCircle;
            int i20 = i18 + 1;
            float f18 = this.interActSceneList.contains(Integer.valueOf(i20)) ? this.interActCircle : this.normalCircle;
            int i21 = i18 - 1;
            float f19 = this.interActSceneList.contains(Integer.valueOf(i21)) ? this.interActCircle : this.normalCircle;
            float f20 = i18 * f15;
            float width2 = paddingLeft + f20;
            float f21 = f17 / 2.0f;
            float width3 = width2 + f21;
            if (Utils.isRtl()) {
                width3 = ((getWidth() - paddingLeft) - f20) - f21;
            }
            float f22 = width3;
            float f23 = i20 * f15;
            float f24 = f18 / 2.0f;
            float f25 = (paddingLeft + f23) - f24;
            float width4 = Utils.isRtl() ? ((getWidth() - paddingLeft) - f23) + f24 : f25;
            this.primaryPaint.setColor(i18 < this.activeIndex ? this.primaryColor : this.secondaryColor);
            if (i18 == this.activeIndex - i17) {
                this.primaryPaint.setColor((this.activeTransferX != 1.0f && z6) ? this.secondaryColor : this.primaryColor);
            }
            this.primaryPaint.setStrokeWidth(i18 < this.activeIndex ? this.lineHeight * 1.5f : this.lineHeight);
            if (i18 == this.milestoneSize - i17 || canvas == null) {
                f = f16;
            } else {
                f = f16;
                canvas.drawLine(f22, f16, width4, f, this.primaryPaint);
            }
            if (!z6 ? i18 != this.activeIndex : i18 != (i16 = this.activeIndex) || i16 <= 0) {
                i10 = 255;
            } else {
                if (Utils.isRtl()) {
                    if (z6) {
                        f22 = ((f22 + f21) + f15) - (f19 / 2);
                    }
                } else if (z6) {
                    f22 = paddingLeft + (i21 < 0 ? 0.0f : (i21 * f15) + (f19 / 2.0f));
                } else {
                    f22 = width2 - f21;
                }
                float f26 = Utils.isRtl() ? z6 ? f22 - (((f15 - f21) - (f19 / 2.0f)) * this.activeTransferX) : (((f22 - f15) + f21) + f24) - (((f15 - f21) - (f19 / 2.0f)) * this.activeTransferX) : z6 ? f22 + (((f15 - f21) - f24) * this.activeTransferX) : f25 + (((f15 - f21) - f24) * this.activeTransferX);
                this.primaryPaint.setColor(this.primaryColor);
                if (canvas != null) {
                    canvas.drawLine(f22, f, f26, f, this.primaryPaint);
                }
                float f27 = (this.normalCircle / 2.0f) - (this.strokeWidth / 2.0f);
                this.primaryPaint.setStyle(Paint.Style.FILL_AND_STROKE);
                i10 = 255;
                this.primaryPaint.setAlpha((int) (this.activeAlpha * 255));
                if (Utils.isRtl()) {
                    if (z6) {
                        f13 = f15 - f21;
                        f14 = this.activeTransferX;
                    } else {
                        f22 = (f22 - f15) + f21 + f24;
                        f13 = f15 - f24;
                        f14 = this.activeTransferX;
                    }
                    f12 = f22 - (f13 * f14);
                } else {
                    f12 = z6 ? f22 + ((f15 - (f19 / 2.0f)) * this.activeTransferX) : f25 + ((f15 - f24) * this.activeTransferX);
                }
                float f28 = f12;
                if (canvas != null) {
                    f6 = f;
                    canvas.drawCircle(f28, f6, f27, this.primaryPaint);
                }
                if (Utils.isRtl()) {
                    width2 = (getWidth() - paddingLeft) - f20;
                }
                f7 = width2;
                if (i18 == this.activeIndex && this.activeTransferX == 1.0f) {
                    this.primaryPaint.setColor(this.primaryColor);
                    f11 = this.activeScale * f21;
                    this.primaryPaint.setAlpha((int) (this.activeAlpha * i10));
                    if (canvas != null) {
                        canvas.drawCircle(f7, f6, f11, this.primaryPaint);
                    }
                }
                this.primaryPaint.setAlpha(i10);
                float f29 = this.strokeWidth;
                f10 = f21 - (f29 / 2.0f);
                this.primaryPaint.setStrokeWidth(f29);
                Paint paint = this.primaryPaint;
                if (i18 > this.activeIndex) {
                    style = Paint.Style.STROKE;
                } else {
                    style = Paint.Style.FILL_AND_STROKE;
                }
                paint.setStyle(style);
                Paint paint2 = this.primaryPaint;
                i11 = this.activeIndex;
                if (i18 <= i11 || i11 == -1) {
                    i12 = this.secondaryColor;
                } else {
                    i12 = this.primaryColor;
                }
                paint2.setColor(i12);
                if (i18 == this.activeIndex || !z6) {
                    c7 = 0;
                } else {
                    c7 = 0;
                    if (this.activeTransferX != 1.0f) {
                        this.primaryPaint.setStyle(Paint.Style.STROKE);
                        this.primaryPaint.setColor(this.secondaryColor);
                    }
                }
                if (canvas != null) {
                    canvas.drawCircle(f7, f6, f10, this.primaryPaint);
                }
                if (this.interActSceneList.contains(Integer.valueOf(i18))) {
                    if (canvas != null) {
                        canvas.save();
                    }
                    interactionPlayeRecord = getInteractionPlayeRecord(i18);
                    if (interactionPlayeRecord != null) {
                        i17 = 1;
                        boolean z10 = interactionPlayeRecord.interactionType == 1;
                        if (interactionPlayeRecord != null) {
                            i13 = i17;
                        } else {
                            i13 = 0;
                        }
                        if (interactionPlayeRecord == null && interactionPlayeRecord.isAnswerRight == i17) {
                            i14 = i17;
                        } else {
                            i14 = 0;
                        }
                        this.indicatorPaint.setStyle(Paint.Style.FILL);
                        if (i13 != 0) {
                            Paint paint3 = this.indicatorPaint;
                            if (i14 == 0 || !z10) {
                                i15 = -16456636;
                            } else {
                                i15 = -48060;
                            }
                            paint3.setColor(i15);
                        } else {
                            this.indicatorPaint.setColor(-13450773);
                        }
                        if (canvas != null) {
                            canvas.drawCircle(f7, f6, f10 * 0.63f, this.indicatorPaint);
                        }
                        if (canvas != null) {
                            canvas.restore();
                        }
                    } else {
                        i17 = 1;
                    }
                    if (interactionPlayeRecord != null) {
                        i13 = i17;
                    } else {
                        i13 = 0;
                    }
                    if (interactionPlayeRecord == null) {
                        i14 = 0;
                    } else {
                        i14 = 0;
                    }
                    this.indicatorPaint.setStyle(Paint.Style.FILL);
                    if (i13 != 0) {
                        Paint paint4 = this.indicatorPaint;
                        if (i14 == 0) {
                            i15 = -16456636;
                        } else {
                            i15 = -16456636;
                        }
                        paint4.setColor(i15);
                    } else {
                        this.indicatorPaint.setColor(-13450773);
                    }
                    if (canvas != null) {
                        canvas.drawCircle(f7, f6, f10 * 0.63f, this.indicatorPaint);
                    }
                    if (canvas != null) {
                        canvas.restore();
                    }
                } else {
                    i17 = 1;
                }
                this.primaryPaint.setStyle(Paint.Style.FILL);
                this.primaryPaint.setStrokeWidth(0.0f);
                i18 = i20;
            }
            f6 = f;
            if (Utils.isRtl()) {
                width2 = (getWidth() - paddingLeft) - f20;
            }
            f7 = width2;
            if (i18 == this.activeIndex) {
                this.primaryPaint.setColor(this.primaryColor);
                f11 = this.activeScale * f21;
                this.primaryPaint.setAlpha((int) (this.activeAlpha * i10));
                if (canvas != null) {
                    canvas.drawCircle(f7, f6, f11, this.primaryPaint);
                }
            }
            this.primaryPaint.setAlpha(i10);
            float f210 = this.strokeWidth;
            f10 = f21 - (f210 / 2.0f);
            this.primaryPaint.setStrokeWidth(f210);
            Paint paint5 = this.primaryPaint;
            if (i18 > this.activeIndex) {
                style = Paint.Style.STROKE;
            } else {
                style = Paint.Style.FILL_AND_STROKE;
            }
            paint5.setStyle(style);
            Paint paint6 = this.primaryPaint;
            i11 = this.activeIndex;
            if (i18 <= i11) {
                i12 = this.secondaryColor;
            } else {
                i12 = this.secondaryColor;
            }
            paint6.setColor(i12);
            if (i18 == this.activeIndex) {
                c7 = 0;
            } else {
                c7 = 0;
            }
            if (canvas != null) {
                canvas.drawCircle(f7, f6, f10, this.primaryPaint);
            }
            if (this.interActSceneList.contains(Integer.valueOf(i18))) {
                if (canvas != null) {
                    canvas.save();
                }
                interactionPlayeRecord = getInteractionPlayeRecord(i18);
                if (interactionPlayeRecord != null) {
                    i17 = 1;
                    if (interactionPlayeRecord.interactionType == 1) {
                    }
                    if (interactionPlayeRecord != null) {
                        i13 = i17;
                    } else {
                        i13 = 0;
                    }
                    if (interactionPlayeRecord == null) {
                        i14 = 0;
                    } else {
                        i14 = 0;
                    }
                    this.indicatorPaint.setStyle(Paint.Style.FILL);
                    if (i13 != 0) {
                        Paint paint7 = this.indicatorPaint;
                        if (i14 == 0) {
                            i15 = -16456636;
                        } else {
                            i15 = -16456636;
                        }
                        paint7.setColor(i15);
                    } else {
                        this.indicatorPaint.setColor(-13450773);
                    }
                    if (canvas != null) {
                        canvas.drawCircle(f7, f6, f10 * 0.63f, this.indicatorPaint);
                    }
                    if (canvas != null) {
                        canvas.restore();
                    }
                } else {
                    i17 = 1;
                }
                if (interactionPlayeRecord != null) {
                    i13 = i17;
                } else {
                    i13 = 0;
                }
                if (interactionPlayeRecord == null) {
                    i14 = 0;
                } else {
                    i14 = 0;
                }
                this.indicatorPaint.setStyle(Paint.Style.FILL);
                if (i13 != 0) {
                    Paint paint8 = this.indicatorPaint;
                    if (i14 == 0) {
                        i15 = -16456636;
                    } else {
                        i15 = -16456636;
                    }
                    paint8.setColor(i15);
                } else {
                    this.indicatorPaint.setColor(-13450773);
                }
                if (canvas != null) {
                    canvas.drawCircle(f7, f6, f10 * 0.63f, this.indicatorPaint);
                }
                if (canvas != null) {
                    canvas.restore();
                }
            } else {
                i17 = 1;
            }
            this.primaryPaint.setStyle(Paint.Style.FILL);
            this.primaryPaint.setStrokeWidth(0.0f);
            i18 = i20;
        }
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

    public final void setCurSceneIndex(int i10) {
        int i11 = this.activeIndex;
        if (i11 != i10 && i10 <= this.milestoneSize && i10 >= 0) {
            final boolean z6 = i10 > i11;
            this.activeIndex = i10;
            ValueAnimator valueAnimator = this.scaleAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator valueAnimator2 = this.transferAnimator;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.setRepeatCount(-1);
            valueAnimatorOfFloat.setDuration(1200L);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widgets.a
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    StoryProgressBar.setCurSceneIndex$lambda$1(this.f3083a, valueAnimator3);
                }
            });
            valueAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.narvii.widgets.StoryProgressBar.setCurSceneIndex.2
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(@NotNull Animator animation) {
                    t.j(animation, "animation");
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(@NotNull Animator animation) {
                    t.j(animation, "animation");
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(@NotNull Animator animation) {
                    t.j(animation, "animation");
                    StoryProgressBar.this.activeScale = 1.0f;
                    StoryProgressBar.this.activeAlpha = 1.0f;
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(@NotNull Animator animation) {
                    t.j(animation, "animation");
                    StoryProgressBar.this.activeTransferX = 1.0f;
                }
            });
            this.scaleAnimator = valueAnimatorOfFloat;
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.tAnimator = valueAnimatorOfFloat2;
            if (valueAnimatorOfFloat2 != null) {
                valueAnimatorOfFloat2.setDuration(300L);
            }
            ValueAnimator valueAnimator3 = this.tAnimator;
            if (valueAnimator3 != null) {
                valueAnimator3.setInterpolator(new DecelerateInterpolator());
            }
            ValueAnimator valueAnimator4 = this.tAnimator;
            if (valueAnimator4 != null) {
                valueAnimator4.addListener(new Animator.AnimatorListener() { // from class: com.narvii.widgets.StoryProgressBar.setCurSceneIndex.3
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(@NotNull Animator animation) {
                        t.j(animation, "animation");
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(@NotNull Animator animation) {
                        t.j(animation, "animation");
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(@NotNull Animator animation) {
                        ValueAnimator valueAnimator5;
                        t.j(animation, "animation");
                        if (!StoryProgressBar.this.isPaused && (valueAnimator5 = StoryProgressBar.this.scaleAnimator) != null) {
                            valueAnimator5.start();
                        }
                        StoryProgressBar.this.activeTransferX = 1.0f;
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(@NotNull Animator animation) {
                        t.j(animation, "animation");
                        StoryProgressBar storyProgressBar = StoryProgressBar.this;
                        storyProgressBar.startScale = storyProgressBar.activeScale;
                        StoryProgressBar.this.activeTransferX = z6 ? 0.01f : -0.01f;
                        ValueAnimator valueAnimator5 = StoryProgressBar.this.scaleAnimator;
                        if (valueAnimator5 != null) {
                            valueAnimator5.cancel();
                        }
                    }
                });
            }
            ValueAnimator valueAnimator5 = this.tAnimator;
            if (valueAnimator5 != null) {
                valueAnimator5.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widgets.b
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator6) {
                        StoryProgressBar.setCurSceneIndex$lambda$2(this.f3084a, z6, valueAnimator6);
                    }
                });
            }
            ValueAnimator valueAnimator6 = this.tAnimator;
            if (valueAnimator6 != null) {
                valueAnimator6.start();
            }
            this.transferAnimator = this.tAnimator;
        }
    }

    public final void setStory(@Nullable String str, @Nullable List<? extends StorySceneMilestone> list) {
        if (Utils.isEqualsNotNull(this.storyId, str) && KUtils.Companion.isListSame(list, this.milestoneList, AnonymousClass1.INSTANCE)) {
            return;
        }
        this.storyId = str;
        this.milestoneList = list;
        this.interActSceneList.clear();
        this.milestoneSize = list != null ? list.size() : 0;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (list.get(i10).containsPollOrQuiz()) {
                    this.interActSceneList.add(Integer.valueOf(i10));
                }
            }
        }
        this.activeScale = 1.0f;
        this.activeAlpha = 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setCurSceneIndex$lambda$1(StoryProgressBar this$0, ValueAnimator animation) {
        t.j(this$0, "this$0");
        t.j(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        t.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        this$0.activeScale = (((Float) animatedValue).floatValue() * 8.8f) + 1.2f;
        Object animatedValue2 = animation.getAnimatedValue();
        t.h(animatedValue2, "null cannot be cast to non-null type kotlin.Float");
        float fFloatValue = 1.0f - (((Float) animatedValue2).floatValue() * 2.0f);
        this$0.activeAlpha = fFloatValue;
        if (fFloatValue < 0.0f) {
            this$0.activeAlpha = 0.0f;
        }
        this$0.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setCurSceneIndex$lambda$2(StoryProgressBar this$0, boolean z6, ValueAnimator animation) {
        t.j(this$0, "this$0");
        t.j(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        t.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float fFloatValue = ((Float) animatedValue).floatValue();
        this$0.activeTransferX = fFloatValue;
        if (!z6) {
            fFloatValue *= -1;
        }
        this$0.activeTransferX = fFloatValue;
        if (!z6 && fFloatValue == 0.0f) {
            this$0.activeTransferX = -0.01f;
        }
        this$0.invalidate();
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

    public final void updatePlayedPollQuiz() {
        invalidate();
    }
}
