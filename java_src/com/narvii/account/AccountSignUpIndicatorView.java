package com.narvii.account;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.mastes.R;
import com.narvii.util.FontAwesomeDrawable;
import com.narvii.util.Utils;
import com.narvii.widget.CheckMarkView;
import com.narvii.widget.SpinDrawable;
import com.narvii.widget.ThumbImageView;

/* loaded from: classes2.dex */
public class AccountSignUpIndicatorView extends FlexLayout {
    public static final int STATUS_FAIL = 5;
    public static final int STATUS_LOADING = 2;
    public static final int STATUS_READY = 1;
    public static final int STATUS_SUCCESS = 3;
    public static final int STATUS_UN_READY = 0;
    public static final int SUCCESS_DURATION = 500;
    private IndicatorClickListener clickListener;
    private ImageView imgStatus;
    private ThumbImageView imgStatusBg;
    private boolean isSuccessAnimationRunning;
    private SpinDrawable loadingDrawable;
    private Drawable readyDrawable;
    private FontAwesomeDrawable refreshDrawable;
    private int status;
    private ValueAnimator.AnimatorUpdateListener successAnimationListener;
    private Drawable successDrawable;
    private IndicatorSuccessFinishedListener successFinishedListener;
    private CheckMarkView successView;

    public interface IndicatorClickListener {
        void onIndicatorClicked(int i);
    }

    public interface IndicatorSuccessFinishedListener {
        void onTotallySuccess();
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public AccountSignUpIndicatorView(Context context) {
        this(context, null);
    }

    public AccountSignUpIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.status = -1;
        this.successAnimationListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.account.AccountSignUpIndicatorView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (((Float) valueAnimator.getAnimatedValue()).floatValue() >= 1.0f) {
                    AccountSignUpIndicatorView.this.isSuccessAnimationRunning = false;
                    if (AccountSignUpIndicatorView.this.successFinishedListener != null) {
                        AccountSignUpIndicatorView.this.successFinishedListener.onTotallySuccess();
                    }
                }
            }
        };
        ViewGroup.inflate(context, R.layout.account_signup_indicator_layout, this);
        initDrawables(context);
    }

    public void setIndicatorClickListener(IndicatorClickListener indicatorClickListener) {
        this.clickListener = indicatorClickListener;
    }

    public void setSuccessFinishedListener(IndicatorSuccessFinishedListener indicatorSuccessFinishedListener) {
        this.successFinishedListener = indicatorSuccessFinishedListener;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            if (this.status == 2 && !this.loadingDrawable.isRunning()) {
                this.loadingDrawable.start();
            } else if (this.status == 3 && !this.isSuccessAnimationRunning) {
                this.successView.reset(this.successAnimationListener);
                this.isSuccessAnimationRunning = true;
            }
            this.successView.setVisibility(this.status != 3 ? 8 : 0);
            this.imgStatus.setVisibility(this.status != 3 ? 0 : 8);
            return;
        }
        if (this.status == 2 && this.loadingDrawable.isRunning()) {
            this.loadingDrawable.stop();
        } else if (this.status == 3 && this.isSuccessAnimationRunning) {
            this.isSuccessAnimationRunning = true;
            this.successView.cancelAnimation();
            this.isSuccessAnimationRunning = false;
        }
    }

    private void initDrawables(Context context) {
        this.readyDrawable = ContextCompat.getDrawable(context, R.drawable.ic_signup_indicator_chevron_mirror);
        this.loadingDrawable = new SpinDrawable();
        this.refreshDrawable = new FontAwesomeDrawable(context, R.string.ion_refresh);
        this.refreshDrawable.setColor(SpinDrawable.DEFAULT_COLOR);
        this.successDrawable = ContextCompat.getDrawable(context, R.drawable.clip_signup_status_checked);
    }

    public void setIndicatorColor(int i) {
        this.readyDrawable.setColorFilter(i, PorterDuff.Mode.SRC_IN);
        this.loadingDrawable.setLoadingColor(i);
        this.refreshDrawable.setColor(i);
        this.successView.setColor(i);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.imgStatus = (ImageView) findViewById(R.id.status);
        this.imgStatusBg = (ThumbImageView) findViewById(R.id.status_bg);
        this.successView = (CheckMarkView) findViewById(R.id.success);
        updateStatus(0);
    }

    public void updateStatus(final int i) {
        if (this.status == i) {
            return;
        }
        this.status = i;
        if (i != 2 && this.loadingDrawable.isRunning()) {
            this.loadingDrawable.stop();
        }
        this.successView.setVisibility(i != 3 ? 8 : 0);
        this.imgStatus.setVisibility(i != 3 ? 0 : 8);
        boolean z = true;
        if (i == 0 || i == 1) {
            this.imgStatus.setImageDrawable(this.readyDrawable);
        } else if (i == 2) {
            this.loadingDrawable.start();
            this.imgStatus.setImageDrawable(this.loadingDrawable);
        } else if (i == 3) {
            this.isSuccessAnimationRunning = true;
            this.successView.showChecked(this.successAnimationListener);
        } else if (i == 5) {
            this.imgStatus.setImageDrawable(this.refreshDrawable);
        }
        setAlpha(i == 0 ? 0.5f : 1.0f);
        setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.AccountSignUpIndicatorView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (AccountSignUpIndicatorView.this.clickListener != null) {
                    AccountSignUpIndicatorView.this.clickListener.onIndicatorClicked(i);
                }
            }
        });
        if (i != 0 && i != 1) {
            z = false;
        }
        setClickable(z);
        this.imgStatusBg.setShadowSize(i != 0 ? (int) Utils.dpToPx(getContext(), 2.0f) : 0);
        ViewCompat.postInvalidateOnAnimation(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSetPressed(boolean z) {
        super.dispatchSetPressed(z);
        invalidate();
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        int iSave;
        if (!isPressed() || this.status == 0) {
            iSave = -1;
        } else {
            iSave = canvas.save();
            canvas.scale(0.85f, 0.85f, getWidth() / 2.0f, getHeight() / 2.0f);
        }
        boolean zDrawChild = super.drawChild(canvas, view, j);
        if (iSave != -1) {
            canvas.restoreToCount(iSave);
        }
        return zDrawChild;
    }

    public int getCurStatus() {
        return this.status;
    }
}
