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
import java.util.HashMap;
import java.util.Locale;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* compiled from: MediaRetrieveController2.kt */
/* loaded from: classes3.dex */
public final class MediaRetrieveController2 extends View {
    public static final Companion Companion = new Companion(null);
    private static final float FORCE_MAX_LENGTH_RATE = 10.0f;
    private HashMap _$_findViewCache;
    private boolean allEndFlag;
    private final Rect baseRect;
    private BoundaryMode boundaryMode;
    private TimeLineControllerCallback controllerMovedCallback;
    private float currHandlerLeftEnd;
    private float currHandlerRightEnd;
    private final RectF cutRect;
    private InnerCutter cutter;
    private CutterPosInfo cutterPosInfo;
    private long cutterRealMaxLengthMs;
    private CutterTimeInfo cutterTimeInfo;
    private boolean flagShowCutter;
    private int handlerWidth;
    private boolean isCenterPressed;
    private boolean isLeftHandlerActive;
    private boolean isRightHandlerActive;
    private float lastDownX;
    private float newTargetX;
    private boolean useFakeEndPos;

    /* compiled from: MediaRetrieveController2.kt */
    public enum BoundaryMode {
        FIXED,
        SHIFT
    }

    /* compiled from: MediaRetrieveController2.kt */
    public interface TimeLineControllerCallback {
        void onControllerMoved(long j, long j2, boolean z, boolean z2);
    }

    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0 = new int[BoundaryMode.values().length];
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;
        public static final /* synthetic */ int[] $EnumSwitchMapping$3;
        public static final /* synthetic */ int[] $EnumSwitchMapping$4;

        static {
            $EnumSwitchMapping$0[BoundaryMode.FIXED.ordinal()] = 1;
            $EnumSwitchMapping$0[BoundaryMode.SHIFT.ordinal()] = 2;
            $EnumSwitchMapping$1 = new int[BoundaryMode.values().length];
            $EnumSwitchMapping$1[BoundaryMode.FIXED.ordinal()] = 1;
            $EnumSwitchMapping$1[BoundaryMode.SHIFT.ordinal()] = 2;
            $EnumSwitchMapping$2 = new int[BoundaryMode.values().length];
            $EnumSwitchMapping$2[BoundaryMode.FIXED.ordinal()] = 1;
            $EnumSwitchMapping$2[BoundaryMode.SHIFT.ordinal()] = 2;
            $EnumSwitchMapping$3 = new int[BoundaryMode.values().length];
            $EnumSwitchMapping$3[BoundaryMode.FIXED.ordinal()] = 1;
            $EnumSwitchMapping$3[BoundaryMode.SHIFT.ordinal()] = 2;
            $EnumSwitchMapping$4 = new int[BoundaryMode.values().length];
            $EnumSwitchMapping$4[BoundaryMode.FIXED.ordinal()] = 1;
            $EnumSwitchMapping$4[BoundaryMode.SHIFT.ordinal()] = 2;
        }
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

