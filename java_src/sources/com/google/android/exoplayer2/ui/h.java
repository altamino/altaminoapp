package com.google.android.exoplayer2.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.safedk.android.analytics.brandsafety.DetectTouchUtils;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes2.dex */
public class h extends View implements b1 {
    private static final String ACCESSIBILITY_CLASS_NAME = "android.widget.SeekBar";
    public static final int BAR_GRAVITY_BOTTOM = 1;
    public static final int BAR_GRAVITY_CENTER = 0;
    public static final int DEFAULT_AD_MARKER_COLOR = -1291845888;
    public static final int DEFAULT_AD_MARKER_WIDTH_DP = 4;
    public static final int DEFAULT_BAR_HEIGHT_DP = 4;
    public static final int DEFAULT_BUFFERED_COLOR = -855638017;
    private static final int DEFAULT_INCREMENT_COUNT = 20;
    public static final int DEFAULT_PLAYED_AD_MARKER_COLOR = 872414976;
    public static final int DEFAULT_PLAYED_COLOR = -1;
    public static final int DEFAULT_SCRUBBER_COLOR = -1;
    public static final int DEFAULT_SCRUBBER_DISABLED_SIZE_DP = 0;
    public static final int DEFAULT_SCRUBBER_DRAGGED_SIZE_DP = 16;
    public static final int DEFAULT_SCRUBBER_ENABLED_SIZE_DP = 12;
    public static final int DEFAULT_TOUCH_TARGET_HEIGHT_DP = 26;
    public static final int DEFAULT_UNPLAYED_COLOR = 872415231;
    private static final int FINE_SCRUB_RATIO = 3;
    private static final int FINE_SCRUB_Y_THRESHOLD_DP = -50;
    private static final float HIDDEN_SCRUBBER_SCALE = 0.0f;
    private static final float SHOWN_SCRUBBER_SCALE = 1.0f;
    private static final long STOP_SCRUBBING_TIMEOUT_MS = 1000;
    private int adGroupCount;

    @Nullable
    private long[] adGroupTimesMs;
    private final Paint adMarkerPaint;
    private final int adMarkerWidth;
    private final int barGravity;
    private final int barHeight;
    private final Rect bufferedBar;
    private final Paint bufferedPaint;
    private long bufferedPosition;
    private final float density;
    private long duration;
    private final int fineScrubYThreshold;
    private final StringBuilder formatBuilder;
    private final Formatter formatter;
    private int keyCountIncrement;
    private long keyTimeIncrement;
    private int lastCoarseScrubXPosition;
    private Rect lastExclusionRectangle;
    private final CopyOnWriteArraySet<b1.a> listeners;

    @Nullable
    private boolean[] playedAdGroups;
    private final Paint playedAdMarkerPaint;
    private final Paint playedPaint;
    private long position;
    private final Rect progressBar;
    private long scrubPosition;
    private final Rect scrubberBar;
    private final int scrubberDisabledSize;
    private final int scrubberDraggedSize;

    @Nullable
    private final Drawable scrubberDrawable;
    private final int scrubberEnabledSize;
    private final int scrubberPadding;
    private boolean scrubberPaddingDisabled;
    private final Paint scrubberPaint;
    private float scrubberScale;
    private ValueAnimator scrubberScalingAnimator;
    private boolean scrubbing;
    private final Rect seekBounds;
    private final Runnable stopScrubbingRunnable;
    private final Point touchPosition;
    private final int touchTargetHeight;
    private final Paint unplayedPaint;

    public h(Context context) {
        this(context, null);
    }

