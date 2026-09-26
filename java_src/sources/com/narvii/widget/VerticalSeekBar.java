package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.core.view.ViewCompat;
import com.narvii.amino.R;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes7.dex */
public class VerticalSeekBar extends AppCompatSeekBar {
    public static final int ROTATION_ANGLE_CW_270 = 270;
    public static final int ROTATION_ANGLE_CW_90 = 90;
    private boolean mIsDragging;
    private Method mMethodSetProgressFromUser;
    private int mRotationAngle;
    private Drawable mThumb_;

    public VerticalSeekBar(Context context) {
        super(context);
        this.mRotationAngle = 90;
        initialize(context, null, 0, 0);
    }

    private synchronized void _setProgressFromUser(int i10, boolean z6) {
        if (this.mMethodSetProgressFromUser == null) {
            try {
                Method declaredMethod = ProgressBar.class.getDeclaredMethod("setProgress", Integer.TYPE, Boolean.TYPE);
                declaredMethod.setAccessible(true);
                this.mMethodSetProgressFromUser = declaredMethod;
            } catch (NoSuchMethodException unused) {
            }
        }
        Method method = this.mMethodSetProgressFromUser;
        if (method != null) {
            try {
                method.invoke(this, Integer.valueOf(i10), Boolean.valueOf(z6));
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused2) {
            }
        } else {
            super.setProgress(i10);
        }
        refreshThumb();
    }

    private void initialize(Context context, AttributeSet attributeSet, int i10, int i11) {
        ViewCompat.J0(this, 0);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.VerticalSeekBar, i10, i11);
            int integer = typedArrayObtainStyledAttributes.getInteger(0, 0);
            if (isValidRotationAngle(integer)) {
                this.mRotationAngle = integer;
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private static boolean isValidRotationAngle(int i10) {
        return i10 == 90 || i10 == 270;
    }

    private void onStartTrackingTouch() {
        this.mIsDragging = true;
    }

    private void onStopTrackingTouch() {
        this.mIsDragging = false;
    }

    public int getRotationAngle() {
        return this.mRotationAngle;
    }

    @Override // androidx.appcompat.widget.AppCompatSeekBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        try {
            if (!useViewRotation()) {
                int i10 = this.mRotationAngle;
                if (i10 == 90) {
                    canvas.rotate(90.0f);
                    canvas.translate(0.0f, -super.getWidth());
                } else if (i10 == 270) {
                    canvas.rotate(-90.0f);
                    canvas.translate(-super.getHeight(), 0.0f);
                }
            }
            super.onDraw(canvas);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected synchronized void onMeasure(int i10, int i11) {
        try {
            if (useViewRotation()) {
                super.onMeasure(i10, i11);
            } else {
                super.onMeasure(i11, i10);
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                if (!isInEditMode() || layoutParams == null || layoutParams.height < 0) {
                    setMeasuredDimension(super.getMeasuredHeight(), super.getMeasuredWidth());
                } else {
                    setMeasuredDimension(super.getMeasuredHeight(), layoutParams.height);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int i10) {
        super.setProgress(i10);
        if (!useViewRotation()) {
            refreshThumb();
        }
    }

    @Override // android.widget.AbsSeekBar
    public void setThumb(Drawable drawable) {
        this.mThumb_ = drawable;
        super.setThumb(drawable);
    }

    public VerticalSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mRotationAngle = 90;
        initialize(context, attributeSet, 0, 0);
    }

    private void attemptClaimDrag(boolean z6) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z6);
        }
    }

    private VerticalSeekBarWrapper getWrapper() {
        ViewParent parent = getParent();
        if (parent instanceof VerticalSeekBarWrapper) {
            return (VerticalSeekBarWrapper) parent;
        }
        return null;
    }