    /* compiled from: MediaRetrieveController2.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaRetrieveController2(Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.baseRect = new Rect();
        this.cutRect = new RectF();
        this.handlerWidth = getResources().getDimensionPixelSize(R.dimen.video_editor_controller_handler_width);
        this.cutterTimeInfo = new CutterTimeInfo();
        this.cutterPosInfo = new CutterPosInfo();
        this.boundaryMode = BoundaryMode.FIXED;
        Resources resources = getResources();
        Intrinsics.checkExpressionValueIsNotNull(resources, "resources");
        this.cutter = new InnerCutter(resources);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaRetrieveController2(Context context, AttributeSet attributes) {
        super(context, attributes);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributes, "attributes");
        this.baseRect = new Rect();
        this.cutRect = new RectF();
        this.handlerWidth = getResources().getDimensionPixelSize(R.dimen.video_editor_controller_handler_width);
        this.cutterTimeInfo = new CutterTimeInfo();
        this.cutterPosInfo = new CutterPosInfo();
        this.boundaryMode = BoundaryMode.FIXED;
        Resources resources = getResources();
        Intrinsics.checkExpressionValueIsNotNull(resources, "resources");
        this.cutter = new InnerCutter(resources);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkParameterIsNotNull(canvas, "canvas");
        super.onDraw(canvas);
        if (this.flagShowCutter) {
            RectF rectF = this.cutRect;
            this.allEndFlag = rectF.right - rectF.left >= this.cutterPosInfo.getCutterMaxWidth() - ((float) 2) || !isMoveEnable();
            InnerCutter innerCutter = this.cutter;
            Rect rect = this.baseRect;
            RectF rectF2 = this.cutRect;
            innerCutter.draw(canvas, rect, rectF2, this.handlerWidth, this.allEndFlag || rectF2.left <= this.cutterPosInfo.getControllerLeftEnd(), this.allEndFlag || this.cutRect.right >= this.cutterPosInfo.getControllerRightEnd(), (this.isLeftHandlerActive || this.isRightHandlerActive || this.isCenterPressed) ? false : true);
        }
    }

    public final void layoutRect(int i, int i2, int i3, int i4) {
        if (this.cutRect.isEmpty() && this.baseRect.isEmpty()) {
            this.baseRect.set(i, i2, i3, i4);
            CutterTimeInfo cutterTimeInfo = this.cutterTimeInfo;
            int i5 = this.handlerWidth;
            cutterTimeInfo.updateScale(i + i5, i3 - i5);
            if (Utils.isRtl()) {
                this.cutRect.set(cutterTimeInfo.getPositionForTime(cutterTimeInfo.getCutterEndMs()), i2, cutterTimeInfo.getPositionForTime(cutterTimeInfo.getCutterStartMs()), i4);
            } else {
                this.cutRect.set(cutterTimeInfo.getPositionForTime(cutterTimeInfo.getCutterStartMs()), i2, cutterTimeInfo.getPositionForTime(cutterTimeInfo.getCutterEndMs()), i4);
            }
            this.cutterPosInfo.setCutterMinWidth(cutterTimeInfo.getLengthInController(cutterTimeInfo.getCutterMinLengthMs()));
            this.cutterPosInfo.setCutterMaxWidth(cutterTimeInfo.getLengthInController(cutterTimeInfo.getCutterMaxLengthMs()));
            this.cutterPosInfo.setControllerLeftEnd(i + this.handlerWidth);
            this.cutterPosInfo.setControllerRightEnd(i3 - this.handlerWidth);
        }
    }

    public final void initComponent(long j, long j2, TimeLineControllerCallback timeLineControllerCallback, long j3, long j4, long j5, long j6) {
        CutterTimeInfo cutterTimeInfo = this.cutterTimeInfo;
        if (j2 * 10.0f <= j4 - j3) {
            this.useFakeEndPos = true;
            this.cutterRealMaxLengthMs = j2;
            cutterTimeInfo.setControllerStartMs(j3 > 0 ? j3 : 0L);
            cutterTimeInfo.setControllerEndMs((long) ((((j4 - j2) * 10.0f) - cutterTimeInfo.getControllerStartMs()) / 9.0f));
            long controllerEndMs = (long) ((cutterTimeInfo.getControllerEndMs() - cutterTimeInfo.getControllerStartMs()) / 10.0f);
            cutterTimeInfo.setCutterMinLengthMs(controllerEndMs);
            cutterTimeInfo.setCutterMaxLengthMs(controllerEndMs);
        } else {
            this.useFakeEndPos = false;
            cutterTimeInfo.setControllerStartMs(j3 > 0 ? j3 : 0L);
            cutterTimeInfo.setControllerEndMs(j4 > 0 ? j4 : cutterTimeInfo.getControllerStartMs() + j2);
            cutterTimeInfo.setCutterMinLengthMs(j);
            cutterTimeInfo.setCutterMaxLengthMs(j2);
        }
        cutterTimeInfo.setCutterStartMs(j5 > 0 ? j5 : cutterTimeInfo.getControllerStartMs());
        cutterTimeInfo.setCutterEndMs((j6 < cutterTimeInfo.getCutterStartMs() + cutterTimeInfo.getCutterMinLengthMs() || j6 > cutterTimeInfo.getCutterStartMs() + cutterTimeInfo.getCutterMaxLengthMs() || j6 > cutterTimeInfo.getControllerEndMs()) ? Math.min(cutterTimeInfo.getControllerEndMs(), cutterTimeInfo.getCutterStartMs() + cutterTimeInfo.getCutterMaxLengthMs()) : j6);
        this.controllerMovedCallback = timeLineControllerCallback;
        if (timeLineControllerCallback != null) {
            timeLineControllerCallback.onControllerMoved(this.cutterTimeInfo.getCutterStartMs(), getCutterRealEndTime(), !Utils.isRtl(), false);
        }
        this.cutRect.set(0.0f, 0.0f, 0.0f, 0.0f);
        this.baseRect.set(0, 0, 0, 0);
        this.flagShowCutter = true;
        requestLayout();
    }

    public final void updatePointer(int i) {
        CutterTimeInfo cutterTimeInfo = this.cutterTimeInfo;
        long cutterEndMs = this.useFakeEndPos ? this.cutterRealMaxLengthMs : cutterTimeInfo.getCutterEndMs() - cutterTimeInfo.getCutterStartMs();
        if (cutterEndMs > 0) {
            float cutterStartMs = (i - cutterTimeInfo.getCutterStartMs()) / cutterEndMs;
            if (cutterStartMs >= 0.99f) {
                cutterStartMs = 1.0f;
            }
            InnerCutter innerCutter = this.cutter;
            if (cutterStartMs < 0.0f || cutterStartMs > 1.0f) {
                cutterStartMs = 0.0f;
            }
            innerCutter.setPointerPercent(cutterStartMs);
        } else {
            this.cutter.setPointerPercent(0.0f);
        }
        invalidate();
    }

    public final void updateMediaSectionStartTime(int i) {
        this.cutterTimeInfo.shift(i - this.cutterTimeInfo.getControllerStartMs());
        this.cutter.updateTimeText(this.cutterTimeInfo.getCutterStartMs(), getCutterRealEndTime(), !this.useFakeEndPos);
        invalidate();
    }

    public final long getCutterStartPosition() {
        return this.cutterTimeInfo.getCutterStartMs();
    }

    public final long getCutterEndPosition() {
        return getCutterRealEndTime();
    }

    public final boolean isTouchInSlideHandler(float f) {
        RectF rectF = this.cutRect;
        float f2 = rectF.left;
        double d = f2;
        int i = this.handlerWidth;
        double d2 = i;
        Double.isNaN(d2);
        Double.isNaN(d);
        double d3 = d - (d2 * 1.5d);
        double d4 = f2;
        double d5 = i;
        Double.isNaN(d5);
        Double.isNaN(d4);
        double d6 = d4 + (d5 * 0.5d);
        float f3 = rectF.right;
        double d7 = f3;
        double d8 = i;
        Double.isNaN(d8);
        Double.isNaN(d7);
        double d9 = d7 - (d8 * 0.5d);
        double d10 = f3;
        double d11 = i;
        Double.isNaN(d11);
        Double.isNaN(d10);
        double d12 = d10 + (d11 * 1.5d);
        double d13 = f;
        if (d13 >= d3 && d13 <= d6) {
            this.isLeftHandlerActive = true;
            this.isRightHandlerActive = false;
            this.isCenterPressed = false;
        } else if (d13 >= d6 && d13 <= d9) {
            this.isLeftHandlerActive = false;
            this.isRightHandlerActive = false;
            this.isCenterPressed = true;
        } else if (d13 >= d9 && d13 <= d12) {
            this.isLeftHandlerActive = false;
            this.isRightHandlerActive = true;
            this.isCenterPressed = false;
        }
        return this.isLeftHandlerActive || this.isRightHandlerActive || this.isCenterPressed;
    }

    public final void onSlideHandlerMove(MotionEvent event) {
        Intrinsics.checkParameterIsNotNull(event, "event");
        if ((this.isLeftHandlerActive || this.isRightHandlerActive || this.isCenterPressed) && isMoveEnable() && this.flagShowCutter) {
            int actionMasked = event.getActionMasked();
            if (actionMasked == 0) {
                this.lastDownX = event.getX();
                return;
            }
            if (actionMasked == 2) {
                CutterPosInfo cutterPosInfo = this.cutterPosInfo;
                if (this.isLeftHandlerActive) {
                    this.currHandlerLeftEnd = Math.max(cutterPosInfo.getControllerLeftEnd(), this.cutRect.right - cutterPosInfo.getCutterMaxWidth());
                    this.currHandlerRightEnd = Math.min(cutterPosInfo.getControllerRightEnd(), this.cutRect.right) - cutterPosInfo.getCutterMinWidth();
                    float x = event.getX() - this.lastDownX;
                    RectF rectF = this.cutRect;
                    this.newTargetX = x + rectF.left;
                    float controllerRightEnd = this.newTargetX;
                    if (controllerRightEnd <= this.currHandlerLeftEnd) {
                        int i = WhenMappings.$EnumSwitchMapping$0[this.boundaryMode.ordinal()];
                        if (i == 1) {
                            controllerRightEnd = this.currHandlerLeftEnd;
                        } else {
                            if (i != 2) {
                                throw new NoWhenBranchMatchedException();
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
                        int i2 = WhenMappings.$EnumSwitchMapping$1[this.boundaryMode.ordinal()];
                        if (i2 == 1) {
                            controllerRightEnd = this.currHandlerRightEnd;
                        } else {
                            if (i2 != 2) {
                                throw new NoWhenBranchMatchedException();
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
                    rectF.left = controllerRightEnd;
                } else if (this.isRightHandlerActive) {
                    this.currHandlerLeftEnd = Math.max(cutterPosInfo.getControllerLeftEnd(), this.cutRect.left) + cutterPosInfo.getCutterMinWidth();
                    this.currHandlerRightEnd = Math.min(cutterPosInfo.getControllerRightEnd(), this.cutRect.left + cutterPosInfo.getCutterMaxWidth());
                    float x2 = event.getX() - this.lastDownX;
                    RectF rectF2 = this.cutRect;
                    this.newTargetX = x2 + rectF2.right;
                    float controllerRightEnd2 = this.newTargetX;
                    if (controllerRightEnd2 <= this.currHandlerLeftEnd) {
                        int i3 = WhenMappings.$EnumSwitchMapping$2[this.boundaryMode.ordinal()];
                        if (i3 == 1) {
                            controllerRightEnd2 = this.currHandlerLeftEnd;
                        } else {
                            if (i3 != 2) {
                                throw new NoWhenBranchMatchedException();
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
                        int i4 = WhenMappings.$EnumSwitchMapping$3[this.boundaryMode.ordinal()];
                        if (i4 == 1) {
                            controllerRightEnd2 = this.currHandlerRightEnd;
                        } else {
                            if (i4 != 2) {
                                throw new NoWhenBranchMatchedException();
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
                    rectF2.right = controllerRightEnd2;
                } else if (this.isCenterPressed) {
                    float fWidth = this.cutRect.width();
                    this.currHandlerLeftEnd = cutterPosInfo.getControllerLeftEnd();
                    this.currHandlerRightEnd = cutterPosInfo.getControllerRightEnd() - fWidth;
                    float x3 = event.getX() - this.lastDownX;
                    RectF rectF3 = this.cutRect;
                    this.newTargetX = x3 + rectF3.left;
                    float f = this.currHandlerLeftEnd;
                    float f2 = this.currHandlerRightEnd;
                    float f3 = this.newTargetX;
                    if (f3 >= f && f3 <= f2) {
                        rectF3.left = f3;
                        rectF3.right = f3 + fWidth;
                    }
                }
                this.lastDownX = event.getX();
                CutterTimeInfo cutterTimeInfo = this.cutterTimeInfo;
                RectF rectF4 = this.cutRect;
                cutterTimeInfo.updateCutterTime(rectF4.left, rectF4.right);
                this.cutter.updateTimeText(this.cutterTimeInfo.getCutterStartMs(), getCutterRealEndTime(), !this.useFakeEndPos);
                TimeLineControllerCallback timeLineControllerCallback = this.controllerMovedCallback;
                if (timeLineControllerCallback != null) {
                    timeLineControllerCallback.onControllerMoved(this.cutterTimeInfo.getCutterStartMs(), getCutterRealEndTime(), isSeekToTimeAtLeft(), true);
                }
                invalidate();
                return;
            }
            CutterTimeInfo cutterTimeInfo2 = this.cutterTimeInfo;
            RectF rectF5 = this.cutRect;
            cutterTimeInfo2.updateCutterTime(rectF5.left, rectF5.right);
            TimeLineControllerCallback timeLineControllerCallback2 = this.controllerMovedCallback;
            if (timeLineControllerCallback2 != null) {
                timeLineControllerCallback2.onControllerMoved(this.cutterTimeInfo.getCutterStartMs(), getCutterRealEndTime(), isSeekToTimeAtLeft(), false);
            }
            if (event.getActionMasked() == 3 || event.getActionMasked() == 1) {
                this.isLeftHandlerActive = false;
                this.isRightHandlerActive = false;
                this.isCenterPressed = false;
            }
            invalidate();
        }
    }

    public final void setBoundaryMode(BoundaryMode mode) {
        Intrinsics.checkParameterIsNotNull(mode, "mode");
        this.boundaryMode = mode;
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

    private final boolean isMoveEnable() {
        int i = WhenMappings.$EnumSwitchMapping$4[this.boundaryMode.ordinal()];
        if (i == 1) {
            return this.cutterTimeInfo.getCutterMinLengthMs() != this.cutterTimeInfo.getCutterMaxLengthMs();
        }
        if (i == 2) {
            return true;
        }
        throw new NoWhenBranchMatchedException();
    }

    private final long getCutterRealEndTime() {
        if (this.useFakeEndPos) {
            return this.cutterTimeInfo.getCutterStartMs() + this.cutterRealMaxLengthMs;
        }
        return this.cutterTimeInfo.getCutterEndMs();
    }

    /* compiled from: MediaRetrieveController2.kt */
    private static final class CutterPosInfo {
        private float controllerLeftEnd;
        private float controllerRightEnd;
        private float cutterMaxWidth;
        private float cutterMinWidth;

