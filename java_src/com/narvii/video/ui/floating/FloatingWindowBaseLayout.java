package com.narvii.video.ui.floating;

import android.animation.ValueAnimator;
import android.content.Context;
import android.support.v4.text.TextUtilsCompat;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.narvii.video.R;
import java.util.Locale;

/* loaded from: classes3.dex */
public class FloatingWindowBaseLayout extends FrameLayout {
    private static final int THRESHOLD = 10;
    public ValueAnimator animation;
    private View btnClose;
    private View endedView;
    FloatingClickEvent listener;
    private WindowManager.LayoutParams mParams;
    private int margin;
    private int marginLeft;
    private int marginRight;
    private int statusBarHeight;
    private View warningView;
    private WindowManager windowManager;
    private float xDownInScreen;
    private float xInScreen;
    private float xInView;
    private float yDownInScreen;
    private float yInScreen;
    private float yInView;

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public FloatingWindowBaseLayout(Context context) {
        this(context, null);
    }

    public FloatingWindowBaseLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.windowManager = (WindowManager) context.getSystemService("window");
        this.statusBarHeight = getStatusBarHeight();
        this.marginLeft = (int) TypedValue.applyDimension(1, 8.0f, getContext().getResources().getDisplayMetrics());
        this.marginRight = this.marginLeft - getContext().getResources().getDimensionPixelSize(R.dimen.floating_close_padding);
        if (isRtl()) {
            int i = this.marginLeft;
            this.marginLeft = this.marginRight;
            this.marginRight = i;
        }
    }

    private boolean isRtl() {
        return TextUtilsCompat.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }

    public void setListener(FloatingClickEvent floatingClickEvent) {
        this.listener = floatingClickEvent;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.btnClose = findViewById(R.id.close);
        this.endedView = findViewById(R.id.ended);
        this.warningView = findViewById(R.id.warning);
    }

    public void setParams(WindowManager.LayoutParams layoutParams) {
        this.mParams = layoutParams;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.xInView = motionEvent.getX();
            this.yInView = motionEvent.getY();
            this.xDownInScreen = motionEvent.getRawX();
            this.yDownInScreen = motionEvent.getRawY();
            this.xInScreen = motionEvent.getRawX();
            this.yInScreen = motionEvent.getRawY();
        } else if (action != 1) {
            if (action == 2) {
                this.xInScreen = motionEvent.getRawX();
                this.yInScreen = motionEvent.getRawY();
                updateViewPosition();
                ValueAnimator valueAnimator = this.animation;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.animation.cancel();
                }
            }
        } else if (Math.abs(this.xDownInScreen - this.xInScreen) < 10.0f && Math.abs(this.yDownInScreen - this.yInScreen) < 10.0f) {
            if (this.listener != null) {
                View view = this.btnClose;
                if (view != null && isViewContains(view, this.xInScreen, this.yInScreen)) {
                    this.listener.onCloseClicked();
                } else {
                    this.listener.onTotalClicked();
                }
            }
        } else {
            if (this.mParams == null) {
                return true;
            }
            int width = this.marginLeft;
            int width2 = this.windowManager.getDefaultDisplay().getWidth();
            if (this.mParams.x + (getWidth() / 2) > width2 / 2) {
                width = (width2 - getWidth()) - this.marginRight;
            }
            this.animation = ValueAnimator.ofInt(this.mParams.x, width);
            this.animation.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.video.ui.floating.FloatingWindowBaseLayout.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    FloatingWindowBaseLayout.this.mParams.x = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                    try {
                        FloatingWindowBaseLayout.this.windowManager.updateViewLayout(FloatingWindowBaseLayout.this, FloatingWindowBaseLayout.this.mParams);
                    } catch (Exception unused) {
                    }
                }
            });
            this.animation.setDuration(100L);
            this.animation.start();
        }
        return true;
    }

    private boolean isViewContains(View view, float f, float f2) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        return f >= ((float) i) && f <= ((float) (i + view.getWidth())) && f2 >= ((float) i2) && f2 <= ((float) (i2 + view.getHeight()));
    }

    private void updateViewPosition() {
        WindowManager.LayoutParams layoutParams = this.mParams;
        layoutParams.x = (int) (this.xInScreen - this.xInView);
        layoutParams.y = (int) (this.yInScreen - this.yInView);
        int i = layoutParams.x;
        int i2 = this.marginLeft;
        if (i < i2) {
            layoutParams.x = i2;
        }
        WindowManager.LayoutParams layoutParams2 = this.mParams;
        int i3 = layoutParams2.y;
        int i4 = this.margin;
        if (i3 < i4) {
            layoutParams2.y = i4;
        }
        int width = this.windowManager.getDefaultDisplay().getWidth();
        int height = this.windowManager.getDefaultDisplay().getHeight();
        int width2 = this.mParams.x + getWidth();
        int i5 = this.marginRight;
        if (width2 > width - i5) {
            this.mParams.x = (width - i5) - getWidth();
        }
        int height2 = this.mParams.y + getHeight();
        int i6 = this.margin;
        if (height2 > height - i6) {
            this.mParams.y = (height - i6) - getHeight();
        }
        this.windowManager.updateViewLayout(this, this.mParams);
    }

    protected void showEndedView() {
        View view = this.endedView;
        if (view != null) {
            view.setVisibility(0);
        }
        hideWarningView();
    }

    protected void hideEndedView() {
        View view = this.endedView;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    protected void showWarningView() {
        View view = this.warningView;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    protected void hideWarningView() {
        View view = this.warningView;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    protected int getStatusBarHeight() {
        int identifier = getContext().getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier != 0) {
            return getContext().getResources().getDimensionPixelSize(identifier);
        }
        return (int) TypedValue.applyDimension(1, 24.0f, getContext().getResources().getDisplayMetrics());
    }
}
