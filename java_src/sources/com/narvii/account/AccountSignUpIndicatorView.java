package com.narvii.account;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.util.FontAwesomeDrawable;
import com.narvii.util.Utils;
import com.narvii.widget.CheckMarkView;
import com.narvii.widget.SpinDrawable;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes9.dex */
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
        void onIndicatorClicked(int i10);
    }

    public interface IndicatorSuccessFinishedListener {
        void onTotallySuccess();
    }

    public AccountSignUpIndicatorView(@NonNull Context context) {
        this(context, null);
    }

    public int getCurStatus() {
        return this.status;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public void setIndicatorClickListener(IndicatorClickListener indicatorClickListener) {
        this.clickListener = indicatorClickListener;
    }

    public void setSuccessFinishedListener(IndicatorSuccessFinishedListener indicatorSuccessFinishedListener) {
        this.successFinishedListener = indicatorSuccessFinishedListener;
    }

    public AccountSignUpIndicatorView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
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
        View.inflate(context, R.layout.account_signup_indicator_layout, this);
        initDrawables(context);
    }

    public void setIndicatorColor(int i10) {
        this.readyDrawable.setColorFilter(i10, PorterDuff.Mode.SRC_IN);
        this.loadingDrawable.setLoadingColor(i10);
        this.refreshDrawable.setColor(i10);
        this.successView.setColor(i10);
    }

    public void updateStatus(final int i10) {
        if (this.status == i10) {
            return;
        }
        this.status = i10;
        if (i10 != 2 && this.loadingDrawable.isRunning()) {
            this.loadingDrawable.stop();
        }
        this.successView.setVisibility(i10 != 3 ? 8 : 0);
        this.imgStatus.setVisibility(i10 != 3 ? 0 : 8);
        boolean z6 = true;
        if (i10 == 0 || i10 == 1) {
            this.imgStatus.setImageDrawable(this.readyDrawable);
        } else if (i10 == 2) {
            this.loadingDrawable.start();
            this.imgStatus.setImageDrawable(this.loadingDrawable);
        } else if (i10 == 3) {
            this.isSuccessAnimationRunning = true;
            this.successView.showChecked(this.successAnimationListener);
        } else if (i10 == 5) {
            this.imgStatus.setImageDrawable(this.refreshDrawable);
        }
        setAlpha(i10 == 0 ? 0.5f : 1.0f);
        setOnClickListener(new View.OnClickListener() { // from class: com.narvii.account.AccountSignUpIndicatorView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (AccountSignUpIndicatorView.this.clickListener != null) {
                    AccountSignUpIndicatorView.this.clickListener.onIndicatorClicked(i10);
                }
            }
        });
        if (i10 != 0 && i10 != 1) {
            z6 = false;
        }
        setClickable(z6);
        this.imgStatusBg.setShadowSize(i10 != 0 ? (int) Utils.dpToPx(getContext(), 2.0f) : 0);
        ViewCompat.k0(this);
    }

    private void initDrawables(Context context) {
        this.readyDrawable = ContextCompat.getDrawable(context, R.drawable.ic_signup_indicator_chevron_mirror);
        this.loadingDrawable = new SpinDrawable();
        FontAwesomeDrawable fontAwesomeDrawable = new FontAwesomeDrawable(context, R.string.ion_refresh);
        this.refreshDrawable = fontAwesomeDrawable;
        fontAwesomeDrawable.setColor(SpinDrawable.DEFAULT_COLOR);
        this.successDrawable = ContextCompat.getDrawable(context, R.drawable.clip_signup_status_checked);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSetPressed(boolean z6) {
        super.dispatchSetPressed(z6);
        invalidate();
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j6) {
        int iSave;
        if (isPressed() && this.status != 0) {
            iSave = canvas.save();
            canvas.scale(0.85f, 0.85f, getWidth() / 2.0f, getHeight() / 2.0f);
        } else {
            iSave = -1;
        }
        boolean zDrawChild = super.drawChild(canvas, view, j6);
        if (iSave != -1) {
            canvas.restoreToCount(iSave);
        }
        return zDrawChild;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.imgStatus = (ImageView) findViewById(R.id.status);
        this.imgStatusBg = (ThumbImageView) findViewById(R.id.status_bg);
        this.successView = (CheckMarkView) findViewById(R.id.success);
        updateStatus(0);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i10) {
        int i11;
        super.onVisibilityChanged(view, i10);
        int i12 = 0;
        if (i10 == 0) {
            if (this.status == 2 && !this.loadingDrawable.isRunning()) {
                this.loadingDrawable.start();
            } else if (this.status == 3 && !this.isSuccessAnimationRunning) {
                this.successView.reset(this.successAnimationListener);
                this.isSuccessAnimationRunning = true;
            }
            CheckMarkView checkMarkView = this.successView;
            if (this.status != 3) {
                i11 = 8;
            } else {
                i11 = 0;
            }
            checkMarkView.setVisibility(i11);
            ImageView imageView = this.imgStatus;
            if (this.status == 3) {
                i12 = 8;
            }
            imageView.setVisibility(i12);
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
}