        public final float getCutterMinWidth() {
            return this.cutterMinWidth;
        }

        public final void setCutterMinWidth(float f) {
            this.cutterMinWidth = f;
        }

        public final float getCutterMaxWidth() {
            return this.cutterMaxWidth;
        }

        public final void setCutterMaxWidth(float f) {
            this.cutterMaxWidth = f;
        }

        public final float getControllerLeftEnd() {
            return this.controllerLeftEnd;
        }

        public final void setControllerLeftEnd(float f) {
            this.controllerLeftEnd = f;
        }

        public final float getControllerRightEnd() {
            return this.controllerRightEnd;
        }

        public final void setControllerRightEnd(float f) {
            this.controllerRightEnd = f;
        }
    }

    /* compiled from: MediaRetrieveController2.kt */
    private static final class CutterTimeInfo {
        private long controllerEndMs;
        private long controllerStartMs;
        private long cutterEndMs;
        private long cutterMaxLengthMs;
        private long cutterMinLengthMs;
        private long cutterStartMs;
        private float offset;
        private float scale;

        public final long getControllerStartMs() {
            return this.controllerStartMs;
        }

        public final void setControllerStartMs(long j) {
            this.controllerStartMs = j;
        }

        public final long getControllerEndMs() {
            return this.controllerEndMs;
        }

