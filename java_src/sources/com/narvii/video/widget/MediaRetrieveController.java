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
import com.narvii.video.interfaces.ITimeLineControllerCallback;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class MediaRetrieveController extends View {

    @NotNull
    private final Rect baseRect;

    @NotNull
    private Bitmap bitmapArrowLeft;

    @NotNull
    private Bitmap bitmapArrowRight;

    @NotNull
    private Bitmap bitmapDot;

    @NotNull
    private final Paint bitmapPaint;
    private final int controllerColor;
    private final int controllerIndicatorSize;

    @Nullable
    private ITimeLineControllerCallback controllerMovedCallback;
    private float cornerRadius;

    @NotNull
    private final float[] cornerRadiusArray;
    private int curMediaSectionStartTimeMs;

    @NotNull
    private final Rect cutRect;

    @NotNull
    private String cutterEndTimeText;
    private int cutterInitWidth;

    @NotNull
    private String cutterStartTimeText;

    @NotNull
    private final Rect cutterTimeRect;
    private int endOffsetInMs;
    private int frameCellWidth;

    @NotNull
    private final Rect handlerIndicatorRect;

    @NotNull
    private final Paint handlerPaint;

    @NotNull
    private final Path handlerPath;

    @NotNull
    private final RectF handlerRect;
    private int handlerWidth;
    private boolean isLeftHandlerActive;
    private boolean isRightHandlerActive;

    @NotNull
    private final Paint linePaint;
    private int maxCutRectRight;
    private int maxVideoLengthPresentedByController;
    private float minControllerWidth;
    private int minCutRectLeft;
    private int minVideoLengthPresentedByController;
    private float pointerOffset;
    private int startOffsetInMs;

    @NotNull
    private final Paint textPaint;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaRetrieveController(@NotNull Context context) {
        super(context);
        t.j(context, "context");
        this.baseRect = new Rect();
        this.cutRect = new Rect();
        Paint paint = new Paint();
        this.linePaint = paint;
        Paint paint2 = new Paint();
        this.handlerPaint = paint2;
        Paint paint3 = new Paint();
        this.bitmapPaint = paint3;
        Paint paint4 = new Paint();
        this.textPaint = paint4;
        this.handlerRect = new RectF();
        this.handlerPath = new Path();
        this.handlerIndicatorRect = new Rect();
        this.cutterTimeRect = new Rect();
        this.cornerRadius = getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_item_corner_radius) * 1.0f;
        this.cornerRadiusArray = new float[8];
        int color = getResources().getColor(R.color.media_timeline_controller_color);
        this.controllerColor = color;
        this.controllerIndicatorSize = getResources().getDimensionPixelSize(R.dimen.video_editor_controller_indicator_size);
        this.cutterInitWidth = -1;
        this.cutterStartTimeText = "";
        this.cutterEndTimeText = "";
        paint.setAntiAlias(true);
        paint.setColor(color);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(8.0f);
        paint2.setAntiAlias(true);
        paint2.setColor(color);
        paint2.setStyle(Paint.Style.FILL);
        paint3.setAntiAlias(true);
        paint3.setFilterBitmap(true);
        paint3.setDither(false);
        paint4.setAntiAlias(true);
        paint4.setColor(-1);
        paint4.setTextAlign(Paint.Align.CENTER);
        paint4.setTextSize(getResources().getDimension(R.dimen.media_retrieve_controller_text_size));
        Drawable drawable = getResources().getDrawable(R.drawable.ic_dot);
        t.h(drawable, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
        t.i(bitmap, "getBitmap(...)");
        this.bitmapDot = bitmap;
        Drawable drawable2 = getResources().getDrawable(R.drawable.ic_double_white_arrow_left);
        t.h(drawable2, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
        Bitmap bitmap2 = ((BitmapDrawable) drawable2).getBitmap();
        t.i(bitmap2, "getBitmap(...)");
        this.bitmapArrowLeft = bitmap2;
        Drawable drawable3 = getResources().getDrawable(R.drawable.ic_double_white_arrow_right);
        t.h(drawable3, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
        Bitmap bitmap3 = ((BitmapDrawable) drawable3).getBitmap();
        t.i(bitmap3, "getBitmap(...)");
        this.bitmapArrowRight = bitmap3;
    }

    public final int getFrameCellWidth() {
        return this.frameCellWidth;
    }

    public final void reset() {
        this.startOffsetInMs = 0;
        this.endOffsetInMs = 0;
    }

    public final void setFrameCellWidth(int i10) {
        this.frameCellWidth = i10;
    }

    public final void updatePointerPosition(float f) {
        this.pointerOffset = f >= 0.0f ? this.frameCellWidth * f : 0.0f;
        invalidate();
    }

    private final void updateControllerMove(boolean z6) {
        int iWidth;
        int iWidth2;
        ITimeLineControllerCallback iTimeLineControllerCallback = this.controllerMovedCallback;
        if (iTimeLineControllerCallback != null) {
            if (Utils.isRtl()) {
                Rect rect = this.baseRect;
                iWidth = (int) (((rect.right - (this.cutRect.right + this.handlerWidth)) / (rect.width() - (this.handlerWidth * 2))) * this.maxVideoLengthPresentedByController);
            } else {
                int i10 = this.cutRect.left;
                Rect rect2 = this.baseRect;
                iWidth = (int) (((i10 - (rect2.left + this.handlerWidth)) / (rect2.width() - (this.handlerWidth * 2))) * this.maxVideoLengthPresentedByController);
            }
            this.startOffsetInMs = iWidth;
            if (Utils.isRtl()) {
                Rect rect3 = this.baseRect;
                iWidth2 = (int) (((rect3.right - (this.cutRect.left + this.handlerWidth)) / (rect3.width() - (this.handlerWidth * 2))) * this.maxVideoLengthPresentedByController);
            } else {
                int i11 = this.cutRect.right;
                Rect rect4 = this.baseRect;
                iWidth2 = (int) (((i11 - (rect4.left + this.handlerWidth)) / (rect4.width() - (this.handlerWidth * 2))) * this.maxVideoLengthPresentedByController);
            }
            this.endOffsetInMs = iWidth2;
            iTimeLineControllerCallback.onControllerMoved(this.startOffsetInMs, iWidth2, this.isLeftHandlerActive, z6);
        }
        this.cutterStartTimeText = MediaTimeLineComponentKt.convertMillisToTime(this.curMediaSectionStartTimeMs + this.startOffsetInMs);
        this.cutterEndTimeText = MediaTimeLineComponentKt.convertMillisToTime(this.curMediaSectionStartTimeMs + this.endOffsetInMs);
    }

    private final void updateCornerRadiusArray(boolean z6) {
        float[] fArr = this.cornerRadiusArray;
        fArr[0] = z6 ? this.cornerRadius : 0.0f;
        fArr[1] = z6 ? this.cornerRadius : 0.0f;
        fArr[2] = z6 ? 0.0f : this.cornerRadius;
        fArr[3] = z6 ? 0.0f : this.cornerRadius;
        fArr[4] = z6 ? 0.0f : this.cornerRadius;
        fArr[5] = z6 ? 0.0f : this.cornerRadius;
        fArr[6] = z6 ? this.cornerRadius : 0.0f;
        fArr[7] = z6 ? this.cornerRadius : 0.0f;
    }

    public final void initComponent(int i10, int i11, @Nullable ITimeLineControllerCallback iTimeLineControllerCallback, int i12, int i13) {
        this.minVideoLengthPresentedByController = i10;
        this.maxVideoLengthPresentedByController = i11;
        if (i13 <= 0) {
            i13 = i11;
        }
        this.endOffsetInMs = i13;
        this.controllerMovedCallback = iTimeLineControllerCallback;
        this.cutterInitWidth = i12;
        this.cutRect.set(0, 0, 0, 0);
        this.baseRect.set(0, 0, 0, 0);
        if (i10 >= i11) {
            this.cornerRadius = getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_item_corner_radius_small) * 1.0f;
        }
        requestLayout();
    }

    public final boolean isTouchInSlideHandler(float f) {
        if (this.minVideoLengthPresentedByController >= this.maxVideoLengthPresentedByController) {
            return false;
        }
        double d = f;
        Rect rect = this.cutRect;
        int i10 = rect.left;
        int i11 = this.handlerWidth;
        if (d < ((double) i10) - (((double) i11) * 1.5d) || d > ((double) i10) + (((double) i11) * 0.5d)) {
            int i12 = rect.right;
            if (d >= ((double) i12) - (((double) i11) * 0.5d) && d <= ((double) i12) + (((double) i11) * 1.5d)) {
                this.isLeftHandlerActive = false;
                this.isRightHandlerActive = true;
            }
        } else {
            this.isLeftHandlerActive = true;
            this.isRightHandlerActive = false;
        }
        return this.isLeftHandlerActive || this.isRightHandlerActive;
    }

    public final void layoutRect(int i10, int i11, int i12, int i13, int i14) {
        if (this.cutRect.isEmpty() && this.baseRect.isEmpty()) {
            this.handlerWidth = i14;
            this.baseRect.set(i10, i11, i12, i13);
            if (Utils.isRtl()) {
                Rect rect = this.cutRect;
                int i15 = this.cutterInitWidth;
                rect.set(i15 > 0 ? (i12 - i14) - i15 : i10 + i14, i11, i12 - i14, i13);
            } else {
                Rect rect2 = this.cutRect;
                int i16 = i10 + i14;
                int i17 = this.cutterInitWidth;
                rect2.set(i16, i11, i17 > 0 ? i17 + i16 : i12 - i14, i13);
            }
            this.minCutRectLeft = i10 + i14;
            this.maxCutRectRight = i12 - i14;
            this.minControllerWidth = (this.minVideoLengthPresentedByController / this.maxVideoLengthPresentedByController) * ((i12 - i10) - (i14 * 2));
        }
    }

    @Override // android.view.View
    protected void onDraw(@NotNull Canvas canvas) {
        t.j(canvas, "canvas");
        super.onDraw(canvas);
        canvas.save();
        canvas.clipRect(this.baseRect);
        canvas.clipRect(this.cutRect, Region.Op.DIFFERENCE);
        canvas.drawColor(getResources().getColor(R.color.media_timeline_cover_color));
        canvas.restore();
        this.linePaint.setStrokeWidth(8.0f);
        Rect rect = this.cutRect;
        float f = rect.left;
        int i10 = rect.top;
        canvas.drawLine(f, i10 + 4.0f, rect.right, i10 + 4.0f, this.linePaint);
        Rect rect2 = this.cutRect;
        float f6 = rect2.left;
        int i11 = rect2.bottom;
        canvas.drawLine(f6, i11 - 4.0f, rect2.right, i11 - 4.0f, this.linePaint);
        if (this.isLeftHandlerActive || this.isRightHandlerActive) {
            this.pointerOffset = 0.0f;
        } else {
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
        }
        RectF rectF = this.handlerRect;
        Rect rect7 = this.cutRect;
        int i12 = rect7.left;
        rectF.set(i12 - this.handlerWidth, rect7.top, i12, rect7.bottom);
        updateCornerRadiusArray(true);
        this.handlerPath.reset();
        Path path = this.handlerPath;
        RectF rectF2 = this.handlerRect;
        float[] fArr = this.cornerRadiusArray;
        Path.Direction direction = Path.Direction.CW;
        path.addRoundRect(rectF2, fArr, direction);
        this.handlerPath.close();
        canvas.drawPath(this.handlerPath, this.handlerPaint);
        if (this.minVideoLengthPresentedByController < this.maxVideoLengthPresentedByController) {
            this.handlerIndicatorRect.set(((int) this.handlerRect.centerX()) - (this.controllerIndicatorSize / 2), (int) (((double) this.handlerRect.centerY()) - (((double) this.controllerIndicatorSize) / 1.5d)), ((int) this.handlerRect.centerX()) + (this.controllerIndicatorSize / 2), (int) (((double) this.handlerRect.centerY()) + (((double) this.controllerIndicatorSize) / 1.5d)));
            canvas.drawBitmap(this.bitmapArrowLeft, (Rect) null, this.handlerIndicatorRect, this.bitmapPaint);
        }
        RectF rectF3 = this.handlerRect;
        Rect rect8 = this.cutRect;
        int i13 = rect8.right;
        rectF3.set(i13, rect8.top, i13 + this.handlerWidth, rect8.bottom);
        updateCornerRadiusArray(false);
        this.handlerPath.reset();
        this.handlerPath.addRoundRect(this.handlerRect, this.cornerRadiusArray, direction);
        this.handlerPath.close();
        canvas.drawPath(this.handlerPath, this.handlerPaint);
        if (this.minVideoLengthPresentedByController < this.maxVideoLengthPresentedByController) {
            this.handlerIndicatorRect.set(((int) this.handlerRect.centerX()) - (this.controllerIndicatorSize / 2), (int) (((double) this.handlerRect.centerY()) - (((double) this.controllerIndicatorSize) / 1.5d)), ((int) this.handlerRect.centerX()) + (this.controllerIndicatorSize / 2), (int) (((double) this.handlerRect.centerY()) + (((double) this.controllerIndicatorSize) / 1.5d)));
            canvas.drawBitmap(this.bitmapArrowRight, (Rect) null, this.handlerIndicatorRect, this.bitmapPaint);
        }
        Rect rect9 = this.cutterTimeRect;
        Rect rect10 = this.cutRect;
        int i14 = rect10.left;
        int i15 = this.handlerWidth;
        int i16 = rect10.bottom;
        rect9.set(i14 - (i15 * 2), i16, i14 + i15, (int) (i16 + this.textPaint.getTextSize()));
        canvas.drawText(Utils.isRtl() ? this.cutterEndTimeText : this.cutterStartTimeText, this.cutterTimeRect.centerX(), this.cutterTimeRect.bottom, this.textPaint);
        Rect rect11 = this.cutterTimeRect;
        Rect rect12 = this.cutRect;
        int i17 = rect12.right;
        int i18 = this.handlerWidth;
        int i19 = rect12.bottom;
        rect11.set(i17 - i18, i19, i17 + (i18 * 2), (int) (i19 + this.textPaint.getTextSize()));
        canvas.drawText(Utils.isRtl() ? this.cutterStartTimeText : this.cutterEndTimeText, this.cutterTimeRect.centerX(), this.cutterTimeRect.bottom, this.textPaint);
    }

    public final void onSlideHandlerMove(@NotNull MotionEvent event) {
        t.j(event, "event");
        if ((!this.isLeftHandlerActive && !this.isRightHandlerActive) || this.minVideoLengthPresentedByController >= this.maxVideoLengthPresentedByController) {
            this.isLeftHandlerActive = false;
            this.isRightHandlerActive = false;
            return;
        }
        int actionMasked = event.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 2) {
                updateControllerMove(false);
                if (event.getActionMasked() == 3 || event.getActionMasked() == 1) {
                    this.isLeftHandlerActive = false;
                    this.isRightHandlerActive = false;
                }
                invalidate();
                return;
            }
            if (this.isLeftHandlerActive) {
                Rect rect = this.cutRect;
                float x6 = event.getX();
                int x10 = this.minCutRectLeft;
                if (x6 > x10) {
                    float x11 = event.getX();
                    int i10 = this.cutRect.right;
                    float f = this.minControllerWidth;
                    x10 = (int) (x11 >= ((float) i10) - f ? (i10 - f) + 1.0f : event.getX());
                }
                rect.left = x10;
            } else if (this.isRightHandlerActive) {
                Rect rect2 = this.cutRect;
                float x12 = event.getX();
                int x13 = this.maxCutRectRight;
                if (x12 < x13) {
                    float x14 = event.getX();
                    int i11 = this.cutRect.left;
                    float f6 = this.minControllerWidth;
                    x13 = (int) (x14 <= ((float) i11) + f6 ? i11 + f6 + 1.0f : event.getX());
                }
                rect2.right = x13;
            }
            updateControllerMove(true);
            invalidate();
        }
    }

    public final void updateMediaSectionStartTime(int i10) {
        this.curMediaSectionStartTimeMs = i10;
        this.cutterStartTimeText = MediaTimeLineComponentKt.convertMillisToTime(this.startOffsetInMs + i10);
        this.cutterEndTimeText = MediaTimeLineComponentKt.convertMillisToTime(i10 + this.endOffsetInMs);
        invalidate();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaRetrieveController(@NotNull Context context, @NotNull AttributeSet attributes) {
        super(context, attributes);
        t.j(context, "context");
        t.j(attributes, "attributes");
        this.baseRect = new Rect();
        this.cutRect = new Rect();
        Paint paint = new Paint();
        this.linePaint = paint;
        Paint paint2 = new Paint();
        this.handlerPaint = paint2;
        Paint paint3 = new Paint();
        this.bitmapPaint = paint3;
        Paint paint4 = new Paint();
        this.textPaint = paint4;
        this.handlerRect = new RectF();
        this.handlerPath = new Path();
        this.handlerIndicatorRect = new Rect();
        this.cutterTimeRect = new Rect();
        this.cornerRadius = getResources().getDimensionPixelSize(R.dimen.scene_editor_time_line_item_corner_radius) * 1.0f;
        this.cornerRadiusArray = new float[8];
        int color = getResources().getColor(R.color.media_timeline_controller_color);
        this.controllerColor = color;
        this.controllerIndicatorSize = getResources().getDimensionPixelSize(R.dimen.video_editor_controller_indicator_size);
        this.cutterInitWidth = -1;
        this.cutterStartTimeText = "";
        this.cutterEndTimeText = "";
        paint.setAntiAlias(true);
        paint.setColor(color);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(8.0f);
        paint2.setAntiAlias(true);
        paint2.setColor(color);
        paint2.setStyle(Paint.Style.FILL);
        paint3.setAntiAlias(true);
        paint3.setFilterBitmap(true);
        paint3.setDither(false);
        paint4.setAntiAlias(true);
        paint4.setColor(-1);
        paint4.setTextAlign(Paint.Align.CENTER);
        paint4.setTextSize(getResources().getDimension(R.dimen.media_retrieve_controller_text_size));
        Drawable drawable = getResources().getDrawable(R.drawable.ic_dot);
        t.h(drawable, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
        t.i(bitmap, "getBitmap(...)");
        this.bitmapDot = bitmap;
        Drawable drawable2 = getResources().getDrawable(R.drawable.ic_double_white_arrow_left);
        t.h(drawable2, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
        Bitmap bitmap2 = ((BitmapDrawable) drawable2).getBitmap();
        t.i(bitmap2, "getBitmap(...)");
        this.bitmapArrowLeft = bitmap2;
        Drawable drawable3 = getResources().getDrawable(R.drawable.ic_double_white_arrow_right);
        t.h(drawable3, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
        Bitmap bitmap3 = ((BitmapDrawable) drawable3).getBitmap();
        t.i(bitmap3, "getBitmap(...)");
        this.bitmapArrowRight = bitmap3;
    }
}
