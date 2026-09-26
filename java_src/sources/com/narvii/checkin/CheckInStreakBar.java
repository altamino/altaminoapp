package com.narvii.checkin;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.util.CollectionUtils;
import com.narvii.util.ScaleBounceHelper;
import com.narvii.util.Utils;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class CheckInStreakBar extends FrameLayout {
    public static final int TYPE_CHECKED = 2;
    public static final int TYPE_NOT_CHECKED = 3;
    public static final int TYPE_NOT_CHECKED_TODAY = 4;
    public static final int TYPE_STRIKE_LOST = 1;
    public static final float[] scaleArray = {0.8f, 1.1f, 0.95f, 1.03f, 1.0f};
    public static final int[] timeArray = {0, 100, 185, 250, 280};
    private View animatingView;
    Rect bounds;
    private Animation breathAnimation;
    int childMaxSize;
    int circleCount;
    int circleSize;
    int daysMarginTop;
    private Animator fadeOutAnimator;
    int hs;
    private View lastNeedFixView;
    private boolean lineAnimating;
    private ValueAnimator lineAnimator;
    private float lineProgress;
    List<Integer> list;
    View lostView;
    Paint paint;
    private ScaleBounceHelper scaleBounceHelper;
    private int streakMode;
    private TextPaint textPaint;
    boolean waitingLayout;
    int ws;

    private void layoutCells() {
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            int centerX = (int) getCenterX(i10);
            int paddingTop = (int) ((this.childMaxSize / 2.0f) + getPaddingTop());
            if (childAt != null) {
                childAt.layout(centerX - (childAt.getMeasuredWidth() / 2), paddingTop - (childAt.getMeasuredHeight() / 2), centerX + (childAt.getMeasuredWidth() / 2), paddingTop + (childAt.getMeasuredHeight() / 2));
            }
        }
    }

    public int getChildMaxSize() {
        return this.childMaxSize;
    }

    public int getCircleCount() {
        return this.circleCount;
    }

    public View getLastNeedFixView() {
        return this.lastNeedFixView;
    }

    public Path getPath(int i10, boolean z6) {
        boolean z10 = !z6 && this.lineAnimating;
        if (z10) {
            i10--;
        }
        float lineWidth = getLineWidth();
        Path path = new Path();
        for (int i11 = 0; i11 <= i10; i11++) {
            path.addCircle(getCenterX(i11), (this.childMaxSize / 2.0f) + getPaddingTop(), this.circleSize / 2.0f, Path.Direction.CW);
        }
        float f = this.circleSize / 3.0f;
        float paddingTop = getPaddingTop();
        int i12 = this.childMaxSize;
        float f6 = paddingTop + ((i12 - f) / 2.0f);
        float f7 = (i12 / 2.0f) + (lineWidth * (i10 + (z10 ? this.lineProgress : 0.0f)));
        path.addRect(new RectF(Utils.isRtl() ? (getWidth() - getPaddingRight()) - f7 : getPaddingLeft() + (this.childMaxSize / 2.0f), f6, Utils.isRtl() ? getWidth() - (getPaddingRight() + (this.childMaxSize / 2.0f)) : getPaddingLeft() + f7, f + f6), Path.Direction.CW);
        return path;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        this.waitingLayout = false;
        layoutCells();
    }

    private void cancalAnimation() {
        ValueAnimator valueAnimator = this.lineAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.lineAnimator.end();
            this.lineAnimator = null;
        }
        ScaleBounceHelper scaleBounceHelper = this.scaleBounceHelper;
        if (scaleBounceHelper != null) {
            scaleBounceHelper.cancel();
            this.scaleBounceHelper = null;
        }
        Animator animator = this.fadeOutAnimator;
        if (animator == null || !animator.isRunning()) {
            return;
        }
        this.fadeOutAnimator.end();
        this.fadeOutAnimator = null;
    }

    private void setTouchDelegateForLostView() {
        View view = this.lostView;
        if (view == null) {
            setTouchDelegate(null);
            return;
        }
        view.getHitRect(this.bounds);
        int lineWidth = (int) getLineWidth();
        Rect rect = this.bounds;
        int i10 = lineWidth / 2;
        int i11 = rect.left - i10;
        rect.left = i11;
        if (i11 < 0) {
            rect.left = 0;
        }
        int i12 = rect.right + i10;
        rect.right = i12;
        if (i12 > getWidth()) {
            this.bounds.right = getWidth();
        }
        setTouchDelegate(new TouchDelegate(this.bounds, this.lostView));
    }

    private boolean shouldRunCheckInAnimation(List<Integer> list) {
        if (CollectionUtils.getSize(this.list) != CollectionUtils.getSize(list)) {
            return false;
        }
        Integer lastCell = getLastCell(this.list);
        Integer lastCell2 = getLastCell(list);
        if (lastCell == null || lastCell.intValue() != 4 || lastCell2 == null || lastCell2.intValue() != 2) {
            return false;
        }
        int size = this.list.size() - 1;
        for (int i10 = 0; i10 < size; i10++) {
            if (!Utils.isEquals(this.list.get(i10), list.get(i10))) {
                return false;
            }
        }
        return true;
    }

    private void startCheckInAnimation(List<Integer> list) {
        this.list = list;
        this.lineAnimating = true;
        this.lineProgress = 0.0f;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.lineAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(300L);
        this.lineAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.checkin.CheckInStreakBar.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CheckInStreakBar.this.lineProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CheckInStreakBar.this.invalidate();
            }
        });
        this.lineAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.checkin.CheckInStreakBar.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                CheckInStreakBar.this.lineAnimating = false;
                CheckInStreakBar.this.invalidate();
                CheckInStreakBar checkInStreakBar = CheckInStreakBar.this;
                View childAt = checkInStreakBar.getChildAt(checkInStreakBar.getChildCount() - 1);
                if (childAt == null) {
                    return;
                }
                View viewFindViewById = childAt.findViewById(R.id.main_layout);
                ((ImageView) viewFindViewById.findViewById(R.id.icon)).setImageResource(R.drawable.ic_check_in_streak_checked);
                CheckInStreakBar checkInStreakBar2 = CheckInStreakBar.this;
                checkInStreakBar2.scaleBounceHelper = new ScaleBounceHelper(checkInStreakBar2.getContext(), viewFindViewById, CheckInStreakBar.scaleArray, CheckInStreakBar.timeArray);
                CheckInStreakBar.this.scaleBounceHelper.playSeq();
                viewFindViewById.setVisibility(0);
                CheckInStreakBar.this.viewFadeOut(childAt.findViewById(R.id.not_checked_today), 200);
            }
        });
        this.lineAnimator.start();
    }

    public void updateCells(List<Integer> list) {
        View view;
        View viewFindViewById;
        if (list == null || Utils.isListEquals(this.list, list)) {
            return;
        }
        if (shouldRunCheckInAnimation(list)) {
            startCheckInAnimation(list);
            return;
        }
        cancalAnimation();
        this.list = list;
        int size = CollectionUtils.getSize(list);
        int childCount = getChildCount() - size;
        if (childCount > 0) {
            for (int i10 = 0; i10 < childCount; i10++) {
                removeViewAt(0);
            }
        } else if (childCount < 0) {
            for (int i11 = 0; i11 < (-childCount); i11++) {
                View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.check_in_streak_normal_cell, (ViewGroup) this, false);
                int i12 = this.childMaxSize;
                viewInflate.setLayoutParams(new FrameLayout.LayoutParams(i12, i12));
                addView(viewInflate);
            }
        }
        this.waitingLayout = true;
        this.animatingView = null;
        this.lastNeedFixView = null;
        this.lostView = null;
        for (int i13 = 0; i13 < size; i13++) {
            int iIntValue = list.get(i13).intValue();
            View childAt = getChildAt(i13);
            childAt.setOnClickListener(null);
            View viewFindViewById2 = childAt.findViewById(R.id.not_checked_today);
            View viewFindViewById3 = childAt.findViewById(R.id.main_layout);
            View viewFindViewById4 = viewFindViewById2.findViewById(R.id.green);
            if (iIntValue == 4) {
                viewFindViewById3.setVisibility(8);
                viewFindViewById2.setVisibility(0);
                this.animatingView = viewFindViewById4;
                if (this.breathAnimation == null) {
                    AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.3f);
                    this.breathAnimation = alphaAnimation;
                    alphaAnimation.setDuration(1000L);
                    this.breathAnimation.setRepeatCount(-1);
                    this.breathAnimation.setRepeatMode(2);
                }
                this.animatingView.startAnimation(this.breathAnimation);
                break;
            }
            viewFindViewById4.clearAnimation();
            childAt.findViewById(R.id.bg).setBackgroundResource(R.drawable.white_oval);
            viewFindViewById3.setVisibility(0);
            viewFindViewById2.setVisibility(8);
            ImageView imageView = (ImageView) childAt.findViewById(R.id.icon);
            if (iIntValue == 1) {
                imageView.setImageResource(R.drawable.ic_check_in_streak_lost);
                this.lostView = childAt;
            } else if (iIntValue == 2) {
                imageView.setImageResource(R.drawable.ic_check_in_streak_checked);
            } else if (iIntValue == 3) {
                this.lastNeedFixView = childAt;
                imageView.setImageResource(R.drawable.ic_check_in_streak_not_checked);
            }
        }
        if (this.streakMode == 1 && (view = this.lastNeedFixView) != null && (viewFindViewById = view.findViewById(R.id.bg)) != null) {
            viewFindViewById.setBackgroundResource(R.drawable.green_oval);
        }
        requestLayout();
    }

    public CheckInStreakBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.circleCount = 7;
        this.bounds = new Rect();
        Paint paint = new Paint(1);
        this.paint = paint;
        paint.setColor(-1);
        Paint paint2 = this.paint;
        Paint.Style style = Paint.Style.FILL;
        paint2.setStyle(style);
        setWillNotDraw(false);
        setClipChildren(false);
        setClipToPadding(false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.CheckInStreakBar);
        this.circleSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.childMaxSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.streakMode = typedArrayObtainStyledAttributes.getInteger(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        if (this.streakMode == 1) {
            this.daysMarginTop = Utils.dpToPxInt(getContext(), 8.0f);
            TextPaint textPaint = new TextPaint();
            this.textPaint = textPaint;
            textPaint.setColor(-1);
            this.textPaint.setStyle(style);
            this.textPaint.setAntiAlias(true);
            this.textPaint.setTextAlign(Paint.Align.CENTER);
            this.textPaint.setTextSize(Utils.dpToPx(getContext(), 11.0f));
        }
    }

    private float getCenterX(int i10) {
        if (Utils.isRtl()) {
            return (getWidth() - getPaddingRight()) - ((this.childMaxSize / 2.0f) + (getLineWidth() * i10));
        }
        return getPaddingLeft() + (this.childMaxSize / 2.0f) + (getLineWidth() * i10);
    }

    private Integer getLastCell(List<Integer> list) {
        if (CollectionUtils.isEmpty(list)) {
            return null;
        }
        return list.get(list.size() - 1);
    }

    private float getLineWidth() {
        return ((((getWidth() - getPaddingLeft()) - getPaddingRight()) - this.childMaxSize) * 1.0f) / (this.circleCount - 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void viewFadeOut(final View view, int i10) {
        Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(getContext(), R.animator.mater_tab_icon_anim_out);
        this.fadeOutAnimator = animatorLoadAnimator;
        animatorLoadAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.checkin.CheckInStreakBar.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                CheckInStreakBar.this.fadeOutAnimator.removeListener(this);
                view.setAlpha(1.0f);
                view.setScaleX(1.0f);
                view.setScaleY(1.0f);
                view.setVisibility(8);
            }
        });
        this.fadeOutAnimator.setDuration(i10);
        this.fadeOutAnimator.setTarget(view);
        this.fadeOutAnimator.start();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        Animation animation;
        super.onAttachedToWindow();
        View view = this.animatingView;
        if (view != null && (animation = this.breathAnimation) != null) {
            view.startAnimation(animation);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        String string;
        super.onDraw(canvas);
        this.paint.setAlpha(127);
        canvas.drawPath(getPath(this.circleCount - 1, true), this.paint);
        this.paint.setAlpha(255);
        int size = CollectionUtils.getSize(this.list);
        int i10 = size - 1;
        if (!CollectionUtils.isEmpty(this.list)) {
            List<Integer> list = this.list;
            if (list.get(list.size() - 1).intValue() == 4) {
                i10 = size - 2;
            }
        }
        canvas.drawPath(getPath(i10, false), this.paint);
        if (this.list != null && this.streakMode == 1) {
            for (int i11 = 0; i11 < this.circleCount; i11++) {
                if (i11 == this.list.size() - 1) {
                    string = getContext().getString(R.string.today);
                } else {
                    string = (i11 + 1) + "";
                }
                canvas.drawText(string, getCenterX(i11), ((this.childMaxSize + getPaddingTop()) - this.textPaint.ascent()) + Utils.dpToPxInt(getContext(), 7.0f), this.textPaint);
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        this.ws = i10;
        this.hs = i11;
        if (View.MeasureSpec.getMode(i11) != 1073741824) {
            int size = View.MeasureSpec.getSize(i10);
            int paddingTop = this.childMaxSize + getPaddingTop() + getPaddingBottom();
            if (this.streakMode == 1) {
                paddingTop = (int) (paddingTop + (this.textPaint.descent() - this.textPaint.ascent()) + this.daysMarginTop);
            }
            setMeasuredDimension(size, paddingTop);
        }
    }
}