        public final void setControllerEndMs(long j) {
            this.controllerEndMs = j;
        }

        public final long getCutterStartMs() {
            return this.cutterStartMs;
        }

        public final void setCutterStartMs(long j) {
            this.cutterStartMs = j;
        }

        public final long getCutterEndMs() {
            return this.cutterEndMs;
        }

        public final void setCutterEndMs(long j) {
            this.cutterEndMs = j;
        }

        public final long getCutterMinLengthMs() {
            return this.cutterMinLengthMs;
        }

        public final void setCutterMinLengthMs(long j) {
            this.cutterMinLengthMs = j;
        }

        public final long getCutterMaxLengthMs() {
            return this.cutterMaxLengthMs;
        }

        public final void setCutterMaxLengthMs(long j) {
            this.cutterMaxLengthMs = j;
        }

        public final void updateScale(int i, int i2) {
            long j = this.controllerStartMs;
            if (j == this.controllerEndMs) {
                this.scale = 0.0f;
                this.offset = j;
            } else {
                if (Utils.isRtl()) {
                    long j2 = this.controllerStartMs;
                    long j3 = this.controllerEndMs;
                    this.scale = ((i2 - i) * 1.0f) / (j2 - j3);
                    this.offset = i - (this.scale * j3);
                    return;
                }
                long j4 = this.controllerEndMs;
                long j5 = this.controllerStartMs;
                this.scale = ((i2 - i) * 1.0f) / (j4 - j5);
                this.offset = i - (this.scale * j5);
            }
        }

