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
import com.narvii.video.interfaces.ITimeLineControllerCallback;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MediaRetrieveController.kt */
/* loaded from: classes3.dex */
public final class MediaRetrieveController extends View {
    private HashMap _$_findViewCache;
    private final Rect baseRect;
    private Bitmap bitmapArrowLeft;
    private Bitmap bitmapArrowRight;
    private Bitmap bitmapDot;
    private final Paint bitmapPaint;
    private final int controllerColor;
    private final int controllerIndicatorSize;
    private ITimeLineControllerCallback controllerMovedCallback;
    private float cornerRadius;
    private final float[] cornerRadiusArray;
    private int curMediaSectionStartTimeMs;
    private final Rect cutRect;
    private String cutterEndTimeText;
    private int cutterInitWidth;
    private String cutterStartTimeText;
    private final Rect cutterTimeRect;
    private int endOffsetInMs;
    private int frameCellWidth;
    private final Rect handlerIndicatorRect;
    private final Paint handlerPaint;
    private final Path handlerPath;
    private final RectF handlerRect;
    private int handlerWidth;
    private boolean isLeftHandlerActive;
    private boolean isRightHandlerActive;
    private final Paint linePaint;
    private int maxCutRectRight;
    private int maxVideoLengthPresentedByController;
    private float minControllerWidth;
    private int minCutRectLeft;
    private int minVideoLengthPresentedByController;
    private float pointerOffset;
    private int startOffsetInMs;
    private final Paint textPaint;

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

    public final int getFrameCellWidth() {
        return this.frameCellWidth;
    }

