package com.narvii.video.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.narvii.invite.InviteMembersFragment;
import com.narvii.mediaeditor.R;
import com.narvii.util.Utils;
import java.util.Arrays;
import java.util.Locale;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.u0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.s;

/* JADX INFO: loaded from: classes8.dex */
public final class MediaRetrieveController2 extends View {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final float FORCE_MAX_LENGTH_RATE = 10.0f;
    private boolean allEndFlag;

    @NotNull
    private final Rect baseRect;

    @NotNull
    private BoundaryMode boundaryMode;

    @Nullable
    private TimeLineControllerCallback controllerMovedCallback;
    private float currHandlerLeftEnd;
    private float currHandlerRightEnd;

    @NotNull
    private final RectF cutRect;

    @NotNull
    private InnerCutter cutter;

    @NotNull
    private CutterPosInfo cutterPosInfo;
    private long cutterRealMaxLengthMs;

    @NotNull
    private CutterTimeInfo cutterTimeInfo;
    private boolean flagShowCutter;
    private int handlerWidth;
    private boolean isCenterPressed;
    private boolean isLeftHandlerActive;
    private boolean isRightHandlerActive;
    private float lastDownX;
    private float newTargetX;
    private boolean useFakeEndPos;

    public enum BoundaryMode {
        FIXED,
        SHIFT;

        private static final /* synthetic */ z7.a $ENTRIES = z7.b.a(values());