        public final float getPositionForTime(long j) {
            return (this.scale * j) + this.offset;
        }

        public final void updateCutterTime(float f, float f2) {
            if (Utils.isRtl()) {
                this.cutterStartMs = getTimeForPosition(f2);
                this.cutterEndMs = getTimeForPosition(f);
            } else {
                this.cutterStartMs = getTimeForPosition(f);
                this.cutterEndMs = getTimeForPosition(f2);
            }
        }

        public final float getLengthInController(long j) {
            return Math.abs(this.scale * j);
        }

        public final void shift(long j) {
            this.controllerStartMs += j;
            this.controllerEndMs += j;
            this.cutterStartMs += j;
            this.cutterEndMs += j;
        }

        private final long getTimeForPosition(float f) {
            return (long) Math.ceil((f - this.offset) / this.scale);
        }
    }

    /* compiled from: MediaRetrieveController2.kt */
    private static final class InnerCutter {
        private Bitmap bitmapArrowLeft;
        private Bitmap bitmapArrowRight;
        private Bitmap bitmapDot;
        private final Paint bitmapPaint;
        private final float boundaryWidth;
        private final int controllerColor;
        private final int controllerIndicatorSize;
        private final int coverColor;
        private String cutterEndTimeText;
        private String cutterStartTimeText;
        private final RectF cutterTimeRect;
        private final RectF handlerIndicatorRect;
        private final Paint handlerPaint;
        private final RectF handlerRect;
        private final Paint linePaint;
        private float pointerOffsetForDraw;
        private float pointerPercent;
        private final Paint textPaint;
        private final int textYOffset;

