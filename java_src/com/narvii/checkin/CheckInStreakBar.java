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
import com.narvii.amino.R;
import com.narvii.util.CollectionUtils;
import com.narvii.util.ScaleBounceHelper;
import com.narvii.util.Utils;
import java.util.List;

/* loaded from: classes2.dex */
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

    public CheckInStreakBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.circleCount = 7;
        this.bounds = new Rect();
        this.paint = new Paint(1);
        this.paint.setColor(-1);
        this.paint.setStyle(Paint.Style.FILL);
        setWillNotDraw(false);
        setClipChildren(false);
        setClipToPadding(false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CheckInStreakBar);
        this.circleSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.childMaxSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.streakMode = typedArrayObtainStyledAttributes.getInteger(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        if (this.streakMode == 1) {
            this.daysMarginTop = Utils.dpToPxInt(getContext(), 8.0f);
            this.textPaint = new TextPaint();
            this.textPaint.setColor(-1);
            this.textPaint.setStyle(Paint.Style.FILL);
            this.textPaint.setAntiAlias(true);
            this.textPaint.setTextAlign(Paint.Align.CENTER);
            this.textPaint.setTextSize(Utils.dpToPx(getContext(), 11.0f));
        }
    }

    public int getChildMaxSize() {
        return this.childMaxSize;
    }

    public int getCircleCount() {
        return this.circleCount;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.ws = i;
        this.hs = i2;
        if (View.MeasureSpec.getMode(i2) != 1073741824) {
            int size = View.MeasureSpec.getSize(i);
            int paddingTop = this.childMaxSize + getPaddingTop() + getPaddingBottom();
            if (this.streakMode == 1) {
                paddingTop = (int) (paddingTop + (this.textPaint.descent() - this.textPaint.ascent()) + this.daysMarginTop);
            }
            setMeasuredDimension(size, paddingTop);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        Animation animation;
        super.onAttachedToWindow();
        View view = this.animatingView;
        if (view == null || (animation = this.breathAnimation) == null) {
            return;
        }
        view.startAnimation(animation);
    }

    public View getLastNeedFixView() {
        return this.lastNeedFixView;
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
        for (int i = 0; i < size; i++) {
            if (!Utils.isEquals(this.list.get(i), list.get(i))) {
                return false;
            }
        }
        return true;
    }

    private Integer getLastCell(List<Integer> list) {
        if (CollectionUtils.isEmpty(list)) {
            return null;
        }
        return list.get(list.size() - 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void viewFadeOut(final View view, int i) {
        this.fadeOutAnimator = AnimatorInflater.loadAnimator(getContext(), com.narvii.amino.mastes.R.animator.mater_tab_icon_anim_out);
        this.fadeOutAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.checkin.CheckInStreakBar.1
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
        this.fadeOutAnimator.setDuration(i);
        this.fadeOutAnimator.setTarget(view);
        this.fadeOutAnimator.start();
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
            for (int i = 0; i < childCount; i++) {
                removeViewAt(0);
            }
        } else if (childCount < 0) {
            for (int i2 = 0; i2 < (-childCount); i2++) {
                View viewInflate = LayoutInflater.from(getContext()).inflate(com.narvii.amino.mastes.R.layout.check_in_streak_normal_cell, (ViewGroup) this, false);
                int i3 = this.childMaxSize;
                viewInflate.setLayoutParams(new FrameLayout.LayoutParams(i3, i3));
                addView(viewInflate);
            }
        }
        this.waitingLayout = true;
        this.animatingView = null;
        this.lastNeedFixView = null;
        this.lostView = null;
        int i4 = 0;
        while (true) {
            if (i4 >= size) {
                break;
            }
            int iIntValue = list.get(i4).intValue();
            View childAt = getChildAt(i4);
            childAt.setOnClickListener(null);
            View viewFindViewById2 = childAt.findViewById(com.narvii.amino.mastes.R.id.not_checked_today);
            View viewFindViewById3 = childAt.findViewById(com.narvii.amino.mastes.R.id.main_layout);
            View viewFindViewById4 = viewFindViewById2.findViewById(com.narvii.amino.mastes.R.id.green);
            if (iIntValue != 4) {
                viewFindViewById4.clearAnimation();
                childAt.findViewById(com.narvii.amino.mastes.R.id.bg).setBackgroundResource(com.narvii.amino.mastes.R.drawable.white_oval);
                viewFindViewById3.setVisibility(0);
                viewFindViewById2.setVisibility(8);
                ImageView imageView = (ImageView) childAt.findViewById(com.narvii.amino.mastes.R.id.icon);
                if (iIntValue == 1) {
                    imageView.setImageResource(com.narvii.amino.mastes.R.drawable.ic_check_in_streak_lost);
                    this.lostView = childAt;
                } else if (iIntValue == 2) {
                    imageView.setImageResource(com.narvii.amino.mastes.R.drawable.ic_check_in_streak_checked);
                } else if (iIntValue == 3) {
                    this.lastNeedFixView = childAt;
                    imageView.setImageResource(com.narvii.amino.mastes.R.drawable.ic_check_in_streak_not_checked);
                }
                i4++;
            } else {
                viewFindViewById3.setVisibility(8);
                viewFindViewById2.setVisibility(0);
                this.animatingView = viewFindViewById4;
                if (this.breathAnimation == null) {
                    this.breathAnimation = new AlphaAnimation(1.0f, 0.3f);
                    this.breathAnimation.setDuration(1000L);
                    this.breathAnimation.setRepeatCount(-1);
                    this.breathAnimation.setRepeatMode(2);
                }
                this.animatingView.startAnimation(this.breathAnimation);
            }
        }
        if (this.streakMode == 1 && (view = this.lastNeedFixView) != null && (viewFindViewById = view.findViewById(com.narvii.amino.mastes.R.id.bg)) != null) {
            viewFindViewById.setBackgroundResource(com.narvii.amino.mastes.R.drawable.green_oval);
        }
        requestLayout();
    }

    private void startCheckInAnimation(List<Integer> list) {
        this.list = list;
        this.lineAnimating = true;
        this.lineProgress = 0.0f;
        this.lineAnimator = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.lineAnimator.setDuration(300L);
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
                View childAt = CheckInStreakBar.this.getChildAt(r8.getChildCount() - 1);
                if (childAt == null) {
                    return;
                }
                View viewFindViewById = childAt.findViewById(com.narvii.amino.mastes.R.id.main_layout);
                ((ImageView) viewFindViewById.findViewById(com.narvii.amino.mastes.R.id.icon)).setImageResource(com.narvii.amino.mastes.R.drawable.ic_check_in_streak_checked);
                CheckInStreakBar checkInStreakBar = CheckInStreakBar.this;
                checkInStreakBar.scaleBounceHelper = new ScaleBounceHelper(checkInStreakBar.getContext(), viewFindViewById, CheckInStreakBar.scaleArray, CheckInStreakBar.timeArray);
                CheckInStreakBar.this.scaleBounceHelper.playSeq();
                viewFindViewById.setVisibility(0);
                CheckInStreakBar.this.viewFadeOut(childAt.findViewById(com.narvii.amino.mastes.R.id.not_checked_today), 200);
            }
        });
        this.lineAnimator.start();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.waitingLayout = false;
        layoutCells();
    }

    private void setTouchDelegateForLostView() {
        View view = this.lostView;
        if (view != null) {
            view.getHitRect(this.bounds);
            int lineWidth = (int) getLineWidth();
            Rect rect = this.bounds;
            int i = lineWidth / 2;
            rect.left -= i;
            if (rect.left < 0) {
                rect.left = 0;
            }
            Rect rect2 = this.bounds;
            rect2.right += i;
            if (rect2.right > getWidth()) {
                this.bounds.right = getWidth();
            }
            setTouchDelegate(new TouchDelegate(this.bounds, this.lostView));
            return;
        }
        setTouchDelegate(null);
    }

    private void layoutCells() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            int centerX = (int) getCenterX(i);
            int paddingTop = (int) ((this.childMaxSize / 2.0f) + getPaddingTop());
            if (childAt != null) {
                childAt.layout(centerX - (childAt.getMeasuredWidth() / 2), paddingTop - (childAt.getMeasuredHeight() / 2), centerX + (childAt.getMeasuredWidth() / 2), paddingTop + (childAt.getMeasuredHeight() / 2));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        String string;
        super.onDraw(canvas);
        this.paint.setAlpha(127);
        canvas.drawPath(getPath(this.circleCount - 1, true), this.paint);
        this.paint.setAlpha(255);
        int size = CollectionUtils.getSize(this.list) - 1;
        if (!CollectionUtils.isEmpty(this.list)) {
            List<Integer> list = this.list;
            if (list.get(list.size() - 1).intValue() == 4) {
                size--;
            }
        }
        canvas.drawPath(getPath(size, false), this.paint);
        if (this.list == null || this.streakMode != 1) {
            return;
        }
        int i = 0;
        while (i < this.circleCount) {
            if (i == this.list.size() - 1) {
                string = getContext().getString(com.narvii.amino.mastes.R.string.today);
            } else {
                string = (i + 1) + "";
            }
            canvas.drawText(string, getCenterX(i), ((this.childMaxSize + getPaddingTop()) - this.textPaint.ascent()) + Utils.dpToPxInt(getContext(), 7.0f), this.textPaint);
            i++;
        }
    }

    private float getCenterX(int i) {
        if (Utils.isRtl()) {
            return (getWidth() - getPaddingRight()) - ((this.childMaxSize / 2.0f) + (getLineWidth() * i));
        }
        return getPaddingLeft() + (this.childMaxSize / 2.0f) + (getLineWidth() * i);
    }

    private float getLineWidth() {
        return ((((getWidth() - getPaddingLeft()) - getPaddingRight()) - this.childMaxSize) * 1.0f) / (this.circleCount - 1);
    }

    public Path getPath(int i, boolean z) {
        float paddingLeft;
        float paddingLeft2;
        boolean z2 = !z && this.lineAnimating;
        if (z2) {
            i--;
        }
        float lineWidth = getLineWidth();
        Path path = new Path();
        for (int i2 = 0; i2 <= i; i2++) {
            path.addCircle(getCenterX(i2), (this.childMaxSize / 2.0f) + getPaddingTop(), this.circleSize / 2.0f, Path.Direction.CW);
        }
        float f = this.circleSize / 3.0f;
        float paddingTop = getPaddingTop();
        int i3 = this.childMaxSize;
        float f2 = paddingTop + ((i3 - f) / 2.0f);
        float f3 = (i3 / 2.0f) + (lineWidth * (i + (z2 ? this.lineProgress : 0.0f)));
        if (Utils.isRtl()) {
            paddingLeft = (getWidth() - getPaddingRight()) - f3;
        } else {
            paddingLeft = getPaddingLeft() + (this.childMaxSize / 2.0f);
        }
        if (Utils.isRtl()) {
            paddingLeft2 = getWidth() - (getPaddingRight() + (this.childMaxSize / 2.0f));
        } else {
            paddingLeft2 = getPaddingLeft() + f3;
        }
        path.addRect(new RectF(paddingLeft, f2, paddingLeft2, f + f2), Path.Direction.CW);
        return path;
    }
}