        @NotNull
        public static z7.a<BoundaryMode> getEntries() {
            return $ENTRIES;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    private static final class CutterPosInfo {
        private float controllerLeftEnd;
        private float controllerRightEnd;
        private float cutterMaxWidth;
        private float cutterMinWidth;

        public final float getControllerLeftEnd() {
            return this.controllerLeftEnd;
        }

        public final float getControllerRightEnd() {
            return this.controllerRightEnd;
        }

        public final float getCutterMaxWidth() {
            return this.cutterMaxWidth;
        }

        public final float getCutterMinWidth() {
            return this.cutterMinWidth;
        }

        public final void setControllerLeftEnd(float f) {
            this.controllerLeftEnd = f;
        }

        public final void setControllerRightEnd(float f) {
            this.controllerRightEnd = f;
        }

        public final void setCutterMaxWidth(float f) {
            this.cutterMaxWidth = f;
        }

        public final void setCutterMinWidth(float f) {
            this.cutterMinWidth = f;
        }
    }

    private static final class CutterTimeInfo {
        private long controllerEndMs;
        private long controllerStartMs;
        private long cutterEndMs;
        private long cutterMaxLengthMs;
        private long cutterMinLengthMs;
        private long cutterStartMs;
        private float offset;
        private float scale;

        public final long getControllerEndMs() {
            return this.controllerEndMs;
        }

        public final long getControllerStartMs() {
            return this.controllerStartMs;
        }

        public final long getCutterEndMs() {
            return this.cutterEndMs;
        }

        public final long getCutterMaxLengthMs() {
            return this.cutterMaxLengthMs;
        }

        public final long getCutterMinLengthMs() {
            return this.cutterMinLengthMs;
        }

        public final long getCutterStartMs() {
            return this.cutterStartMs;
        }

        public final float getPositionForTime(long j6) {
            return (this.scale * j6) + this.offset;
        }

        public final void setControllerEndMs(long j6) {
            this.controllerEndMs = j6;
        }

        public final void setControllerStartMs(long j6) {
            this.controllerStartMs = j6;
        }

        public final void setCutterEndMs(long j6) {
            this.cutterEndMs = j6;
        }

        public final void setCutterMaxLengthMs(long j6) {
            this.cutterMaxLengthMs = j6;
        }

        public final void setCutterMinLengthMs(long j6) {
            this.cutterMinLengthMs = j6;
        }

        public final void setCutterStartMs(long j6) {
            this.cutterStartMs = j6;
        }

        public final void shift(long j6) {
            this.controllerStartMs += j6;
            this.controllerEndMs += j6;
            this.cutterStartMs += j6;
            this.cutterEndMs += j6;
        }

        private final long getTimeForPosition(float f) {
            return (long) Math.ceil((f - this.offset) / this.scale);
        }

        public final float getLengthInController(long j6) {
            return Math.abs(this.scale * j6);
        }

        public final void updateScale(int i10, int i11) {
            long j6 = this.controllerStartMs;
            if (j6 == this.controllerEndMs) {
                this.scale = 0.0f;
                this.offset = j6;
                return;
            }
            if (Utils.isRtl()) {
                long j10 = this.controllerStartMs;
                long j11 = this.controllerEndMs;
                float f = ((i11 - i10) * 1.0f) / (j10 - j11);
                this.scale = f;
                this.offset = i10 - (f * j11);
                return;
            }
            long j12 = this.controllerEndMs;
            long j13 = this.controllerStartMs;
            float f6 = ((i11 - i10) * 1.0f) / (j12 - j13);
            this.scale = f6;
            this.offset = i10 - (f6 * j13);
        }

        public final void updateCutterTime(float f, float f6) {
            if (Utils.isRtl()) {
                this.cutterStartMs = getTimeForPosition(f6);
                this.cutterEndMs = getTimeForPosition(f);
            } else {
                this.cutterStartMs = getTimeForPosition(f);
                this.cutterEndMs = getTimeForPosition(f6);
            }
        }
    }

    private static final class InnerCutter {

        @NotNull
        private Bitmap bitmapArrowLeft;

        @NotNull
        private Bitmap bitmapArrowRight;

        @NotNull
        private Bitmap bitmapDot;

        @NotNull
        private final Paint bitmapPaint;
        private final float boundaryWidth;
        private final int controllerColor;
        private final int controllerIndicatorSize;
        private final int coverColor;

        @NotNull
        private String cutterEndTimeText;

        @NotNull
        private String cutterStartTimeText;

        @NotNull
        private final RectF cutterTimeRect;

        @NotNull
        private final RectF handlerIndicatorRect;

        @NotNull
        private final Paint handlerPaint;

        @NotNull
        private final RectF handlerRect;

        @NotNull
        private final Paint linePaint;
        private float pointerOffsetForDraw;
        private float pointerPercent;

        @NotNull
        private final Paint textPaint;
        private final int textYOffset;

        public final void draw(@NotNull Canvas canvas, @NotNull Rect baseRect, @NotNull RectF cutRect, int i10, boolean z6, boolean z10, boolean z11) {
            t.j(canvas, "canvas");
            t.j(baseRect, "baseRect");
            t.j(cutRect, "cutRect");
            canvas.save();
            int i11 = baseRect.left + i10;
            int i12 = baseRect.top;
            float f = this.boundaryWidth;
            canvas.clipRect(i11, i12 + ((int) f), baseRect.right - i10, baseRect.bottom - ((int) f));
            canvas.clipRect(cutRect, Region.Op.DIFFERENCE);
            canvas.drawColor(this.coverColor);
            canvas.restore();
            this.linePaint.setStrokeWidth(this.boundaryWidth);
            float f6 = cutRect.left;
            float f7 = this.boundaryWidth;
            float f10 = 2;
            float f11 = (f6 - f7) - f10;
            float f12 = cutRect.top;
            canvas.drawLine(f11, (f7 / f10) + f12, cutRect.right + f7 + f10, f12 + (f7 / f10), this.linePaint);
            float f13 = cutRect.left;
            float f14 = this.boundaryWidth;
            float f15 = (f13 - f14) - f10;
            float f16 = cutRect.bottom;
            canvas.drawLine(f15, f16 - (f14 / f10), cutRect.right + f14 + f10, f16 - (f14 / f10), this.linePaint);
            if (z11) {
                this.linePaint.setStrokeWidth(5.0f);
                this.pointerOffsetForDraw = (this.pointerPercent * (cutRect.width() + this.linePaint.getStrokeWidth())) - (this.linePaint.getStrokeWidth() / f10);
                if (Utils.isRtl()) {
                    float f17 = cutRect.right - this.pointerOffsetForDraw;
                    canvas.drawLine(f17, cutRect.top, f17, cutRect.bottom, this.linePaint);
                } else {
                    float f18 = cutRect.left + this.pointerOffsetForDraw;
                    canvas.drawLine(f18, cutRect.top, f18, cutRect.bottom, this.linePaint);
                }
            } else {
                this.pointerPercent = 0.0f;
            }
            RectF rectF = this.handlerRect;
            float f19 = cutRect.left;
            float f20 = i10;
            rectF.set(f19 - f20, cutRect.top, f19, cutRect.bottom);
            RectF rectF2 = this.handlerRect;
            float f21 = this.boundaryWidth;
            canvas.drawRoundRect(rectF2, f21, f21, this.handlerPaint);
            if (z6) {
                this.handlerIndicatorRect.set(this.handlerRect.centerX() - (this.controllerIndicatorSize / 2), this.handlerRect.centerY() - (this.controllerIndicatorSize / 2), this.handlerRect.centerX() + (this.controllerIndicatorSize / 2), this.handlerRect.centerY() + (this.controllerIndicatorSize / 2));
                canvas.drawBitmap(this.bitmapDot, (Rect) null, this.handlerIndicatorRect, this.bitmapPaint);
            } else {
                this.handlerIndicatorRect.set(this.handlerRect.centerX() - (this.controllerIndicatorSize / 2), this.handlerRect.centerY() - (this.controllerIndicatorSize / 1.5f), this.handlerRect.centerX() + (this.controllerIndicatorSize / 2), this.handlerRect.centerY() + (this.controllerIndicatorSize / 1.5f));
                canvas.drawBitmap(this.bitmapArrowLeft, (Rect) null, this.handlerIndicatorRect, this.bitmapPaint);
            }
            RectF rectF3 = this.handlerRect;
            float f22 = cutRect.right;
            rectF3.set(f22, cutRect.top, f22 + f20, cutRect.bottom);
            RectF rectF4 = this.handlerRect;
            float f23 = this.boundaryWidth;
            canvas.drawRoundRect(rectF4, f23, f23, this.handlerPaint);
            if (z10) {
                this.handlerIndicatorRect.set(this.handlerRect.centerX() - (this.controllerIndicatorSize / 2), this.handlerRect.centerY() - (this.controllerIndicatorSize / 2), this.handlerRect.centerX() + (this.controllerIndicatorSize / 2), this.handlerRect.centerY() + (this.controllerIndicatorSize / 2));
                canvas.drawBitmap(this.bitmapDot, (Rect) null, this.handlerIndicatorRect, this.bitmapPaint);
            } else {
                this.handlerIndicatorRect.set(this.handlerRect.centerX() - (this.controllerIndicatorSize / 2), this.handlerRect.centerY() - (this.controllerIndicatorSize / 1.5f), this.handlerRect.centerX() + (this.controllerIndicatorSize / 2), this.handlerRect.centerY() + (this.controllerIndicatorSize / 1.5f));
                canvas.drawBitmap(this.bitmapArrowRight, (Rect) null, this.handlerIndicatorRect, this.bitmapPaint);
            }
            RectF rectF5 = this.cutterTimeRect;
            float f24 = cutRect.left;
            float f25 = i10 * 2;
            float f26 = cutRect.bottom;
            int i13 = this.textYOffset;
            rectF5.set(f24 - f25, i13 + f26, f24 + f20, f26 + i13 + this.textPaint.getTextSize());
            canvas.drawText(this.cutterStartTimeText, this.cutterTimeRect.centerX(), this.cutterTimeRect.bottom, this.textPaint);
            RectF rectF6 = this.cutterTimeRect;
            float f27 = cutRect.right;
            float f28 = cutRect.bottom;
            int i14 = this.textYOffset;
            rectF6.set(f27 - f20, i14 + f28, f27 + f25, f28 + i14 + this.textPaint.getTextSize());
            canvas.drawText(this.cutterEndTimeText, this.cutterTimeRect.centerX(), this.cutterTimeRect.bottom, this.textPaint);
        }

        @NotNull
        public final String getCutterEndTimeText() {
            return this.cutterEndTimeText;
        }

        @NotNull
        public final String getCutterStartTimeText() {
            return this.cutterStartTimeText;
        }

        public final float getPointerPercent() {
            return this.pointerPercent;
        }

        public final void setCutterEndTimeText(@NotNull String str) {
            t.j(str, "<set-?>");
            this.cutterEndTimeText = str;
        }

        public final void setCutterStartTimeText(@NotNull String str) {
            t.j(str, "<set-?>");
            this.cutterStartTimeText = str;
        }

        public final void setPointerPercent(float f) {
            this.pointerPercent = f;
        }

        public InnerCutter(@NotNull Resources resources) {
            t.j(resources, "resources");
            this.coverColor = resources.getColor(R.color.media_timeline_cover_color);
            int color = resources.getColor(R.color.media_timeline_controller_color);
            this.controllerColor = color;
            this.controllerIndicatorSize = resources.getDimensionPixelSize(R.dimen.video_editor_controller_indicator_size);
            this.boundaryWidth = resources.getDimensionPixelSize(R.dimen.media_retrieve_boundary_top_size);
            this.textYOffset = resources.getDimensionPixelOffset(R.dimen.media_retrieve_text_y_offset);
            Paint paint = new Paint();
            this.linePaint = paint;
            Paint paint2 = new Paint();
            this.handlerPaint = paint2;
            Paint paint3 = new Paint();
            this.bitmapPaint = paint3;
            Paint paint4 = new Paint();
            this.textPaint = paint4;
            this.handlerRect = new RectF();
            this.handlerIndicatorRect = new RectF();
            this.cutterTimeRect = new RectF();
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
            paint4.setColor(resources.getColor(R.color.media_timeline_cutter_text_color));
            paint4.setTextAlign(Paint.Align.CENTER);
            paint4.setTextSize(resources.getDimension(R.dimen.media_retrieve_controller_text_size));
            Drawable drawable = resources.getDrawable(R.drawable.ic_dot);
            t.h(drawable, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            t.i(bitmap, "getBitmap(...)");
            this.bitmapDot = bitmap;
            Drawable drawable2 = resources.getDrawable(R.drawable.ic_double_white_arrow_left);
            t.h(drawable2, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
            Bitmap bitmap2 = ((BitmapDrawable) drawable2).getBitmap();
            t.i(bitmap2, "getBitmap(...)");
            this.bitmapArrowLeft = bitmap2;
            Drawable drawable3 = resources.getDrawable(R.drawable.ic_double_white_arrow_right);
            t.h(drawable3, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
            Bitmap bitmap3 = ((BitmapDrawable) drawable3).getBitmap();
            t.i(bitmap3, "getBitmap(...)");
            this.bitmapArrowRight = bitmap3;
        }

        private final String convertMillisToTime(long j6, boolean z6) {
            long j10 = j6 / ((long) 1000);
            long j11 = 60;
            long j12 = j10 % j11;
            long j13 = (j10 / j11) % j11;
            long j14 = j10 / ((long) InviteMembersFragment.SECOND_HOUR);
            if (j14 > 0) {
                u0 u0Var = u0.INSTANCE;
                String str = String.format(Locale.US, "%d:%02d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(j14), Long.valueOf(j13), Long.valueOf(j12)}, 3));
                t.i(str, "format(...)");
                return str;
            }
            u0 u0Var2 = u0.INSTANCE;
            String str2 = String.format(Locale.US, "%01d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(j13), Long.valueOf(j12)}, 2));
            t.i(str2, "format(...)");
            return str2;
        }

        public final void updateTimeText(long j6, long j10, boolean z6) {
            if (Utils.isRtl()) {
                this.cutterStartTimeText = convertMillisToTime(j10, z6);
                this.cutterEndTimeText = convertMillisToTime(j6, z6);
            } else {
                this.cutterStartTimeText = convertMillisToTime(j6, z6);
                this.cutterEndTimeText = convertMillisToTime(j10, z6);
            }
        }
    }

    public interface TimeLineControllerCallback {
        void onControllerMoved(long j6, long j10, boolean z6, boolean z10);
    }

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BoundaryMode.values().length];
            try {
                iArr[BoundaryMode.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BoundaryMode.SHIFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaRetrieveController2(@NotNull Context context) {
        super(context);
        t.j(context, "context");
        this.baseRect = new Rect();
        this.cutRect = new RectF();
        this.handlerWidth = getResources().getDimensionPixelSize(R.dimen.video_editor_controller_handler_width);
        this.cutterTimeInfo = new CutterTimeInfo();
        this.cutterPosInfo = new CutterPosInfo();
        this.boundaryMode = BoundaryMode.FIXED;
        Resources resources = getResources();
        t.i(resources, "getResources(...)");
        this.cutter = new InnerCutter(resources);
    }

    public final void initComponent(long j6, long j10, @Nullable TimeLineControllerCallback timeLineControllerCallback, long j11, long j12, long j13, long j14) {
        CutterTimeInfo cutterTimeInfo = this.cutterTimeInfo;
        if (j10 * 10.0f <= j12 - j11) {
            this.useFakeEndPos = true;
            this.cutterRealMaxLengthMs = j10;
            cutterTimeInfo.setControllerStartMs(j11 > 0 ? j11 : 0L);
            cutterTimeInfo.setControllerEndMs((long) ((((j12 - j10) * 10.0f) - cutterTimeInfo.getControllerStartMs()) / 9.0f));
            long controllerEndMs = (long) ((cutterTimeInfo.getControllerEndMs() - cutterTimeInfo.getControllerStartMs()) / 10.0f);
            cutterTimeInfo.setCutterMinLengthMs(controllerEndMs);
            cutterTimeInfo.setCutterMaxLengthMs(controllerEndMs);
        } else {
            this.useFakeEndPos = false;
            cutterTimeInfo.setControllerStartMs(j11 > 0 ? j11 : 0L);
            cutterTimeInfo.setControllerEndMs(j12 > 0 ? j12 : cutterTimeInfo.getControllerStartMs() + j10);
            cutterTimeInfo.setCutterMinLengthMs(j6);
            cutterTimeInfo.setCutterMaxLengthMs(j10);
        }
        cutterTimeInfo.setCutterStartMs(j13 > 0 ? j13 : cutterTimeInfo.getControllerStartMs());
        cutterTimeInfo.setCutterEndMs((j14 < cutterTimeInfo.getCutterStartMs() + cutterTimeInfo.getCutterMinLengthMs() || j14 > cutterTimeInfo.getCutterStartMs() + cutterTimeInfo.getCutterMaxLengthMs() || j14 > cutterTimeInfo.getControllerEndMs()) ? Math.min(cutterTimeInfo.getControllerEndMs(), cutterTimeInfo.getCutterStartMs() + cutterTimeInfo.getCutterMaxLengthMs()) : j14);
        this.controllerMovedCallback = timeLineControllerCallback;
        if (timeLineControllerCallback != null) {
            timeLineControllerCallback.onControllerMoved(this.cutterTimeInfo.getCutterStartMs(), getCutterRealEndTime(), !Utils.isRtl(), false);
        }
        this.cutRect.set(0.0f, 0.0f, 0.0f, 0.0f);
        this.baseRect.set(0, 0, 0, 0);
        this.flagShowCutter = true;
        requestLayout();
    }

    public final void setBoundaryMode(@NotNull BoundaryMode mode) {
        t.j(mode, "mode");
        this.boundaryMode = mode;
    }

    public final void updateMediaSectionStartTime(int i10) {
        this.cutterTimeInfo.shift(((long) i10) - this.cutterTimeInfo.getControllerStartMs());
        this.cutter.updateTimeText(this.cutterTimeInfo.getCutterStartMs(), getCutterRealEndTime(), !this.useFakeEndPos);
        invalidate();
    }

    private final long getCutterRealEndTime() {
        return this.useFakeEndPos ? this.cutterTimeInfo.getCutterStartMs() + this.cutterRealMaxLengthMs : this.cutterTimeInfo.getCutterEndMs();
    }

    private final boolean isMoveEnable() {
        int i10 = WhenMappings.$EnumSwitchMapping$0[this.boundaryMode.ordinal()];
        if (i10 == 1) {
            return this.cutterTimeInfo.getCutterMinLengthMs() != this.cutterTimeInfo.getCutterMaxLengthMs();
        }
        if (i10 == 2) {
            return true;
        }
        throw new s();
    }

    public final long getCutterStartPosition() {
        return this.cutterTimeInfo.getCutterStartMs();
    }

    public final boolean isTouchInSlideHandler(float f) {
        RectF rectF = this.cutRect;
        float f6 = rectF.left;
        int i10 = this.handlerWidth;
        double d = ((double) f6) - (((double) i10) * 1.5d);
        double d2 = ((double) f6) + (((double) i10) * 0.5d);
        float f7 = rectF.right;
        double d6 = ((double) f7) - (((double) i10) * 0.5d);
        double d7 = ((double) f7) + (((double) i10) * 1.5d);
        double d10 = f;
        if (d <= d10 && d10 <= d2) {
            this.isLeftHandlerActive = true;
            this.isRightHandlerActive = false;
            this.isCenterPressed = false;
        } else if (d2 <= d10 && d10 <= d6) {
            this.isLeftHandlerActive = false;
            this.isRightHandlerActive = false;
            this.isCenterPressed = true;
        } else if (d6 <= d10 && d10 <= d7) {
            this.isLeftHandlerActive = false;
            this.isRightHandlerActive = true;
            this.isCenterPressed = false;
        }
        return this.isLeftHandlerActive || this.isRightHandlerActive || this.isCenterPressed;
    }

    public final void layoutRect(int i10, int i11, int i12, int i13) {
        if (this.cutRect.isEmpty() && this.baseRect.isEmpty()) {
            this.baseRect.set(i10, i11, i12, i13);
            CutterTimeInfo cutterTimeInfo = this.cutterTimeInfo;
            int i14 = this.handlerWidth;
            cutterTimeInfo.updateScale(i10 + i14, i12 - i14);
            if (Utils.isRtl()) {
                this.cutRect.set(cutterTimeInfo.getPositionForTime(cutterTimeInfo.getCutterEndMs()), i11, cutterTimeInfo.getPositionForTime(cutterTimeInfo.getCutterStartMs()), i13);
            } else {
                this.cutRect.set(cutterTimeInfo.getPositionForTime(cutterTimeInfo.getCutterStartMs()), i11, cutterTimeInfo.getPositionForTime(cutterTimeInfo.getCutterEndMs()), i13);
            }
            this.cutterPosInfo.setCutterMinWidth(cutterTimeInfo.getLengthInController(cutterTimeInfo.getCutterMinLengthMs()));
            this.cutterPosInfo.setCutterMaxWidth(cutterTimeInfo.getLengthInController(cutterTimeInfo.getCutterMaxLengthMs()));
            this.cutterPosInfo.setControllerLeftEnd(i10 + this.handlerWidth);
            this.cutterPosInfo.setControllerRightEnd(i12 - this.handlerWidth);
        }
    }

    @Override // android.view.View
    protected void onDraw(@NotNull Canvas canvas) {
        t.j(canvas, "canvas");
        super.onDraw(canvas);
        if (this.flagShowCutter) {
            RectF rectF = this.cutRect;
            boolean z6 = rectF.right - rectF.left >= this.cutterPosInfo.getCutterMaxWidth() - ((float) 2) || !isMoveEnable();
            this.allEndFlag = z6;
            InnerCutter innerCutter = this.cutter;
            Rect rect = this.baseRect;
            RectF rectF2 = this.cutRect;
            innerCutter.draw(canvas, rect, rectF2, this.handlerWidth, z6 || rectF2.left <= this.cutterPosInfo.getControllerLeftEnd(), this.allEndFlag || this.cutRect.right >= this.cutterPosInfo.getControllerRightEnd(), (this.isLeftHandlerActive || this.isRightHandlerActive || this.isCenterPressed) ? false : true);
        }
    }

    public final void onSlideHandlerMove(@NotNull MotionEvent event) {
        t.j(event, "event");
        if ((this.isLeftHandlerActive || this.isRightHandlerActive || this.isCenterPressed) && isMoveEnable() && this.flagShowCutter) {
            int actionMasked = event.getActionMasked();
            if (actionMasked == 0) {
                this.lastDownX = event.getX();
                return;
            }
            if (actionMasked != 2) {
                CutterTimeInfo cutterTimeInfo = this.cutterTimeInfo;
                RectF rectF = this.cutRect;
                cutterTimeInfo.updateCutterTime(rectF.left, rectF.right);
                TimeLineControllerCallback timeLineControllerCallback = this.controllerMovedCallback;
                if (timeLineControllerCallback != null) {
                    timeLineControllerCallback.onControllerMoved(this.cutterTimeInfo.getCutterStartMs(), getCutterRealEndTime(), isSeekToTimeAtLeft(), false);
                }
                if (event.getActionMasked() == 3 || event.getActionMasked() == 1) {
                    this.isLeftHandlerActive = false;
                    this.isRightHandlerActive = false;
                    this.isCenterPressed = false;
                }
                invalidate();
                return;
            }
            CutterPosInfo cutterPosInfo = this.cutterPosInfo;
            if (this.isLeftHandlerActive) {
                this.currHandlerLeftEnd = Math.max(cutterPosInfo.getControllerLeftEnd(), this.cutRect.right - cutterPosInfo.getCutterMaxWidth());
                this.currHandlerRightEnd = Math.min(cutterPosInfo.getControllerRightEnd(), this.cutRect.right) - cutterPosInfo.getCutterMinWidth();
                float x6 = event.getX() - this.lastDownX;
                RectF rectF2 = this.cutRect;
                float controllerRightEnd = x6 + rectF2.left;
                this.newTargetX = controllerRightEnd;
                if (controllerRightEnd <= this.currHandlerLeftEnd) {
                    int i10 = WhenMappings.$EnumSwitchMapping$0[this.boundaryMode.ordinal()];
                    if (i10 == 1) {
                        controllerRightEnd = this.currHandlerLeftEnd;
                    } else {
                        if (i10 != 2) {
                            throw new s();
                        }
                        if (this.newTargetX > cutterPosInfo.getControllerLeftEnd()) {
                            this.cutRect.right = this.newTargetX + cutterPosInfo.getCutterMaxWidth();
                            controllerRightEnd = this.newTargetX;
                        } else {
                            this.cutRect.right = Math.min(cutterPosInfo.getControllerLeftEnd() + cutterPosInfo.getCutterMaxWidth(), this.cutRect.right);
                            controllerRightEnd = cutterPosInfo.getControllerLeftEnd();
                        }
                    }
                } else if (controllerRightEnd >= this.currHandlerRightEnd) {
                    int i11 = WhenMappings.$EnumSwitchMapping$0[this.boundaryMode.ordinal()];
                    if (i11 == 1) {
                        controllerRightEnd = this.currHandlerRightEnd;
                    } else {
                        if (i11 != 2) {
                            throw new s();
                        }
                        if (this.newTargetX < cutterPosInfo.getControllerRightEnd() - cutterPosInfo.getCutterMinWidth()) {
                            this.cutRect.right = this.newTargetX + cutterPosInfo.getCutterMinWidth();
                            controllerRightEnd = this.newTargetX;
                        } else {
                            this.cutRect.right = cutterPosInfo.getControllerRightEnd();
                            controllerRightEnd = cutterPosInfo.getControllerRightEnd() - cutterPosInfo.getCutterMinWidth();
                        }
                    }
                }
                rectF2.left = controllerRightEnd;
            } else if (this.isRightHandlerActive) {
                this.currHandlerLeftEnd = Math.max(cutterPosInfo.getControllerLeftEnd(), this.cutRect.left) + cutterPosInfo.getCutterMinWidth();
                this.currHandlerRightEnd = Math.min(cutterPosInfo.getControllerRightEnd(), this.cutRect.left + cutterPosInfo.getCutterMaxWidth());
                float x10 = event.getX() - this.lastDownX;
                RectF rectF3 = this.cutRect;
                float controllerRightEnd2 = x10 + rectF3.right;
                this.newTargetX = controllerRightEnd2;
                if (controllerRightEnd2 <= this.currHandlerLeftEnd) {
                    int i12 = WhenMappings.$EnumSwitchMapping$0[this.boundaryMode.ordinal()];
                    if (i12 == 1) {
                        controllerRightEnd2 = this.currHandlerLeftEnd;
                    } else {
                        if (i12 != 2) {
                            throw new s();
                        }
                        if (this.newTargetX > cutterPosInfo.getControllerLeftEnd() + cutterPosInfo.getCutterMinWidth()) {
                            this.cutRect.left = this.newTargetX - cutterPosInfo.getCutterMinWidth();
                            controllerRightEnd2 = this.newTargetX;
                        } else {
                            this.cutRect.left = cutterPosInfo.getControllerLeftEnd();
                            controllerRightEnd2 = cutterPosInfo.getControllerLeftEnd() + cutterPosInfo.getCutterMinWidth();
                        }
                    }
                } else if (controllerRightEnd2 >= this.currHandlerRightEnd) {
                    int i13 = WhenMappings.$EnumSwitchMapping$0[this.boundaryMode.ordinal()];
                    if (i13 == 1) {
                        controllerRightEnd2 = this.currHandlerRightEnd;
                    } else {
                        if (i13 != 2) {
                            throw new s();
                        }
                        if (this.newTargetX < cutterPosInfo.getControllerRightEnd()) {
                            this.cutRect.left = this.newTargetX - cutterPosInfo.getCutterMaxWidth();
                            controllerRightEnd2 = this.newTargetX;
                        } else {
                            this.cutRect.left = Math.max(cutterPosInfo.getControllerRightEnd() - cutterPosInfo.getCutterMaxWidth(), this.cutRect.left);
                            controllerRightEnd2 = cutterPosInfo.getControllerRightEnd();
                        }
                    }
                }
                rectF3.right = controllerRightEnd2;
            } else if (this.isCenterPressed) {
                float fWidth = this.cutRect.width();
                this.currHandlerLeftEnd = cutterPosInfo.getControllerLeftEnd();
                this.currHandlerRightEnd = cutterPosInfo.getControllerRightEnd() - fWidth;
                float x11 = event.getX() - this.lastDownX;
                RectF rectF4 = this.cutRect;
                float f = x11 + rectF4.left;
                this.newTargetX = f;
                float f6 = this.currHandlerLeftEnd;
                float f7 = this.currHandlerRightEnd;
                if (f6 <= f && f <= f7) {
                    rectF4.left = f;
                    rectF4.right = f + fWidth;
                }
            }
            this.lastDownX = event.getX();
            CutterTimeInfo cutterTimeInfo2 = this.cutterTimeInfo;
            RectF rectF5 = this.cutRect;
            cutterTimeInfo2.updateCutterTime(rectF5.left, rectF5.right);
            this.cutter.updateTimeText(this.cutterTimeInfo.getCutterStartMs(), getCutterRealEndTime(), !this.useFakeEndPos);
            TimeLineControllerCallback timeLineControllerCallback2 = this.controllerMovedCallback;
            if (timeLineControllerCallback2 != null) {
                timeLineControllerCallback2.onControllerMoved(this.cutterTimeInfo.getCutterStartMs(), getCutterRealEndTime(), isSeekToTimeAtLeft(), true);
            }
            invalidate();
        }
    }

    public final void updatePointer(int i10) {
        CutterTimeInfo cutterTimeInfo = this.cutterTimeInfo;
        long cutterEndMs = this.useFakeEndPos ? this.cutterRealMaxLengthMs : cutterTimeInfo.getCutterEndMs() - cutterTimeInfo.getCutterStartMs();
        float f = 0.0f;
        if (cutterEndMs > 0) {
            float cutterStartMs = (((long) i10) - cutterTimeInfo.getCutterStartMs()) / cutterEndMs;
            if (cutterStartMs >= 0.99f) {
                cutterStartMs = 1.0f;
            }
            InnerCutter innerCutter = this.cutter;
            if (0.0f <= cutterStartMs && cutterStartMs <= 1.0f) {
                f = cutterStartMs;
            }
            innerCutter.setPointerPercent(f);
        } else {
            this.cutter.setPointerPercent(0.0f);
        }
        invalidate();
    }

    private final boolean isSeekToTimeAtLeft() {
        if (Utils.isRtl()) {
            if (!this.isLeftHandlerActive || this.isCenterPressed) {
                return false;
            }
        } else if (!this.isLeftHandlerActive && !this.isCenterPressed) {
            return false;
        }
        return true;
    }

    public final long getCutterEndPosition() {
        return getCutterRealEndTime();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaRetrieveController2(@NotNull Context context, @NotNull AttributeSet attributes) {
        super(context, attributes);
        t.j(context, "context");
        t.j(attributes, "attributes");
        this.baseRect = new Rect();
        this.cutRect = new RectF();
        this.handlerWidth = getResources().getDimensionPixelSize(R.dimen.video_editor_controller_handler_width);
        this.cutterTimeInfo = new CutterTimeInfo();
        this.cutterPosInfo = new CutterPosInfo();
        this.boundaryMode = BoundaryMode.FIXED;
        Resources resources = getResources();
        t.i(resources, "getResources(...)");
        this.cutter = new InnerCutter(resources);
    }
}
