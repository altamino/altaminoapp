package com.narvii.video.ui.floating;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.text.TextUtilsCompat;
import com.narvii.video.R;
import java.util.Locale;

/* JADX INFO: loaded from: classes8.dex */
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

    public FloatingWindowBaseLayout(@NonNull Context context) {
        this(context, null);
    }

    private boolean isViewContains(View view, float f, float f6) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i10 = iArr[0];
        int i11 = iArr[1];
        return f >= ((float) i10) && f <= ((float) (i10 + view.getWidth())) && f6 >= ((float) i11) && f6 <= ((float) (i11 + view.getHeight()));
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public void setListener(FloatingClickEvent floatingClickEvent) {
        this.listener = floatingClickEvent;
    }

    public void setParams(WindowManager.LayoutParams layoutParams) {
        this.mParams = layoutParams;
    }

    public FloatingWindowBaseLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.windowManager = (WindowManager) context.getSystemService("window");
        this.statusBarHeight = getStatusBarHeight();
        int iApplyDimension = (int) TypedValue.applyDimension(1, 8.0f, getContext().getResources().getDisplayMetrics());
        this.marginLeft = iApplyDimension;
        this.marginRight = iApplyDimension - getContext().getResources().getDimensionPixelSize(R.dimen.floating_close_padding);
        if (isRtl()) {
            int i10 = this.marginLeft;
            this.marginLeft = this.marginRight;
            this.marginRight = i10;
        }
    }

    private void updateViewPosition() {
        WindowManager.LayoutParams layoutParams = this.mParams;
        int i10 = (int) (this.xInScreen - this.xInView);
        layoutParams.x = i10;
        int i11 = (int) (this.yInScreen - this.yInView);
        layoutParams.y = i11;
        int i12 = this.marginLeft;
        if (i10 < i12) {
            layoutParams.x = i12;
        }
        int i13 = this.margin;
        if (i11 < i13) {
            layoutParams.y = i13;
        }
        int width = this.windowManager.getDefaultDisplay().getWidth();
        int height = this.windowManager.getDefaultDisplay().getHeight();
        int width2 = this.mParams.x + getWidth();
        int i14 = this.marginRight;
        if (width2 > width - i14) {
            this.mParams.x = (width - i14) - getWidth();
        }
        int height2 = this.mParams.y + getHeight();
        int i15 = this.margin;
        if (height2 > height - i15) {
            this.mParams.y = (height - i15) - getHeight();
        }
        this.windowManager.updateViewLayout(this, this.mParams);
    }

    protected void hideEndedView() {
        View view = this.endedView;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    protected void hideWarningView() {
        View view = this.warningView;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    protected void showEndedView() {
        View view = this.endedView;
        if (view != null) {
            view.setVisibility(0);
        }
        hideWarningView();
    }

    protected void showWarningView() {
        View view = this.warningView;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    private boolean isRtl() {
        if (TextUtilsCompat.a(Locale.getDefault()) == 1) {
            return true;
        }
        return false;
    }

    protected int getStatusBarHeight() {
        int identifier = getContext().getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier != 0) {
            return getContext().getResources().getDimensionPixelSize(identifier);
        }
        return (int) TypedValue.applyDimension(1, 24.0f, getContext().getResources().getDisplayMetrics());
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.btnClose = findViewById(R.id.close);
        this.endedView = findViewById(R.id.ended);
        this.warningView = findViewById(R.id.warning);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
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
                ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.mParams.x, width);
                this.animation = valueAnimatorOfInt;
                valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.video.ui.floating.FloatingWindowBaseLayout.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        FloatingWindowBaseLayout.this.mParams.x = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                        try {
                            WindowManager windowManager = FloatingWindowBaseLayout.this.windowManager;
                            FloatingWindowBaseLayout floatingWindowBaseLayout = FloatingWindowBaseLayout.this;
                            windowManager.updateViewLayout(floatingWindowBaseLayout, floatingWindowBaseLayout.mParams);
                        } catch (Exception unused) {
                        }
                    }
                });
                this.animation.setDuration(100L);
                this.animation.start();
            }
        } else {
            this.xInView = motionEvent.getX();
            this.yInView = motionEvent.getY();
            this.xDownInScreen = motionEvent.getRawX();
            this.yDownInScreen = motionEvent.getRawY();
            this.xInScreen = motionEvent.getRawX();
            this.yInScreen = motionEvent.getRawY();
        }
        return true;
    }
}