        public InnerCutter(Resources resources) throws Resources.NotFoundException {
            Intrinsics.checkParameterIsNotNull(resources, "resources");
            this.coverColor = resources.getColor(R.color.media_timeline_cover_color);
            this.controllerColor = resources.getColor(R.color.media_timeline_controller_color);
            this.controllerIndicatorSize = resources.getDimensionPixelSize(R.dimen.video_editor_controller_indicator_size);
            this.boundaryWidth = resources.getDimensionPixelSize(R.dimen.media_retrieve_boundary_top_size);
            this.textYOffset = resources.getDimensionPixelOffset(R.dimen.media_retrieve_text_y_offset);
            this.linePaint = new Paint();
            this.handlerPaint = new Paint();
            this.bitmapPaint = new Paint();
            this.textPaint = new Paint();
            this.handlerRect = new RectF();
            this.handlerIndicatorRect = new RectF();
            this.cutterTimeRect = new RectF();
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
            this.textPaint.setColor(resources.getColor(R.color.media_timeline_cutter_text_color));
            this.textPaint.setTextAlign(Paint.Align.CENTER);
            this.textPaint.setTextSize(resources.getDimension(R.dimen.media_retrieve_controller_text_size));
            Drawable drawable = resources.getDrawable(R.drawable.ic_dot);
            if (drawable == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
            }
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            Intrinsics.checkExpressionValueIsNotNull(bitmap, "(resources.getDrawable(R…as BitmapDrawable).bitmap");
            this.bitmapDot = bitmap;
            Drawable drawable2 = resources.getDrawable(R.drawable.ic_double_white_arrow_left);
            if (drawable2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
            }
            Bitmap bitmap2 = ((BitmapDrawable) drawable2).getBitmap();
            Intrinsics.checkExpressionValueIsNotNull(bitmap2, "(resources.getDrawable(R…as BitmapDrawable).bitmap");
            this.bitmapArrowLeft = bitmap2;
            Drawable drawable3 = resources.getDrawable(R.drawable.ic_double_white_arrow_right);
            if (drawable3 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
            }
            Bitmap bitmap3 = ((BitmapDrawable) drawable3).getBitmap();
            Intrinsics.checkExpressionValueIsNotNull(bitmap3, "(resources.getDrawable(R…as BitmapDrawable).bitmap");
            this.bitmapArrowRight = bitmap3;
        }