    private boolean onTouchEventTraditionalRotation(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action == 3) {
                        if (this.mIsDragging) {
                            onStopTrackingTouch();
                            setPressed(false);
                        }
                        invalidate();
                    }
                } else if (this.mIsDragging) {
                    trackTouchEvent(motionEvent);
                }
            } else {
                if (this.mIsDragging) {
                    trackTouchEvent(motionEvent);
                    onStopTrackingTouch();
                    setPressed(false);
                } else {
                    onStartTrackingTouch();
                    trackTouchEvent(motionEvent);
                    onStopTrackingTouch();
                    attemptClaimDrag(false);
                }
                invalidate();
            }
        } else {
            setPressed(true);
            onStartTrackingTouch();
            trackTouchEvent(motionEvent);
            attemptClaimDrag(true);
            invalidate();
        }
        return true;
    }

    private boolean onTouchEventUseViewRotation(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        if (zOnTouchEvent) {
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1 || action == 3) {
                    attemptClaimDrag(false);
                }
            } else {
                attemptClaimDrag(true);
            }
        }
        return zOnTouchEvent;
    }

    private void refreshThumb() {
        onSizeChanged(super.getWidth(), super.getHeight(), 0, 0);
    }

    private void trackTouchEvent(MotionEvent motionEvent) {
        float f;
        int paddingLeft = super.getPaddingLeft();
        int paddingRight = super.getPaddingRight();
        int height = getHeight() - paddingLeft;
        int i10 = height - paddingRight;
        int y6 = (int) motionEvent.getY();
        int i11 = this.mRotationAngle;
        float f6 = 0.0f;
        if (i11 != 90) {
            if (i11 != 270) {
                f = 0.0f;
            } else {
                f = height - y6;
            }
        } else {
            f = y6 - paddingLeft;
        }
        if (f >= 0.0f && i10 != 0) {
            float f7 = i10;
            f6 = f > f7 ? 1.0f : f / f7;
        }
        _setProgressFromUser((int) (f6 * getMax()), true);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0015  */
    /* JADX WARN: Code duplicated, block: B:16:0x0021  */
    /* JADX WARN: Code duplicated, block: B:18:0x002d  */
    @Override // android.widget.AbsSeekBar, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        int progress;
        if (isEnabled()) {
            int i11 = -1;
            boolean z6 = false;
            switch (i10) {
                case 19:
                    if (this.mRotationAngle == 270) {
                        i11 = 1;
                    }
                    z6 = true;
                    if (z6) {
                        progress = getProgress() + (i11 * getKeyProgressIncrement());
                        if (progress >= 0 && progress <= getMax()) {
                            _setProgressFromUser(progress, true);
                        }
                        return true;
                    }
                    break;
                case 20:
                    if (this.mRotationAngle == 90) {
                        i11 = 1;
                    }
                    z6 = true;
                    if (z6) {
                        progress = getProgress() + (i11 * getKeyProgressIncrement());
                        if (progress >= 0) {
                            _setProgressFromUser(progress, true);
                        }
                        return true;
                    }
                    break;
                case 21:
                case 22:
                    return false;
                default:
                    i11 = 0;
                    if (z6) {
                        progress = getProgress() + (i11 * getKeyProgressIncrement());
                        if (progress >= 0) {
                            _setProgressFromUser(progress, true);
                        }
                        return true;
                    }
                    break;
            }
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        if (useViewRotation()) {
            super.onSizeChanged(i10, i11, i12, i13);
        } else {
            super.onSizeChanged(i11, i10, i13, i12);
        }
    }

    @Override // android.widget.AbsSeekBar, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (useViewRotation()) {
            return onTouchEventUseViewRotation(motionEvent);
        }
        return onTouchEventTraditionalRotation(motionEvent);
    }

    public void setRotationAngle(int i10) {
        if (isValidRotationAngle(i10)) {
            if (this.mRotationAngle == i10) {
                return;
            }
            this.mRotationAngle = i10;
            if (useViewRotation()) {
                VerticalSeekBarWrapper wrapper = getWrapper();
                if (wrapper != null) {
                    wrapper.applyViewRotation();
                    return;
                }
                return;
            }
            requestLayout();
            return;
        }
        throw new IllegalArgumentException("Invalid angle specified :" + i10);
    }

    boolean useViewRotation() {
        return !isInEditMode();
    }

    public VerticalSeekBar(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mRotationAngle = 90;
        initialize(context, attributeSet, i10, 0);
    }
}