    public final void setFrameCellWidth(int i) {
        this.frameCellWidth = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaRetrieveController(Context context) throws Resources.NotFoundException {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.baseRect = new Rect();
        this.cutRect = new Rect();
        this.linePaint = new Paint();
        this.handlerPaint = new Paint();
        this.bitmapPaint = new Paint();
        this.textPaint = new Paint();
        this.handlerRect = new RectF();
        this.handlerPath = new Path();
        this.handlerIndicatorRect = new Rect();
        this.cutterTimeRect = new Rect();
        this.cornerRadius = getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_item_corner_radius) * 1.0f;
        this.cornerRadiusArray = new float[8];
        this.controllerColor = getResources().getColor(R.color.media_timeline_controller_color);
        this.controllerIndicatorSize = getResources().getDimensionPixelSize(R.dimen.video_editor_controller_indicator_size);
        this.cutterInitWidth = -1;
        this.cutterStartTimeText = "";
        this.cutterEndTimeText = "";
        this.linePaint.setAntiAlias(true);
        this.linePaint.setColor(this.controllerColor);
        this.linePaint.setStyle(Paint.Style.STROKE);
        this.linePaint.setStrokeWidth(8.0f);
        this.handlerPaint.setAntiAlias(true);
        this.handlerPaint.setColor(this.controllerColor);
        this.handlerPaint.setStyle(Paint.Style.FILL);
        this.bitmapPaint.setAntiAlias(true);
        this.bitmapPaint.setFilterBitmap(true);
        this.bitmapPaint.setDither(false);
        this.textPaint.setAntiAlias(true);
        this.textPaint.setColor(-1);
        this.textPaint.setTextAlign(Paint.Align.CENTER);
        this.textPaint.setTextSize(getResources().getDimension(R.dimen.media_retrieve_controller_text_size));
        Drawable drawable = getResources().getDrawable(R.drawable.ic_dot);
        if (drawable == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
        }
        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
        Intrinsics.checkExpressionValueIsNotNull(bitmap, "(resources.getDrawable(R…as BitmapDrawable).bitmap");
        this.bitmapDot = bitmap;
        Drawable drawable2 = getResources().getDrawable(R.drawable.ic_double_white_arrow_left);
        if (drawable2 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
        }
        Bitmap bitmap2 = ((BitmapDrawable) drawable2).getBitmap();
        Intrinsics.checkExpressionValueIsNotNull(bitmap2, "(resources.getDrawable(R…as BitmapDrawable).bitmap");
        this.bitmapArrowLeft = bitmap2;
        Drawable drawable3 = getResources().getDrawable(R.drawable.ic_double_white_arrow_right);
        if (drawable3 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
        }
        Bitmap bitmap3 = ((BitmapDrawable) drawable3).getBitmap();
        Intrinsics.checkExpressionValueIsNotNull(bitmap3, "(resources.getDrawable(R…as BitmapDrawable).bitmap");
        this.bitmapArrowRight = bitmap3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaRetrieveController(Context context, AttributeSet attributes) throws Resources.NotFoundException {
        super(context, attributes);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributes, "attributes");
        this.baseRect = new Rect();
        this.cutRect = new Rect();
        this.linePaint = new Paint();
        this.handlerPaint = new Paint();
        this.bitmapPaint = new Paint();
        this.textPaint = new Paint();
        this.handlerRect = new RectF();
        this.handlerPath = new Path();
        this.handlerIndicatorRect = new Rect();
        this.cutterTimeRect = new Rect();
        this.cornerRadius = getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_item_corner_radius) * 1.0f;
        this.cornerRadiusArray = new float[8];
        this.controllerColor = getResources().getColor(R.color.media_timeline_controller_color);
        this.controllerIndicatorSize = getResources().getDimensionPixelSize(R.dimen.video_editor_controller_indicator_size);
        this.cutterInitWidth = -1;
        this.cutterStartTimeText = "";
        this.cutterEndTimeText = "";
        this.linePaint.setAntiAlias(true);
        this.linePaint.setColor(this.controllerColor);
        this.linePaint.setStyle(Paint.Style.STROKE);
        this.linePaint.setStrokeWidth(8.0f);
        this.handlerPaint.setAntiAlias(true);
        this.handlerPaint.setColor(this.controllerColor);
        this.handlerPaint.setStyle(Paint.Style.FILL);
        this.bitmapPaint.setAntiAlias(true);
        this.bitmapPaint.setFilterBitmap(true);
        this.bitmapPaint.setDither(false);
        this.textPaint.setAntiAlias(true);
        this.textPaint.setColor(-1);
        this.textPaint.setTextAlign(Paint.Align.CENTER);
        this.textPaint.setTextSize(getResources().getDimension(R.dimen.media_retrieve_controller_text_size));
        Drawable drawable = getResources().getDrawable(R.drawable.ic_dot);
        if (drawable == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
        }
        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
        Intrinsics.checkExpressionValueIsNotNull(bitmap, "(resources.getDrawable(R…as BitmapDrawable).bitmap");
        this.bitmapDot = bitmap;
        Drawable drawable2 = getResources().getDrawable(R.drawable.ic_double_white_arrow_left);
        if (drawable2 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
        }
        Bitmap bitmap2 = ((BitmapDrawable) drawable2).getBitmap();
        Intrinsics.checkExpressionValueIsNotNull(bitmap2, "(resources.getDrawable(R…as BitmapDrawable).bitmap");
        this.bitmapArrowLeft = bitmap2;
        Drawable drawable3 = getResources().getDrawable(R.drawable.ic_double_white_arrow_right);
        if (drawable3 == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
        }
        Bitmap bitmap3 = ((BitmapDrawable) drawable3).getBitmap();
        Intrinsics.checkExpressionValueIsNotNull(bitmap3, "(resources.getDrawable(R…as BitmapDrawable).bitmap");
        this.bitmapArrowRight = bitmap3;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkParameterIsNotNull(canvas, "canvas");
        super.onDraw(canvas);
        canvas.save();
        canvas.clipRect(this.baseRect);
        canvas.clipRect(this.cutRect, Region.Op.DIFFERENCE);
        canvas.drawColor(getResources().getColor(R.color.media_timeline_cover_color));
        canvas.restore();
        this.linePaint.setStrokeWidth(8.0f);
        Rect rect = this.cutRect;
        float f = rect.left;
        int i = rect.top;
        canvas.drawLine(f, i + 4.0f, rect.right, i + 4.0f, this.linePaint);
        Rect rect2 = this.cutRect;
        float f2 = rect2.left;
        int i2 = rect2.bottom;
        canvas.drawLine(f2, i2 - 4.0f, rect2.right, i2 - 4.0f, this.linePaint);
        if (!this.isLeftHandlerActive && !this.isRightHandlerActive) {
            this.linePaint.setStrokeWidth(5.0f);
            if (Utils.isRtl()) {
                Rect rect3 = this.cutRect;
                float fMax = Math.max(rect3.left, rect3.right - this.pointerOffset);
                Rect rect4 = this.cutRect;
                canvas.drawLine(fMax, rect4.top, fMax, rect4.bottom, this.linePaint);
            } else {
                Rect rect5 = this.cutRect;
                float fMin = Math.min(rect5.right, rect5.left + this.pointerOffset);
                Rect rect6 = this.cutRect;
                canvas.drawLine(fMin, rect6.top, fMin, rect6.bottom, this.linePaint);
            }
        } else {
            this.pointerOffset = 0.0f;
        }
        this.handlerRect.set(r2 - this.handlerWidth, r1.top, this.cutRect.left, r1.bottom);
        updateCornerRadiusArray(true);
        this.handlerPath.reset();
        this.handlerPath.addRoundRect(this.handlerRect, this.cornerRadiusArray, Path.Direction.CW);
        this.handlerPath.close();
        canvas.drawPath(this.handlerPath, this.handlerPaint);
        if (this.minVideoLengthPresentedByController < this.maxVideoLengthPresentedByController) {
            Rect rect7 = this.handlerIndicatorRect;
            int iCenterX = ((int) this.handlerRect.centerX()) - (this.controllerIndicatorSize / 2);
            double dCenterY = this.handlerRect.centerY();
            double d = this.controllerIndicatorSize;
            Double.isNaN(d);
            Double.isNaN(dCenterY);
            int i3 = (int) (dCenterY - (d / 1.5d));
            int iCenterX2 = ((int) this.handlerRect.centerX()) + (this.controllerIndicatorSize / 2);
            double dCenterY2 = this.handlerRect.centerY();
            double d2 = this.controllerIndicatorSize;
            Double.isNaN(d2);
            Double.isNaN(dCenterY2);
            rect7.set(iCenterX, i3, iCenterX2, (int) (dCenterY2 + (d2 / 1.5d)));
            canvas.drawBitmap(this.bitmapArrowLeft, (Rect) null, this.handlerIndicatorRect, this.bitmapPaint);
        }
        this.handlerRect.set(this.cutRect.right, r1.top, r5 + this.handlerWidth, r1.bottom);
        updateCornerRadiusArray(false);
        this.handlerPath.reset();
        this.handlerPath.addRoundRect(this.handlerRect, this.cornerRadiusArray, Path.Direction.CW);
        this.handlerPath.close();
        canvas.drawPath(this.handlerPath, this.handlerPaint);
        if (this.minVideoLengthPresentedByController < this.maxVideoLengthPresentedByController) {
            Rect rect8 = this.handlerIndicatorRect;
            int iCenterX3 = ((int) this.handlerRect.centerX()) - (this.controllerIndicatorSize / 2);
            double dCenterY3 = this.handlerRect.centerY();
            double d3 = this.controllerIndicatorSize;
            Double.isNaN(d3);
            Double.isNaN(dCenterY3);
            int i4 = (int) (dCenterY3 - (d3 / 1.5d));
            int iCenterX4 = ((int) this.handlerRect.centerX()) + (this.controllerIndicatorSize / 2);
            double dCenterY4 = this.handlerRect.centerY();
            double d4 = this.controllerIndicatorSize;
            Double.isNaN(d4);
            Double.isNaN(dCenterY4);
            rect8.set(iCenterX3, i4, iCenterX4, (int) (dCenterY4 + (d4 / 1.5d)));
            canvas.drawBitmap(this.bitmapArrowRight, (Rect) null, this.handlerIndicatorRect, this.bitmapPaint);
        }
        Rect rect9 = this.cutterTimeRect;
        Rect rect10 = this.cutRect;
        int i5 = rect10.left;
        int i6 = this.handlerWidth;
        int i7 = rect10.bottom;
        rect9.set(i5 - (i6 * 2), i7, i5 + i6, (int) (i7 + this.textPaint.getTextSize()));
        canvas.drawText(Utils.isRtl() ? this.cutterEndTimeText : this.cutterStartTimeText, this.cutterTimeRect.centerX(), this.cutterTimeRect.bottom, this.textPaint);
        Rect rect11 = this.cutterTimeRect;
        Rect rect12 = this.cutRect;
        int i8 = rect12.right;
        int i9 = this.handlerWidth;
        int i10 = rect12.bottom;
        rect11.set(i8 - i9, i10, i8 + (i9 * 2), (int) (i10 + this.textPaint.getTextSize()));
        canvas.drawText(Utils.isRtl() ? this.cutterStartTimeText : this.cutterEndTimeText, this.cutterTimeRect.centerX(), this.cutterTimeRect.bottom, this.textPaint);
    }

    public final void layoutRect(int i, int i2, int i3, int i4, int i5) {
        if (this.cutRect.isEmpty() && this.baseRect.isEmpty()) {
            this.handlerWidth = i5;
            this.baseRect.set(i, i2, i3, i4);
            if (Utils.isRtl()) {
                Rect rect = this.cutRect;
                int i6 = this.cutterInitWidth;
                rect.set(i6 > 0 ? (i3 - i5) - i6 : i + i5, i2, i3 - i5, i4);
            } else {
                Rect rect2 = this.cutRect;
                int i7 = i + i5;
                int i8 = this.cutterInitWidth;
                rect2.set(i7, i2, i8 > 0 ? i8 + i7 : i3 - i5, i4);
            }
            this.minCutRectLeft = i + i5;
            this.maxCutRectRight = i3 - i5;
            this.minControllerWidth = (this.minVideoLengthPresentedByController / this.maxVideoLengthPresentedByController) * ((i3 - i) - (i5 * 2));
        }
    }

    public final void initComponent(int i, int i2, ITimeLineControllerCallback iTimeLineControllerCallback, int i3, int i4) {
        this.minVideoLengthPresentedByController = i;
        this.maxVideoLengthPresentedByController = i2;
        if (i4 <= 0) {
            i4 = i2;
        }
        this.endOffsetInMs = i4;
        this.controllerMovedCallback = iTimeLineControllerCallback;
        this.cutterInitWidth = i3;
        this.cutRect.set(0, 0, 0, 0);
        this.baseRect.set(0, 0, 0, 0);
        if (i >= i2) {
            this.cornerRadius = getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_item_corner_radius_small) * 1.0f;
        }
        requestLayout();
    }

    public final void updatePointerPosition(float f) {
        this.pointerOffset = f >= 0.0f ? this.frameCellWidth * f : 0.0f;
        invalidate();
    }

    public final void updateMediaSectionStartTime(int i) {
        this.curMediaSectionStartTimeMs = i;
        this.cutterStartTimeText = MediaTimeLineComponentKt.convertMillisToTime(this.startOffsetInMs + i);
        this.cutterEndTimeText = MediaTimeLineComponentKt.convertMillisToTime(i + this.endOffsetInMs);
        invalidate();
    }

    public final void reset() {
        this.startOffsetInMs = 0;
        this.endOffsetInMs = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean isTouchInSlideHandler(float r14) {
        /*
            r13 = this;
            int r0 = r13.minVideoLengthPresentedByController
            int r1 = r13.maxVideoLengthPresentedByController
            r2 = 0
            if (r0 < r1) goto L8
            return r2
        L8:
            double r0 = (double) r14
            android.graphics.Rect r14 = r13.cutRect
            int r14 = r14.left
            double r3 = (double) r14
            int r5 = r13.handlerWidth
            double r6 = (double) r5
            r8 = 4609434218613702656(0x3ff8000000000000, double:1.5)
            java.lang.Double.isNaN(r6)
            double r6 = r6 * r8
            java.lang.Double.isNaN(r3)
            double r3 = r3 - r6
            r6 = 4602678819172646912(0x3fe0000000000000, double:0.5)
            r10 = 1
            int r11 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r11 < 0) goto L37
            double r3 = (double) r14
            double r11 = (double) r5
            java.lang.Double.isNaN(r11)
            double r11 = r11 * r6
            java.lang.Double.isNaN(r3)
            double r3 = r3 + r11
            int r14 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r14 > 0) goto L37
            r13.isLeftHandlerActive = r10
            r13.isRightHandlerActive = r2
            goto L5f
        L37:
            android.graphics.Rect r14 = r13.cutRect
            int r14 = r14.right
            double r3 = (double) r14
            int r5 = r13.handlerWidth
            double r11 = (double) r5
            java.lang.Double.isNaN(r11)
            double r11 = r11 * r6
            java.lang.Double.isNaN(r3)
            double r3 = r3 - r11
            int r6 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r6 < 0) goto L5f
            double r3 = (double) r14
            double r5 = (double) r5
            java.lang.Double.isNaN(r5)
            double r5 = r5 * r8
            java.lang.Double.isNaN(r3)
            double r3 = r3 + r5
            int r14 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r14 > 0) goto L5f
            r13.isLeftHandlerActive = r2
            r13.isRightHandlerActive = r10
        L5f:
            boolean r14 = r13.isLeftHandlerActive
            if (r14 != 0) goto L67
            boolean r14 = r13.isRightHandlerActive
            if (r14 == 0) goto L68
        L67:
            r2 = 1
        L68:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.video.widget.MediaRetrieveController.isTouchInSlideHandler(float):boolean");
    }

    public final void onSlideHandlerMove(MotionEvent event) {
        Intrinsics.checkParameterIsNotNull(event, "event");
        if ((!this.isLeftHandlerActive && !this.isRightHandlerActive) || this.minVideoLengthPresentedByController >= this.maxVideoLengthPresentedByController) {
            this.isLeftHandlerActive = false;
            this.isRightHandlerActive = false;
            return;
        }
        int actionMasked = event.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 2) {
                if (this.isLeftHandlerActive) {
                    Rect rect = this.cutRect;
                    float x = event.getX();
                    int x2 = this.minCutRectLeft;
                    if (x > x2) {
                        float x3 = event.getX();
                        int i = this.cutRect.right;
                        float f = this.minControllerWidth;
                        x2 = (int) (x3 >= ((float) i) - f ? (i - f) + 1.0f : event.getX());
                    }
                    rect.left = x2;
                } else if (this.isRightHandlerActive) {
                    Rect rect2 = this.cutRect;
                    float x4 = event.getX();
                    int x5 = this.maxCutRectRight;
                    if (x4 < x5) {
                        float x6 = event.getX();
                        int i2 = this.cutRect.left;
                        float f2 = this.minControllerWidth;
                        x5 = (int) (x6 <= ((float) i2) + f2 ? i2 + f2 + 1.0f : event.getX());
                    }
                    rect2.right = x5;
                }
                updateControllerMove(true);
                invalidate();
                return;
            }
            updateControllerMove(false);
            if (event.getActionMasked() == 3 || event.getActionMasked() == 1) {
                this.isLeftHandlerActive = false;
                this.isRightHandlerActive = false;
            }
            invalidate();
        }
    }

    private final void updateCornerRadiusArray(boolean z) {
        this.cornerRadiusArray[0] = z ? this.cornerRadius : 0.0f;
        this.cornerRadiusArray[1] = z ? this.cornerRadius : 0.0f;
        this.cornerRadiusArray[2] = z ? 0.0f : this.cornerRadius;
        this.cornerRadiusArray[3] = z ? 0.0f : this.cornerRadius;
        this.cornerRadiusArray[4] = z ? 0.0f : this.cornerRadius;
        this.cornerRadiusArray[5] = z ? 0.0f : this.cornerRadius;
        this.cornerRadiusArray[6] = z ? this.cornerRadius : 0.0f;
        this.cornerRadiusArray[7] = z ? this.cornerRadius : 0.0f;
    }

    private final void updateControllerMove(boolean z) {
        int iWidth;
        int iWidth2;
        ITimeLineControllerCallback iTimeLineControllerCallback = this.controllerMovedCallback;
        if (iTimeLineControllerCallback != null) {
            if (Utils.isRtl()) {
                Rect rect = this.baseRect;
                iWidth = (int) (((rect.right - (this.cutRect.right + this.handlerWidth)) / (rect.width() - (this.handlerWidth * 2))) * this.maxVideoLengthPresentedByController);
            } else {
                int i = this.cutRect.left;
                Rect rect2 = this.baseRect;
                iWidth = (int) (((i - (rect2.left + this.handlerWidth)) / (rect2.width() - (this.handlerWidth * 2))) * this.maxVideoLengthPresentedByController);
            }
            this.startOffsetInMs = iWidth;
            if (Utils.isRtl()) {
                Rect rect3 = this.baseRect;
                iWidth2 = (int) (((rect3.right - (this.cutRect.left + this.handlerWidth)) / (rect3.width() - (this.handlerWidth * 2))) * this.maxVideoLengthPresentedByController);
            } else {
                int i2 = this.cutRect.right;
                Rect rect4 = this.baseRect;
                iWidth2 = (int) (((i2 - (rect4.left + this.handlerWidth)) / (rect4.width() - (this.handlerWidth * 2))) * this.maxVideoLengthPresentedByController);
            }
            this.endOffsetInMs = iWidth2;
            iTimeLineControllerCallback.onControllerMoved(this.startOffsetInMs, this.endOffsetInMs, this.isLeftHandlerActive, z);
        }
        this.cutterStartTimeText = MediaTimeLineComponentKt.convertMillisToTime(this.curMediaSectionStartTimeMs + this.startOffsetInMs);
        this.cutterEndTimeText = MediaTimeLineComponentKt.convertMillisToTime(this.curMediaSectionStartTimeMs + this.endOffsetInMs);
    }
}