        public final float getPointerPercent() {
            return this.pointerPercent;
        }

        public final void setPointerPercent(float f) {
            this.pointerPercent = f;
        }

        public final String getCutterStartTimeText() {
            return this.cutterStartTimeText;
        }

        public final void setCutterStartTimeText(String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            this.cutterStartTimeText = str;
        }

        public final String getCutterEndTimeText() {
            return this.cutterEndTimeText;
        }

        public final void setCutterEndTimeText(String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            this.cutterEndTimeText = str;
        }

        public final void draw(Canvas canvas, Rect baseRect, RectF cutRect, int i, boolean z, boolean z2, boolean z3) {
            Intrinsics.checkParameterIsNotNull(canvas, "canvas");
            Intrinsics.checkParameterIsNotNull(baseRect, "baseRect");
            Intrinsics.checkParameterIsNotNull(cutRect, "cutRect");
            canvas.save();
            int i2 = baseRect.left + i;
            int i3 = baseRect.top;
            float f = this.boundaryWidth;
            canvas.clipRect(i2, i3 + ((int) f), baseRect.right - i, baseRect.bottom - ((int) f));
            canvas.clipRect(cutRect, Region.Op.DIFFERENCE);
            canvas.drawColor(this.coverColor);
            canvas.restore();
            this.linePaint.setStrokeWidth(this.boundaryWidth);
            float f2 = cutRect.left;
            float f3 = this.boundaryWidth;
            float f4 = 2;
            float f5 = (f2 - f3) - f4;
            float f6 = cutRect.top;
            canvas.drawLine(f5, (f3 / f4) + f6, cutRect.right + f3 + f4, f6 + (f3 / f4), this.linePaint);
            float f7 = cutRect.left;
            float f8 = this.boundaryWidth;
            float f9 = (f7 - f8) - f4;
            float f10 = cutRect.bottom;
            canvas.drawLine(f9, f10 - (f8 / f4), cutRect.right + f8 + f4, f10 - (f8 / f4), this.linePaint);
            if (z3) {
                this.linePaint.setStrokeWidth(5.0f);
                this.pointerOffsetForDraw = (this.pointerPercent * (cutRect.width() + this.linePaint.getStrokeWidth())) - (this.linePaint.getStrokeWidth() / f4);
                if (Utils.isRtl()) {
                    float f11 = cutRect.right - this.pointerOffsetForDraw;
                    canvas.drawLine(f11, cutRect.top, f11, cutRect.bottom, this.linePaint);
                } else {
                    float f12 = cutRect.left + this.pointerOffsetForDraw;
                    canvas.drawLine(f12, cutRect.top, f12, cutRect.bottom, this.linePaint);
                }
            } else {
                this.pointerPercent = 0.0f;
            }
            RectF rectF = this.handlerRect;
            float f13 = cutRect.left;
            float f14 = i;
            rectF.set(f13 - f14, cutRect.top, f13, cutRect.bottom);
            RectF rectF2 = this.handlerRect;
            float f15 = this.boundaryWidth;
            canvas.drawRoundRect(rectF2, f15, f15, this.handlerPaint);
            if (z) {
                this.handlerIndicatorRect.set(this.handlerRect.centerX() - (this.controllerIndicatorSize / 2), this.handlerRect.centerY() - (this.controllerIndicatorSize / 2), this.handlerRect.centerX() + (this.controllerIndicatorSize / 2), this.handlerRect.centerY() + (this.controllerIndicatorSize / 2));
                canvas.drawBitmap(this.bitmapDot, (Rect) null, this.handlerIndicatorRect, this.bitmapPaint);
            } else {
                this.handlerIndicatorRect.set(this.handlerRect.centerX() - (this.controllerIndicatorSize / 2), this.handlerRect.centerY() - (this.controllerIndicatorSize / 1.5f), this.handlerRect.centerX() + (this.controllerIndicatorSize / 2), this.handlerRect.centerY() + (this.controllerIndicatorSize / 1.5f));
                canvas.drawBitmap(this.bitmapArrowLeft, (Rect) null, this.handlerIndicatorRect, this.bitmapPaint);
            }
            RectF rectF3 = this.handlerRect;
            float f16 = cutRect.right;
            rectF3.set(f16, cutRect.top, f16 + f14, cutRect.bottom);
            RectF rectF4 = this.handlerRect;
            float f17 = this.boundaryWidth;
            canvas.drawRoundRect(rectF4, f17, f17, this.handlerPaint);
            if (z2) {
                this.handlerIndicatorRect.set(this.handlerRect.centerX() - (this.controllerIndicatorSize / 2), this.handlerRect.centerY() - (this.controllerIndicatorSize / 2), this.handlerRect.centerX() + (this.controllerIndicatorSize / 2), this.handlerRect.centerY() + (this.controllerIndicatorSize / 2));
                canvas.drawBitmap(this.bitmapDot, (Rect) null, this.handlerIndicatorRect, this.bitmapPaint);
            } else {
                this.handlerIndicatorRect.set(this.handlerRect.centerX() - (this.controllerIndicatorSize / 2), this.handlerRect.centerY() - (this.controllerIndicatorSize / 1.5f), this.handlerRect.centerX() + (this.controllerIndicatorSize / 2), this.handlerRect.centerY() + (this.controllerIndicatorSize / 1.5f));
                canvas.drawBitmap(this.bitmapArrowRight, (Rect) null, this.handlerIndicatorRect, this.bitmapPaint);
            }
            RectF rectF5 = this.cutterTimeRect;
            float f18 = cutRect.left;
            float f19 = i * 2;
            float f20 = cutRect.bottom;
            int i4 = this.textYOffset;
            rectF5.set(f18 - f19, i4 + f20, f18 + f14, f20 + i4 + this.textPaint.getTextSize());
            canvas.drawText(this.cutterStartTimeText, this.cutterTimeRect.centerX(), this.cutterTimeRect.bottom, this.textPaint);
            RectF rectF6 = this.cutterTimeRect;
            float f21 = cutRect.right;
            float f22 = cutRect.bottom;
            int i5 = this.textYOffset;
            rectF6.set(f21 - f14, i5 + f22, f21 + f19, f22 + i5 + this.textPaint.getTextSize());
            canvas.drawText(this.cutterEndTimeText, this.cutterTimeRect.centerX(), this.cutterTimeRect.bottom, this.textPaint);
        }

