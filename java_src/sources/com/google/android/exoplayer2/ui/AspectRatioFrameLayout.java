package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.safedk.android.analytics.brandsafety.DetectTouchUtils;

/* JADX INFO: loaded from: classes6.dex */
public final class AspectRatioFrameLayout extends FrameLayout {
    private static final float MAX_ASPECT_RATIO_DEFORMATION_FRACTION = 0.01f;
    public static final int RESIZE_MODE_FILL = 3;
    public static final int RESIZE_MODE_FIT = 0;
    public static final int RESIZE_MODE_FIXED_HEIGHT = 2;
    public static final int RESIZE_MODE_FIXED_WIDTH = 1;
    public static final int RESIZE_MODE_ZOOM = 4;

    @Nullable
    private b aspectRatioListener;
    private final c aspectRatioUpdateDispatcher;
    private int resizeMode;
    private float videoAspectRatio;

    public interface b {
    }

    private final class c implements Runnable {
        private boolean aspectRatioMismatch;
        private boolean isScheduled;
        private float naturalAspectRatio;
        private float targetAspectRatio;

        private c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            this.isScheduled = false;
            AspectRatioFrameLayout.a(AspectRatioFrameLayout.this);
        }

        public void a(float f, float f6, boolean z6) {
            this.targetAspectRatio = f;
            this.naturalAspectRatio = f6;
            this.aspectRatioMismatch = z6;
            if (this.isScheduled) {
                return;
            }
            this.isScheduled = true;
            AspectRatioFrameLayout.this.post(this);
        }
    }

    public AspectRatioFrameLayout(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent me) {
        DetectTouchUtils.viewOnTouch("com.google.android.exoplayer", this, me);
        return super.dispatchTouchEvent(me);
    }

    public int getResizeMode() {
        return this.resizeMode;
    }

    public void setAspectRatioListener(@Nullable b bVar) {
    }

    public AspectRatioFrameLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.resizeMode = 0;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, v.AspectRatioFrameLayout, 0, 0);
            try {
                this.resizeMode = typedArrayObtainStyledAttributes.getInt(v.AspectRatioFrameLayout_resize_mode, 0);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        this.aspectRatioUpdateDispatcher = new c();
    }

    public void setAspectRatio(float f) {
        if (this.videoAspectRatio != f) {
            this.videoAspectRatio = f;
            requestLayout();
        }
    }

    public void setResizeMode(int i10) {
        if (this.resizeMode != i10) {
            this.resizeMode = i10;
            requestLayout();
        }
    }

    static /* synthetic */ b a(AspectRatioFrameLayout aspectRatioFrameLayout) {
        aspectRatioFrameLayout.getClass();
        return null;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        float f;
        float f6;
        super.onMeasure(i10, i11);
        if (this.videoAspectRatio <= 0.0f) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f7 = measuredWidth;
        float f10 = measuredHeight;
        float f11 = f7 / f10;
        float f12 = (this.videoAspectRatio / f11) - 1.0f;
        if (Math.abs(f12) <= 0.01f) {
            this.aspectRatioUpdateDispatcher.a(this.videoAspectRatio, f11, false);
            return;
        }
        int i12 = this.resizeMode;
        if (i12 != 0) {
            if (i12 != 1) {
                if (i12 != 2) {
                    if (i12 == 4) {
                        if (f12 > 0.0f) {
                            f = this.videoAspectRatio;
                        } else {
                            f6 = this.videoAspectRatio;
                        }
                    }
                } else {
                    f = this.videoAspectRatio;
                }
                measuredWidth = (int) (f10 * f);
            } else {
                f6 = this.videoAspectRatio;
            }
            measuredHeight = (int) (f7 / f6);
        } else if (f12 > 0.0f) {
            f6 = this.videoAspectRatio;
            measuredHeight = (int) (f7 / f6);
        } else {
            f = this.videoAspectRatio;
            measuredWidth = (int) (f10 * f);
        }
        this.aspectRatioUpdateDispatcher.a(this.videoAspectRatio, f11, true);
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
    }
}
