package com.narvii.video.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.narvii.mediaeditor.R;
import com.narvii.util.Utils;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class ViceTimeLineCutterView extends View {
    private boolean active;
    private int baseColor;

    @NotNull
    private final RectF baseRect;

    @NotNull
    private Bitmap bitmapArrowLeft;

    @NotNull
    private Bitmap bitmapArrowRight;

    @NotNull
    private final Paint bitmapPaint;
    private final int boxColor;

    @NotNull
    private final Paint boxPaint;

    @Nullable
    private IViceTimeLineCutterCallback callback;
    private final float cornerRadius;
    private int fillColor;

    @NotNull
    private final Paint fillPaint;

    @NotNull
    private final RectF handlerIndicatorRect;
    private final int handlerIndicatorSize;
    private int handlerWidth;

    @NotNull
    private final Path innerPath;

    @NotNull
    private final RectF innerRect;
    private boolean isLeftHandlerActive;
    private boolean isRightHandlerActive;
    private float mainTimeLineEndEdge;
    private float mainTimeLineStartEdge;
    private float maxCutterWidth;
    private float minCutterWidth;

    @NotNull
    private final RectF outerRect;
    private final boolean rtl;

    public interface IViceTimeLineCutterCallback {
        void onCutterMoved(float f, float f6, boolean z6);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViceTimeLineCutterView(@NotNull Context context) {
        super(context);
        t.j(context, "context");
        this.rtl = Utils.isRtl();
        this.cornerRadius = getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_item_corner_radius) * 1.0f;
        this.baseRect = new RectF();
        this.outerRect = new RectF();
        this.innerRect = new RectF();
        this.innerPath = new Path();
        this.handlerIndicatorRect = new RectF();
        Paint paint = new Paint();
        this.boxPaint = paint;
        Paint paint2 = new Paint();
        this.bitmapPaint = paint2;
        Paint paint3 = new Paint();
        this.fillPaint = paint3;
        int color = getResources().getColor(R.color.media_timeline_controller_color);
        this.boxColor = color;
        this.handlerWidth = getResources().getDimensionPixelSize(R.dimen.video_editor_controller_handler_width);
        this.handlerIndicatorSize = getResources().getDimensionPixelSize(R.dimen.video_editor_controller_indicator_size);
        paint.setAntiAlias(true);
        paint.setColor(color);
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint2.setAntiAlias(true);
        paint2.setFilterBitmap(true);
        paint2.setDither(false);
        paint3.setAntiAlias(true);
        paint3.setColor(0);
        paint3.setStyle(style);
        Drawable drawable = getResources().getDrawable(R.drawable.ic_double_white_arrow_left);
        t.h(drawable, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
        t.i(bitmap, "getBitmap(...)");
        this.bitmapArrowLeft = bitmap;
        Drawable drawable2 = getResources().getDrawable(R.drawable.ic_double_white_arrow_right);
        t.h(drawable2, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
        Bitmap bitmap2 = ((BitmapDrawable) drawable2).getBitmap();
        t.i(bitmap2, "getBitmap(...)");
        this.bitmapArrowRight = bitmap2;
    }

    private final void isTouchInSlideHandler(float f) {
        double d = f;
        RectF rectF = this.innerRect;
        float f6 = rectF.left;
        int i10 = this.handlerWidth;
        if (d >= ((double) f6) - (((double) i10) * 1.5d) && d <= ((double) f6) + (((double) i10) * 0.5d)) {
            this.isLeftHandlerActive = true;
            this.isRightHandlerActive = false;
            return;
        }
        float f7 = rectF.right;
        if (d < ((double) f7) - (((double) i10) * 0.5d) || d > ((double) f7) + (((double) i10) * 1.5d)) {
            return;
        }
        this.isLeftHandlerActive = false;
        this.isRightHandlerActive = true;
    }

    @NotNull
    public final RectF getCurrentTimelineRect() {
        return this.innerRect;
    }

    public final void setControllerCallback(@Nullable IViceTimeLineCutterCallback iViceTimeLineCutterCallback) {
        this.callback = iViceTimeLineCutterCallback;
    }

    public final void setFillColor(int i10, int i11) {
        this.fillColor = i10;
        this.baseColor = i11;
    }

    private final void onSlideHandlerMove(MotionEvent motionEvent) {
        int actionMasked;
        float x6;
        float fMin;
        if ((this.isLeftHandlerActive || this.isRightHandlerActive) && (actionMasked = motionEvent.getActionMasked()) != 0) {
            if (actionMasked != 2) {
                updateControllerMove(false);
                if (motionEvent.getActionMasked() == 3 || motionEvent.getActionMasked() == 1) {
                    getParent().requestDisallowInterceptTouchEvent(false);
                    this.isLeftHandlerActive = false;
                    this.isRightHandlerActive = false;
                }
                invalidate();
                return;
            }
            if (this.isLeftHandlerActive) {
                getParent().requestDisallowInterceptTouchEvent(true);
                float fMax = this.rtl ? this.innerRect.right - this.maxCutterWidth : Math.max(this.mainTimeLineStartEdge, this.innerRect.right - this.maxCutterWidth);
                if (this.rtl) {
                    fMin = this.innerRect.right - this.minCutterWidth;
                } else {
                    float f = this.mainTimeLineEndEdge;
                    float f6 = this.minCutterWidth;
                    fMin = Math.min(f - f6, this.innerRect.right - f6);
                }
                RectF rectF = this.innerRect;
                if (motionEvent.getX() > fMax) {
                    fMax = motionEvent.getX() >= fMin ? fMin : motionEvent.getX();
                }
                rectF.left = fMax;
            } else if (this.isRightHandlerActive) {
                getParent().requestDisallowInterceptTouchEvent(true);
                if (this.rtl) {
                    float f7 = this.mainTimeLineEndEdge;
                    float f10 = this.minCutterWidth;
                    x6 = Math.max(f7 + f10, this.innerRect.left + f10);
                } else {
                    x6 = this.innerRect.left + this.minCutterWidth;
                }
                float fMin2 = this.rtl ? Math.min(this.mainTimeLineStartEdge, this.innerRect.left + this.maxCutterWidth) : this.innerRect.left + this.maxCutterWidth;
                RectF rectF2 = this.innerRect;
                if (motionEvent.getX() > x6) {
                    x6 = motionEvent.getX() >= fMin2 ? fMin2 : motionEvent.getX();
                }
                rectF2.right = x6;
            }
            updateControllerMove(true);
            invalidate();
        }
    }

    private final void updateControllerMove(boolean z6) {
        float fWidth = this.innerRect.width();
        float fAbs = Math.abs((this.rtl ? this.innerRect.right : this.innerRect.left) - this.mainTimeLineStartEdge);
        if (!z6) {
            System.out.println("testtest onControllerMoved left = " + fAbs + " width = " + fWidth);
        }
        IViceTimeLineCutterCallback iViceTimeLineCutterCallback = this.callback;
        if (iViceTimeLineCutterCallback != null) {
            iViceTimeLineCutterCallback.onCutterMoved(fAbs, fWidth, z6);
        }
    }

    public final void layoutRect(float f, float f6, float f7, float f10, float f11, float f12, float f13, float f14) {
        this.minCutterWidth = f11;
        this.maxCutterWidth = f12;
        this.mainTimeLineStartEdge = f13;
        this.mainTimeLineEndEdge = f14;
        this.baseRect.set(0.0f, f6, getWidth(), f10);
        float f15 = 4;
        this.innerRect.set(f, f6 + f15, f7, f10 - f15);
        requestLayout();
    }

    public final void onActionUpInterceptedForFling(@NotNull MotionEvent event) {
        t.j(event, "event");
        if (this.active) {
            onSlideHandlerMove(event);
        }
    }

    @Override // android.view.View
    protected void onDraw(@NotNull Canvas canvas) {
        t.j(canvas, "canvas");
        super.onDraw(canvas);
        this.fillPaint.setColor(this.baseColor);
        canvas.drawRect(this.baseRect, this.fillPaint);
        canvas.save();
        RectF rectF = this.outerRect;
        RectF rectF2 = this.innerRect;
        float f = rectF2.left;
        int i10 = this.handlerWidth;
        float f6 = 4;
        rectF.set(f - i10, rectF2.top - f6, rectF2.right + i10, rectF2.bottom + f6);
        canvas.clipRect(this.outerRect);
        this.innerPath.reset();
        Path path = this.innerPath;
        RectF rectF3 = this.innerRect;
        float f7 = this.cornerRadius;
        path.addRoundRect(rectF3, f7, f7, Path.Direction.CW);
        this.innerPath.close();
        canvas.clipPath(this.innerPath, Region.Op.DIFFERENCE);
        RectF rectF4 = this.outerRect;
        float f10 = this.cornerRadius;
        canvas.drawRoundRect(rectF4, f10, f10, this.boxPaint);
        canvas.restore();
        this.fillPaint.setColor(this.fillColor);
        canvas.drawPath(this.innerPath, this.fillPaint);
        RectF rectF5 = this.handlerIndicatorRect;
        RectF rectF6 = this.outerRect;
        float f11 = (rectF6.left + (this.handlerWidth / 2.0f)) - (this.handlerIndicatorSize / 2.0f);
        float fCenterY = rectF6.centerY();
        int i11 = this.handlerIndicatorSize;
        RectF rectF7 = this.outerRect;
        rectF5.set(f11, fCenterY - (i11 / 1.5f), rectF7.left + (this.handlerWidth / 2.0f) + (i11 / 2.0f), rectF7.centerY() + (this.handlerIndicatorSize / 1.5f));
        canvas.drawBitmap(this.bitmapArrowLeft, (Rect) null, this.handlerIndicatorRect, this.bitmapPaint);
        RectF rectF8 = this.handlerIndicatorRect;
        RectF rectF9 = this.outerRect;
        float f12 = (rectF9.right - (this.handlerWidth / 2.0f)) - (this.handlerIndicatorSize / 2.0f);
        float fCenterY2 = rectF9.centerY();
        int i12 = this.handlerIndicatorSize;
        RectF rectF10 = this.outerRect;
        rectF8.set(f12, fCenterY2 - (i12 / 1.5f), (rectF10.right - (this.handlerWidth / 2.0f)) + (i12 / 2.0f), rectF10.centerY() + (this.handlerIndicatorSize / 1.5f));
        canvas.drawBitmap(this.bitmapArrowRight, (Rect) null, this.handlerIndicatorRect, this.bitmapPaint);
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        t.j(event, "event");
        if (!this.active) {
            return super.onTouchEvent(event);
        }
        if (event.getActionMasked() == 0) {
            isTouchInSlideHandler(event.getX());
            return true;
        }
        onSlideHandlerMove(event);
        return true;
    }

    public final void toggle(boolean z6) {
        this.active = z6;
        if (z6) {
            setVisibility(0);
        } else {
            setVisibility(8);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViceTimeLineCutterView(@NotNull Context context, @NotNull AttributeSet attributes) {
        super(context, attributes);
        t.j(context, "context");
        t.j(attributes, "attributes");
        this.rtl = Utils.isRtl();
        this.cornerRadius = getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_item_corner_radius) * 1.0f;
        this.baseRect = new RectF();
        this.outerRect = new RectF();
        this.innerRect = new RectF();
        this.innerPath = new Path();
        this.handlerIndicatorRect = new RectF();
        Paint paint = new Paint();
        this.boxPaint = paint;
        Paint paint2 = new Paint();
        this.bitmapPaint = paint2;
        Paint paint3 = new Paint();
        this.fillPaint = paint3;
        int color = getResources().getColor(R.color.media_timeline_controller_color);
        this.boxColor = color;
        this.handlerWidth = getResources().getDimensionPixelSize(R.dimen.video_editor_controller_handler_width);
        this.handlerIndicatorSize = getResources().getDimensionPixelSize(R.dimen.video_editor_controller_indicator_size);
        paint.setAntiAlias(true);
        paint.setColor(color);
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint2.setAntiAlias(true);
        paint2.setFilterBitmap(true);
        paint2.setDither(false);
        paint3.setAntiAlias(true);
        paint3.setColor(0);
        paint3.setStyle(style);
        Drawable drawable = getResources().getDrawable(R.drawable.ic_double_white_arrow_left);
        t.h(drawable, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
        t.i(bitmap, "getBitmap(...)");
        this.bitmapArrowLeft = bitmap;
        Drawable drawable2 = getResources().getDrawable(R.drawable.ic_double_white_arrow_right);
        t.h(drawable2, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
        Bitmap bitmap2 = ((BitmapDrawable) drawable2).getBitmap();
        t.i(bitmap2, "getBitmap(...)");
        this.bitmapArrowRight = bitmap2;
    }
}