        public final void updateTimeText(long j, long j2, boolean z) {
            if (Utils.isRtl()) {
                this.cutterStartTimeText = convertMillisToTime(j2, z);
                this.cutterEndTimeText = convertMillisToTime(j, z);
            } else {
                this.cutterStartTimeText = convertMillisToTime(j, z);
                this.cutterEndTimeText = convertMillisToTime(j2, z);
            }
        }

        private final String convertMillisToTime(long j, boolean z) {
            long j2 = j / 1000;
            long j3 = 60;
            long j4 = j2 % j3;
            long j5 = (j2 / j3) % j3;
            long j6 = j2 / InviteMembersFragment.SECOND_HOUR;
            if (j6 > 0) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                Locale locale = Locale.US;
                Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.US");
                Object[] objArr = {Long.valueOf(j6), Long.valueOf(j5), Long.valueOf(j4)};
                String str = String.format(locale, "%d:%02d:%02d", Arrays.copyOf(objArr, objArr.length));
                Intrinsics.checkExpressionValueIsNotNull(str, "java.lang.String.format(locale, format, *args)");
                return str;
            }
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
            Locale locale2 = Locale.US;
            Intrinsics.checkExpressionValueIsNotNull(locale2, "Locale.US");
            Object[] objArr2 = {Long.valueOf(j5), Long.valueOf(j4)};
            String str2 = String.format(locale2, "%01d:%02d", Arrays.copyOf(objArr2, objArr2.length));
            Intrinsics.checkExpressionValueIsNotNull(str2, "java.lang.String.format(locale, format, *args)");
            return str2;
        }
    }
}
