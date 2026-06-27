package com.narvii.video.widget;

import android.content.Context;
import android.content.res.Resources;
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
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ViceTimeLineCutterView.kt */
/* loaded from: classes3.dex */
public final class ViceTimeLineCutterView extends View {
    private HashMap _$_findViewCache;
    private boolean active;
    private int baseColor;
    private final RectF baseRect;
    private Bitmap bitmapArrowLeft;
    private Bitmap bitmapArrowRight;
    private final Paint bitmapPaint;
    private final int boxColor;
    private final Paint boxPaint;
    private IViceTimeLineCutterCallback callback;
    private final float cornerRadius;
    private int fillColor;
    private final Paint fillPaint;
    private final RectF handlerIndicatorRect;
    private final int handlerIndicatorSize;
    private int handlerWidth;
    private final Path innerPath;
    private final RectF innerRect;
    private boolean isLeftHandlerActive;
    private boolean isRightHandlerActive;
    private float mainTimeLineEndEdge;
    private float mainTimeLineStartEdge;
    private float maxCutterWidth;
    private float minCutterWidth;
    private final RectF outerRect;
    private final boolean rtl;

    /* compiled from: ViceTimeLineCutterView.kt */
    public interface IViceTimeLineCutterCallback {
        void onCutterMoved(float f, float f2, boolean z);
    }

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViceTimeLineCutterView(Context context) throws Resources.NotFoundException {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.rtl = Utils.isRtl();
        this.cornerRadius = getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_item_corner_radius) * 1.0f;
        this.baseRect = new RectF();
        this.outerRect = new RectF();
        this.innerRect = new RectF();
        this.innerPath = new Path();
        this.handlerIndicatorRect = new RectF();
        this.boxPaint = new Paint();
        this.bitmapPaint = new Paint();
        this.fillPaint = new Paint();
        this.boxColor = getResources().getColor(R.color.media_timeline_controller_color);
        this.handlerWidth = getResources().getDimensionPixelSize(R.dimen.video_editor_controller_handler_width);
        this.handlerIndicatorSize = getResources().getDimensionPixelSize(R.dimen.video_editor_controller_indicator_size);
        this.boxPaint.setAntiAlias(true);
        this.boxPaint.setColor(this.boxColor);
        this.boxPaint.setStyle(Paint.Style.FILL);
        this.bitmapPaint.setAntiAlias(true);
        this.bitmapPaint.setFilterBitmap(true);
        this.bitmapPaint.setDither(false);
        this.fillPaint.setAntiAlias(true);
        this.fillPaint.setColor(0);
        this.fillPaint.setStyle(Paint.Style.FILL);
        Drawable drawable = getResources().getDrawable(R.drawable.ic_double_white_arrow_left);
        if (drawable == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
        }
        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
        Intrinsics.checkExpressionValueIsNotNull(bitmap, "(resources.getDrawable(R…as BitmapDrawable).bitmap");
        this.bitmapArrowLeft = bitmap;
        Drawable drawable2 = getResources().getDrawable(R.drawable.ic_double_white_arrow_right);
        if (drawable2 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
        }
        Bitmap bitmap2 = ((BitmapDrawable) drawable2).getBitmap();
        Intrinsics.checkExpressionValueIsNotNull(bitmap2, "(resources.getDrawable(R…as BitmapDrawable).bitmap");
        this.bitmapArrowRight = bitmap2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViceTimeLineCutterView(Context context, AttributeSet attributes) throws Resources.NotFoundException {
        super(context, attributes);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributes, "attributes");
        this.rtl = Utils.isRtl();
        this.cornerRadius = getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_item_corner_radius) * 1.0f;
        this.baseRect = new RectF();
        this.outerRect = new RectF();
        this.innerRect = new RectF();
        this.innerPath = new Path();
        this.handlerIndicatorRect = new RectF();
        this.boxPaint = new Paint();
        this.bitmapPaint = new Paint();
        this.fillPaint = new Paint();
        this.boxColor = getResources().getColor(R.color.media_timeline_controller_color);
        this.handlerWidth = getResources().getDimensionPixelSize(R.dimen.video_editor_controller_handler_width);
        this.handlerIndicatorSize = getResources().getDimensionPixelSize(R.dimen.video_editor_controller_indicator_size);
        this.boxPaint.setAntiAlias(true);
        this.boxPaint.setColor(this.boxColor);
        this.boxPaint.setStyle(Paint.Style.FILL);
        this.bitmapPaint.setAntiAlias(true);
        this.bitmapPaint.setFilterBitmap(true);
        this.bitmapPaint.setDither(false);
        this.fillPaint.setAntiAlias(true);
        this.fillPaint.setColor(0);
        this.fillPaint.setStyle(Paint.Style.FILL);
        Drawable drawable = getResources().getDrawable(R.drawable.ic_double_white_arrow_left);
        if (drawable == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
        }
        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
        Intrinsics.checkExpressionValueIsNotNull(bitmap, "(resources.getDrawable(R…as BitmapDrawable).bitmap");
        this.bitmapArrowLeft = bitmap;
        Drawable drawable2 = getResources().getDrawable(R.drawable.ic_double_white_arrow_right);
        if (drawable2 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
        }
        Bitmap bitmap2 = ((BitmapDrawable) drawable2).getBitmap();
        Intrinsics.checkExpressionValueIsNotNull(bitmap2, "(resources.getDrawable(R…as BitmapDrawable).bitmap");
        this.bitmapArrowRight = bitmap2;
    }

    public final void layoutRect(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        this.minCutterWidth = f5;
        this.maxCutterWidth = f6;
        this.mainTimeLineStartEdge = f7;
        this.mainTimeLineEndEdge = f8;
        this.baseRect.set(0.0f, f2, getWidth(), f4);
        float f9 = 4;
        this.innerRect.set(f, f2 + f9, f3, f4 - f9);
        requestLayout();
    }

    public final RectF getCurrentTimelineRect() {
        return this.innerRect;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkParameterIsNotNull(canvas, "canvas");
        super.onDraw(canvas);
        this.fillPaint.setColor(this.baseColor);
        canvas.drawRect(this.baseRect, this.fillPaint);
        canvas.save();
        RectF rectF = this.outerRect;
        RectF rectF2 = this.innerRect;
        float f = rectF2.left;
        int i = this.handlerWidth;
        float f2 = 4;
        rectF.set(f - i, rectF2.top - f2, rectF2.right + i, rectF2.bottom + f2);
        canvas.clipRect(this.outerRect);
        this.innerPath.reset();
        Path path = this.innerPath;
        RectF rectF3 = this.innerRect;
        float f3 = this.cornerRadius;
        path.addRoundRect(rectF3, f3, f3, Path.Direction.CW);
        this.innerPath.close();
        canvas.clipPath(this.innerPath, Region.Op.DIFFERENCE);
        RectF rectF4 = this.outerRect;
        float f4 = this.cornerRadius;
        canvas.drawRoundRect(rectF4, f4, f4, this.boxPaint);
        canvas.restore();
        this.fillPaint.setColor(this.fillColor);
        canvas.drawPath(this.innerPath, this.fillPaint);
        RectF rectF5 = this.handlerIndicatorRect;
        RectF rectF6 = this.outerRect;
        float f5 = (rectF6.left + (this.handlerWidth / 2.0f)) - (this.handlerIndicatorSize / 2.0f);
        float fCenterY = rectF6.centerY();
        int i2 = this.handlerIndicatorSize;
        RectF rectF7 = this.outerRect;
        rectF5.set(f5, fCenterY - (i2 / 1.5f), rectF7.left + (this.handlerWidth / 2.0f) + (i2 / 2.0f), rectF7.centerY() + (this.handlerIndicatorSize / 1.5f));
        canvas.drawBitmap(this.bitmapArrowLeft, (Rect) null, this.handlerIndicatorRect, this.bitmapPaint);
        RectF rectF8 = this.handlerIndicatorRect;
        RectF rectF9 = this.outerRect;
        float f6 = (rectF9.right - (this.handlerWidth / 2.0f)) - (this.handlerIndicatorSize / 2.0f);
        float fCenterY2 = rectF9.centerY();
        int i3 = this.handlerIndicatorSize;
        RectF rectF10 = this.outerRect;
        rectF8.set(f6, fCenterY2 - (i3 / 1.5f), (rectF10.right - (this.handlerWidth / 2.0f)) + (i3 / 2.0f), rectF10.centerY() + (this.handlerIndicatorSize / 1.5f));
        canvas.drawBitmap(this.bitmapArrowRight, (Rect) null, this.handlerIndicatorRect, this.bitmapPaint);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        Intrinsics.checkParameterIsNotNull(event, "event");
        if (this.active) {
            if (event.getActionMasked() == 0) {
                isTouchInSlideHandler(event.getX());
                return true;
            }
            onSlideHandlerMove(event);
            return true;
        }
        return super.onTouchEvent(event);
    }

    public final void setControllerCallback(IViceTimeLineCutterCallback iViceTimeLineCutterCallback) {
        this.callback = iViceTimeLineCutterCallback;
    }

    public final void setFillColor(int i, int i2) {
        this.fillColor = i;
        this.baseColor = i2;
    }

    public final void toggle(boolean z) {
        this.active = z;
        if (z) {
            setVisibility(0);
        } else {
            setVisibility(8);
        }
    }

    public final void onActionUpInterceptedForFling(MotionEvent event) {
        Intrinsics.checkParameterIsNotNull(event, "event");
        if (this.active) {
            onSlideHandlerMove(event);
        }
    }

    private final void isTouchInSlideHandler(float f) {
        double d = f;
        float f2 = this.innerRect.left;
        double d2 = f2;
        int i = this.handlerWidth;
        double d3 = i;
        Double.isNaN(d3);
        Double.isNaN(d2);
        if (d >= d2 - (d3 * 1.5d)) {
            double d4 = f2;
            double d5 = i;
            Double.isNaN(d5);
            Double.isNaN(d4);
            if (d <= d4 + (d5 * 0.5d)) {
                this.isLeftHandlerActive = true;
                this.isRightHandlerActive = false;
                return;
            }
        }
        float f3 = this.innerRect.right;
        double d6 = f3;
        int i2 = this.handlerWidth;
        double d7 = i2;
        Double.isNaN(d7);
        Double.isNaN(d6);
        if (d >= d6 - (d7 * 0.5d)) {
            double d8 = f3;
            double d9 = i2;
            Double.isNaN(d9);
            Double.isNaN(d8);
            if (d <= d8 + (d9 * 1.5d)) {
                this.isLeftHandlerActive = false;
                this.isRightHandlerActive = true;
            }
        }
    }

    private final void onSlideHandlerMove(MotionEvent motionEvent) {
        int actionMasked;
        float x;
        float fMin;
        if ((this.isLeftHandlerActive || this.isRightHandlerActive) && (actionMasked = motionEvent.getActionMasked()) != 0) {
            if (actionMasked == 2) {
                if (this.isLeftHandlerActive) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    float fMax = this.rtl ? this.innerRect.right - this.maxCutterWidth : Math.max(this.mainTimeLineStartEdge, this.innerRect.right - this.maxCutterWidth);
                    if (this.rtl) {
                        fMin = this.innerRect.right - this.minCutterWidth;
                    } else {
                        float f = this.mainTimeLineEndEdge;
                        float f2 = this.minCutterWidth;
                        fMin = Math.min(f - f2, this.innerRect.right - f2);
                    }
                    RectF rectF = this.innerRect;
                    if (motionEvent.getX() > fMax) {
                        fMax = motionEvent.getX() >= fMin ? fMin : motionEvent.getX();
                    }
                    rectF.left = fMax;
                } else if (this.isRightHandlerActive) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    if (this.rtl) {
                        float f3 = this.mainTimeLineEndEdge;
                        float f4 = this.minCutterWidth;
                        x = Math.max(f3 + f4, this.innerRect.left + f4);
                    } else {
                        x = this.innerRect.left + this.minCutterWidth;
                    }
                    float fMin2 = this.rtl ? Math.min(this.mainTimeLineStartEdge, this.innerRect.left + this.maxCutterWidth) : this.innerRect.left + this.maxCutterWidth;
                    RectF rectF2 = this.innerRect;
                    if (motionEvent.getX() > x) {
                        x = motionEvent.getX() >= fMin2 ? fMin2 : motionEvent.getX();
                    }
                    rectF2.right = x;
                }
                updateControllerMove(true);
                invalidate();
                return;
            }
            updateControllerMove(false);
            if (motionEvent.getActionMasked() == 3 || motionEvent.getActionMasked() == 1) {
                getParent().requestDisallowInterceptTouchEvent(false);
                this.isLeftHandlerActive = false;
                this.isRightHandlerActive = false;
            }
            invalidate();
        }
    }

    private final void updateControllerMove(boolean z) {
        float fWidth = this.innerRect.width();
        float fAbs = Math.abs((this.rtl ? this.innerRect.right : this.innerRect.left) - this.mainTimeLineStartEdge);
        if (!z) {
            System.out.println("testtest onControllerMoved left = " + fAbs + " width = " + fWidth);
        }
        IViceTimeLineCutterCallback iViceTimeLineCutterCallback = this.callback;
        if (iViceTimeLineCutterCallback != null) {
            iViceTimeLineCutterCallback.onCutterMoved(fAbs, fWidth, z);
        }
    }
}