    private static int d(float f, int i10) {
        return (int) ((i10 * f) + 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j() {
        v(false);
    }

    private static int m(float f, int i10) {
        return (int) (i10 / f);
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent me) {
        DetectTouchUtils.viewOnTouch("com.google.android.exoplayer", this, me);
        return super.dispatchTouchEvent(me);
    }

    @Override // android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        int paddingBottom;
        int iMax;
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        int paddingLeft = getPaddingLeft();
        int paddingRight = i14 - getPaddingRight();
        int i16 = this.scrubberPaddingDisabled ? 0 : this.scrubberPadding;
        if (this.barGravity == 1) {
            paddingBottom = (i15 - getPaddingBottom()) - this.touchTargetHeight;
            int paddingBottom2 = i15 - getPaddingBottom();
            int i17 = this.barHeight;
            iMax = (paddingBottom2 - i17) - Math.max(i16 - (i17 / 2), 0);
        } else {
            paddingBottom = (i15 - this.touchTargetHeight) / 2;
            iMax = (i15 - this.barHeight) / 2;
        }
        this.seekBounds.set(paddingLeft, paddingBottom, paddingRight, this.touchTargetHeight + paddingBottom);
        Rect rect = this.progressBar;
        Rect rect2 = this.seekBounds;
        rect.set(rect2.left + i16, iMax, rect2.right - i16, this.barHeight + iMax);
        if (com.google.android.exoplayer2.util.o0.SDK_INT >= 29) {
            r(i14, i15);
        }
        w();
    }

    public h(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void e(Canvas canvas) {
        int i10;
        if (this.duration <= 0) {
            return;
        }
        Rect rect = this.scrubberBar;
        int iP = com.google.android.exoplayer2.util.o0.p(rect.right, rect.left, this.progressBar.right);
        int iCenterY = this.scrubberBar.centerY();
        Drawable drawable = this.scrubberDrawable;
        if (drawable == null) {
            if (this.scrubbing || isFocused()) {
                i10 = this.scrubberDraggedSize;
            } else {
                i10 = isEnabled() ? this.scrubberEnabledSize : this.scrubberDisabledSize;
            }
            canvas.drawCircle(iP, iCenterY, (int) ((i10 * this.scrubberScale) / 2.0f), this.scrubberPaint);
            return;
        }
        int intrinsicWidth = ((int) (drawable.getIntrinsicWidth() * this.scrubberScale)) / 2;
        int intrinsicHeight = ((int) (this.scrubberDrawable.getIntrinsicHeight() * this.scrubberScale)) / 2;
        this.scrubberDrawable.setBounds(iP - intrinsicWidth, iCenterY - intrinsicHeight, iP + intrinsicWidth, iCenterY + intrinsicHeight);
        this.scrubberDrawable.draw(canvas);
    }

    private void f(Canvas canvas) {
        int iHeight = this.progressBar.height();
        int iCenterY = this.progressBar.centerY() - (iHeight / 2);
        int i10 = iHeight + iCenterY;
        if (this.duration <= 0) {
            Rect rect = this.progressBar;
            canvas.drawRect(rect.left, iCenterY, rect.right, i10, this.unplayedPaint);
            return;
        }
        Rect rect2 = this.bufferedBar;
        int i11 = rect2.left;
        int i12 = rect2.right;
        int iMax = Math.max(Math.max(this.progressBar.left, i12), this.scrubberBar.right);
        int i13 = this.progressBar.right;
        if (iMax < i13) {
            canvas.drawRect(iMax, iCenterY, i13, i10, this.unplayedPaint);
        }
        int iMax2 = Math.max(i11, this.scrubberBar.right);
        if (i12 > iMax2) {
            canvas.drawRect(iMax2, iCenterY, i12, i10, this.bufferedPaint);
        }
        if (this.scrubberBar.width() > 0) {
            Rect rect3 = this.scrubberBar;
            canvas.drawRect(rect3.left, iCenterY, rect3.right, i10, this.playedPaint);
        }
        if (this.adGroupCount == 0) {
            return;
        }
        long[] jArr = (long[]) com.google.android.exoplayer2.util.a.e(this.adGroupTimesMs);
        boolean[] zArr = (boolean[]) com.google.android.exoplayer2.util.a.e(this.playedAdGroups);
        int i14 = this.adMarkerWidth / 2;
        for (int i15 = 0; i15 < this.adGroupCount; i15++) {
            int iWidth = ((int) ((((long) this.progressBar.width()) * com.google.android.exoplayer2.util.o0.q(jArr[i15], 0L, this.duration)) / this.duration)) - i14;
            Rect rect4 = this.progressBar;
            int iMin = rect4.left + Math.min(rect4.width() - this.adMarkerWidth, Math.max(0, iWidth));
            canvas.drawRect(iMin, iCenterY, iMin + this.adMarkerWidth, i10, zArr[i15] ? this.playedAdMarkerPaint : this.adMarkerPaint);
        }
    }

    private long getPositionIncrement() {
        long j6 = this.keyTimeIncrement;
        if (j6 != -9223372036854775807L) {
            return j6;
        }
        long j10 = this.duration;
        if (j10 == -9223372036854775807L) {
            return 0L;
        }
        return j10 / ((long) this.keyCountIncrement);
    }

    private String getProgressText() {
        return com.google.android.exoplayer2.util.o0.b0(this.formatBuilder, this.formatter, this.position);
    }

    private long getScrubberPosition() {
        if (this.progressBar.width() <= 0 || this.duration == -9223372036854775807L) {
            return 0L;
        }
        return (((long) this.scrubberBar.width()) * this.duration) / ((long) this.progressBar.width());
    }

    private boolean i(float f, float f6) {
        return this.seekBounds.contains((int) f, (int) f6);
    }

    private void l(float f) {
        Rect rect = this.scrubberBar;
        Rect rect2 = this.progressBar;
        rect.right = com.google.android.exoplayer2.util.o0.p((int) f, rect2.left, rect2.right);
    }

    private Point n(MotionEvent motionEvent) {
        this.touchPosition.set((int) motionEvent.getX(), (int) motionEvent.getY());
        return this.touchPosition;
    }

    private boolean o(long j6) {
        long j10 = this.duration;
        if (j10 <= 0) {
            return false;
        }
        long j11 = this.scrubbing ? this.scrubPosition : this.position;
        long jQ = com.google.android.exoplayer2.util.o0.q(j11 + j6, 0L, j10);
        if (jQ == j11) {
            return false;
        }
        if (this.scrubbing) {
            y(jQ);
        } else {
            u(jQ);
        }
        w();
        return true;
    }

    private boolean p(Drawable drawable) {
        return com.google.android.exoplayer2.util.o0.SDK_INT >= 23 && q(drawable, getLayoutDirection());
    }

    private static boolean q(Drawable drawable, int i10) {
        return com.google.android.exoplayer2.util.o0.SDK_INT >= 23 && drawable.setLayoutDirection(i10);
    }

    @RequiresApi
    private void r(int i10, int i11) {
        Rect rect = this.lastExclusionRectangle;
        if (rect != null && rect.width() == i10 && this.lastExclusionRectangle.height() == i11) {
            return;
        }
        Rect rect2 = new Rect(0, 0, i10, i11);
        this.lastExclusionRectangle = rect2;
        setSystemGestureExclusionRects(Collections.singletonList(rect2));
    }

    private void u(long j6) {
        this.scrubPosition = j6;
        this.scrubbing = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator<b1.a> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().r(this, j6);
        }
    }

    private void v(boolean z6) {
        removeCallbacks(this.stopScrubbingRunnable);
        this.scrubbing = false;
        setPressed(false);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        invalidate();
        Iterator<b1.a> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().j(this, this.scrubPosition, z6);
        }
    }

    private void w() {
        this.bufferedBar.set(this.progressBar);
        this.scrubberBar.set(this.progressBar);
        long j6 = this.scrubbing ? this.scrubPosition : this.position;
        if (this.duration > 0) {
            int iWidth = (int) ((((long) this.progressBar.width()) * this.bufferedPosition) / this.duration);
            Rect rect = this.bufferedBar;
            Rect rect2 = this.progressBar;
            rect.right = Math.min(rect2.left + iWidth, rect2.right);
            int iWidth2 = (int) ((((long) this.progressBar.width()) * j6) / this.duration);
            Rect rect3 = this.scrubberBar;
            Rect rect4 = this.progressBar;
            rect3.right = Math.min(rect4.left + iWidth2, rect4.right);
        } else {
            Rect rect5 = this.bufferedBar;
            int i10 = this.progressBar.left;
            rect5.right = i10;
            this.scrubberBar.right = i10;
        }
        invalidate(this.seekBounds);
    }

    private void x() {
        Drawable drawable = this.scrubberDrawable;
        if (drawable != null && drawable.isStateful() && this.scrubberDrawable.setState(getDrawableState())) {
            invalidate();
        }
    }

    private void y(long j6) {
        if (this.scrubPosition == j6) {
            return;
        }
        this.scrubPosition = j6;
        Iterator<b1.a> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().q(this, j6);
        }
    }

    public void g(long j6) {
        if (this.scrubberScalingAnimator.isStarted()) {
            this.scrubberScalingAnimator.cancel();
        }
        this.scrubberScalingAnimator.setFloatValues(this.scrubberScale, 0.0f);
        this.scrubberScalingAnimator.setDuration(j6);
        this.scrubberScalingAnimator.start();
    }

    @Override // com.google.android.exoplayer2.ui.b1
    public long getPreferredUpdateDelay() {
        int iM = m(this.density, this.progressBar.width());
        if (iM != 0) {
            long j6 = this.duration;
            if (j6 != 0 && j6 != -9223372036854775807L) {
                return j6 / ((long) iM);
            }
        }
        return Long.MAX_VALUE;
    }

    public void h(boolean z6) {
        if (this.scrubberScalingAnimator.isStarted()) {
            this.scrubberScalingAnimator.cancel();
        }
        this.scrubberPaddingDisabled = z6;
        this.scrubberScale = 0.0f;
        invalidate(this.seekBounds);
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i10) {
        Drawable drawable = this.scrubberDrawable;
        if (drawable == null || !q(drawable, i10)) {
            return;
        }
        invalidate();
    }

    public void s() {
        if (this.scrubberScalingAnimator.isStarted()) {
            this.scrubberScalingAnimator.cancel();
        }
        this.scrubberPaddingDisabled = false;
        this.scrubberScale = 1.0f;
        invalidate(this.seekBounds);
    }

    @Override // com.google.android.exoplayer2.ui.b1
    public void setAdGroupTimesMs(@Nullable long[] jArr, @Nullable boolean[] zArr, int i10) {
        com.google.android.exoplayer2.util.a.a(i10 == 0 || !(jArr == null || zArr == null));
        this.adGroupCount = i10;
        this.adGroupTimesMs = jArr;
        this.playedAdGroups = zArr;
        w();
    }

    public void setAdMarkerColor(@ColorInt int i10) {
        this.adMarkerPaint.setColor(i10);
        invalidate(this.seekBounds);
    }

    public void setBufferedColor(@ColorInt int i10) {
        this.bufferedPaint.setColor(i10);
        invalidate(this.seekBounds);
    }

    @Override // com.google.android.exoplayer2.ui.b1
    public void setBufferedPosition(long j6) {
        if (this.bufferedPosition == j6) {
            return;
        }
        this.bufferedPosition = j6;
        w();
    }

    @Override // com.google.android.exoplayer2.ui.b1
    public void setDuration(long j6) {
        if (this.duration == j6) {
            return;
        }
        this.duration = j6;
        if (this.scrubbing && j6 == -9223372036854775807L) {
            v(true);
        }
        w();
    }

    public void setKeyCountIncrement(int i10) {
        com.google.android.exoplayer2.util.a.a(i10 > 0);
        this.keyCountIncrement = i10;
        this.keyTimeIncrement = -9223372036854775807L;
    }

    public void setKeyTimeIncrement(long j6) {
        com.google.android.exoplayer2.util.a.a(j6 > 0);
        this.keyCountIncrement = -1;
        this.keyTimeIncrement = j6;
    }

    public void setPlayedAdMarkerColor(@ColorInt int i10) {
        this.playedAdMarkerPaint.setColor(i10);
        invalidate(this.seekBounds);
    }

    public void setPlayedColor(@ColorInt int i10) {
        this.playedPaint.setColor(i10);
        invalidate(this.seekBounds);
    }

    @Override // com.google.android.exoplayer2.ui.b1
    public void setPosition(long j6) {
        if (this.position == j6) {
            return;
        }
        this.position = j6;
        setContentDescription(getProgressText());
        w();
    }

    public void setScrubberColor(@ColorInt int i10) {
        this.scrubberPaint.setColor(i10);
        invalidate(this.seekBounds);
    }

    public void setUnplayedColor(@ColorInt int i10) {
        this.unplayedPaint.setColor(i10);
        invalidate(this.seekBounds);
    }

    public void t(long j6) {
        if (this.scrubberScalingAnimator.isStarted()) {
            this.scrubberScalingAnimator.cancel();
        }
        this.scrubberPaddingDisabled = false;
        this.scrubberScalingAnimator.setFloatValues(this.scrubberScale, 1.0f);
        this.scrubberScalingAnimator.setDuration(j6);
        this.scrubberScalingAnimator.start();
    }

    public h(Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(ValueAnimator valueAnimator) {
        this.scrubberScale = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate(this.seekBounds);
    }

    @Override // com.google.android.exoplayer2.ui.b1
    public void a(b1.a aVar) {
        com.google.android.exoplayer2.util.a.e(aVar);
        this.listeners.add(aVar);
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        x();
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.scrubberDrawable;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.save();
        f(canvas);
        e(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z6, int i10, @Nullable Rect rect) {
        super.onFocusChanged(z6, i10, rect);
        if (this.scrubbing && !z6) {
            v(false);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 4) {
            accessibilityEvent.getText().add(getProgressText());
        }
        accessibilityEvent.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ACCESSIBILITY_CLASS_NAME);
        accessibilityNodeInfo.setContentDescription(getProgressText());
        if (this.duration <= 0) {
            return;
        }
        if (com.google.android.exoplayer2.util.o0.SDK_INT >= 21) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
        } else {
            accessibilityNodeInfo.addAction(4096);
            accessibilityNodeInfo.addAction(8192);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:11:0x001a  */
    /* JADX WARN: Code duplicated, block: B:13:0x0027  */
    /* JADX WARN: Code duplicated, block: B:15:0x002b  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (isEnabled()) {
            long positionIncrement = getPositionIncrement();
            if (i10 != 66) {
                switch (i10) {
                    case 21:
                        positionIncrement = -positionIncrement;
                        if (o(positionIncrement)) {
                            removeCallbacks(this.stopScrubbingRunnable);
                            postDelayed(this.stopScrubbingRunnable, 1000L);
                            return true;
                        }
                        break;
                    case 22:
                        if (o(positionIncrement)) {
                            removeCallbacks(this.stopScrubbingRunnable);
                            postDelayed(this.stopScrubbingRunnable, 1000L);
                            return true;
                        }
                        break;
                    case 23:
                        if (this.scrubbing) {
                            v(false);
                            return true;
                        }
                        break;
                }
            } else if (this.scrubbing) {
                v(false);
                return true;
            }
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        if (mode == 0) {
            size = this.touchTargetHeight;
        } else if (mode != 1073741824) {
            size = Math.min(this.touchTargetHeight, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i10), size);
        x();
    }

    /* JADX WARN: Code duplicated, block: B:23:0x004e  */
    /* JADX WARN: Code duplicated, block: B:25:0x0052  */
    /* JADX WARN: Code duplicated, block: B:27:0x0058  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z6 = false;
        if (isEnabled() && this.duration > 0) {
            Point pointN = n(motionEvent);
            int i10 = pointN.x;
            int i11 = pointN.y;
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action != 1) {
                    if (action != 2) {
                        if (action == 3) {
                            if (this.scrubbing) {
                                if (motionEvent.getAction() == 3) {
                                    z6 = true;
                                }
                                v(z6);
                                return true;
                            }
                        }
                    } else if (this.scrubbing) {
                        if (i11 < this.fineScrubYThreshold) {
                            int i12 = this.lastCoarseScrubXPosition;
                            l(i12 + ((i10 - i12) / 3));
                        } else {
                            this.lastCoarseScrubXPosition = i10;
                            l(i10);
                        }
                        y(getScrubberPosition());
                        w();
                        invalidate();
                        return true;
                    }
                } else if (this.scrubbing) {
                    if (motionEvent.getAction() == 3) {
                        z6 = true;
                    }
                    v(z6);
                    return true;
                }
            } else {
                float f = i10;
                if (i(f, i11)) {
                    l(f);
                    u(getScrubberPosition());
                    w();
                    invalidate();
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i10, @Nullable Bundle bundle) {
        if (super.performAccessibilityAction(i10, bundle)) {
            return true;
        }
        if (this.duration <= 0) {
            return false;
        }
        if (i10 == 8192) {
            if (o(-getPositionIncrement())) {
                v(false);
            }
        } else {
            if (i10 != 4096) {
                return false;
            }
            if (o(getPositionIncrement())) {
                v(false);
            }
        }
        sendAccessibilityEvent(4);
        return true;
    }

    @Override // android.view.View, com.google.android.exoplayer2.ui.b1
    public void setEnabled(boolean z6) {
        super.setEnabled(z6);
        if (this.scrubbing && !z6) {
            v(true);
        }
    }

    public h(Context context, @Nullable AttributeSet attributeSet, int i10, @Nullable AttributeSet attributeSet2) {
        this(context, attributeSet, i10, attributeSet2, 0);
    }

    public h(Context context, @Nullable AttributeSet attributeSet, int i10, @Nullable AttributeSet attributeSet2, int i11) {
        super(context, attributeSet, i10);
        this.seekBounds = new Rect();
        this.progressBar = new Rect();
        this.bufferedBar = new Rect();
        this.scrubberBar = new Rect();
        Paint paint = new Paint();
        this.playedPaint = paint;
        Paint paint2 = new Paint();
        this.bufferedPaint = paint2;
        Paint paint3 = new Paint();
        this.unplayedPaint = paint3;
        Paint paint4 = new Paint();
        this.adMarkerPaint = paint4;
        Paint paint5 = new Paint();
        this.playedAdMarkerPaint = paint5;
        Paint paint6 = new Paint();
        this.scrubberPaint = paint6;
        paint6.setAntiAlias(true);
        this.listeners = new CopyOnWriteArraySet<>();
        this.touchPosition = new Point();
        float f = context.getResources().getDisplayMetrics().density;
        this.density = f;
        this.fineScrubYThreshold = d(f, FINE_SCRUB_Y_THRESHOLD_DP);
        int iD = d(f, 4);
        int iD2 = d(f, 26);
        int iD3 = d(f, 4);
        int iD4 = d(f, 12);
        int iD5 = d(f, 0);
        int iD6 = d(f, 16);
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, v.DefaultTimeBar, i10, i11);
            try {
                Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(v.DefaultTimeBar_scrubber_drawable);
                this.scrubberDrawable = drawable;
                if (drawable != null) {
                    p(drawable);
                    iD2 = Math.max(drawable.getMinimumHeight(), iD2);
                }
                this.barHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(v.DefaultTimeBar_bar_height, iD);
                this.touchTargetHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(v.DefaultTimeBar_touch_target_height, iD2);
                this.barGravity = typedArrayObtainStyledAttributes.getInt(v.DefaultTimeBar_bar_gravity, 0);
                this.adMarkerWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(v.DefaultTimeBar_ad_marker_width, iD3);
                this.scrubberEnabledSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(v.DefaultTimeBar_scrubber_enabled_size, iD4);
                this.scrubberDisabledSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(v.DefaultTimeBar_scrubber_disabled_size, iD5);
                this.scrubberDraggedSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(v.DefaultTimeBar_scrubber_dragged_size, iD6);
                int i12 = typedArrayObtainStyledAttributes.getInt(v.DefaultTimeBar_played_color, -1);
                int i13 = typedArrayObtainStyledAttributes.getInt(v.DefaultTimeBar_scrubber_color, -1);
                int i14 = typedArrayObtainStyledAttributes.getInt(v.DefaultTimeBar_buffered_color, -855638017);
                int i15 = typedArrayObtainStyledAttributes.getInt(v.DefaultTimeBar_unplayed_color, 872415231);
                int i16 = typedArrayObtainStyledAttributes.getInt(v.DefaultTimeBar_ad_marker_color, -1291845888);
                int i17 = typedArrayObtainStyledAttributes.getInt(v.DefaultTimeBar_played_ad_marker_color, 872414976);
                paint.setColor(i12);
                paint6.setColor(i13);
                paint2.setColor(i14);
                paint3.setColor(i15);
                paint4.setColor(i16);
                paint5.setColor(i17);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            this.barHeight = iD;
            this.touchTargetHeight = iD2;
            this.barGravity = 0;
            this.adMarkerWidth = iD3;
            this.scrubberEnabledSize = iD4;
            this.scrubberDisabledSize = iD5;
            this.scrubberDraggedSize = iD6;
            paint.setColor(-1);
            paint6.setColor(-1);
            paint2.setColor(-855638017);
            paint3.setColor(872415231);
            paint4.setColor(-1291845888);
            paint5.setColor(872414976);
            this.scrubberDrawable = null;
        }
        StringBuilder sb = new StringBuilder();
        this.formatBuilder = sb;
        this.formatter = new Formatter(sb, Locale.getDefault());
        this.stopScrubbingRunnable = new Runnable() { // from class: com.google.android.exoplayer2.ui.f
            @Override // java.lang.Runnable
            public final void run() {
                this.f1317a.j();
            }
        };
        Drawable drawable2 = this.scrubberDrawable;
        if (drawable2 != null) {
            this.scrubberPadding = (drawable2.getMinimumWidth() + 1) / 2;
        } else {
            this.scrubberPadding = (Math.max(this.scrubberDisabledSize, Math.max(this.scrubberEnabledSize, this.scrubberDraggedSize)) + 1) / 2;
        }
        this.scrubberScale = 1.0f;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.scrubberScalingAnimator = valueAnimator;
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui.g
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f1319a.k(valueAnimator2);
            }
        });
        this.duration = -9223372036854775807L;
        this.keyTimeIncrement = -9223372036854775807L;
        this.keyCountIncrement = 20;
        setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }
}
