package com.narvii.video.attachment;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Region;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.Nullable;
import com.narvii.mediaeditor.R;
import com.narvii.util.Utils;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DrawRectView extends View {
    public static final int EDIT_MODE_CAPTION = 0;
    public static final int EDIT_MODE_PIP_VIDEO = 4;
    public static final int EDIT_MODE_STICKER = 1;
    public static final int EDIT_MODE_THEMECAPTION = 3;
    public static final int EDIT_MODE_WATERMARK = 2;
    public static final int HANDCLICK_DURATION = 200;
    public static final double HANDMOVE_DISTANCE = 10.0d;
    private static final int HINT_LINE_DISAPPEAR_DISTANCE = 40;
    private static final int HINT_LINE_THRESHOLD_DISTANCE = 5;
    private static final String TAG = "DrawRect";
    private boolean canDel;
    private boolean canEdit;
    private boolean canHorizFlipClick;
    private boolean canMuteClick;
    private boolean canScalOrRotate;
    private boolean canVolume;
    private Bitmap deleteImgBtn;
    private RectF deleteRectF;
    private Bitmap editImgBtn;
    private RectF editRectF;
    private String filePath;
    private boolean forceAligningHintLine;
    private Paint hintLinePaint;
    private boolean hitHintLineBottom;
    private boolean hitHintLineCenterHorizontal;
    private boolean hitHintLineCenterVertical;
    private boolean hitHintLineLeft;
    private boolean hitHintLineRight;
    private boolean hitHintLineTop;
    private RectF horizFlipRectF;
    float initialMotionX;
    float initialMotionY;
    private boolean isDragging;
    private boolean isInnerDrawRect;
    private PointF lastDragPointF;
    private double mClickMoveDistance;
    private onDrawRectClickListener mDrawRectClickListener;
    private boolean mHasAudio;
    private List<PointF> mListPointF;
    private OnDrawRectTouchListener mListener;
    private boolean mMoveOutScreen;
    private onPipVideoMuteListener mPipVideoMuteListener;
    private long mPrevMillionSecond;
    private Paint mRectPaint;
    private onStickerMuteListenser mStickerMuteListenser;
    public final int mTouchSlop;
    private PointF movementAligningCenterHintLine;
    private PointF movementAligningLeftTopHintLine;
    private PointF movementAligningRightBottomHintLine;
    private RectF muteRectF;
    private boolean pipVideoMute;
    private PointF prePointF;
    private Path rectPath;
    private Bitmap rotationImgBtn;
    private RectF rotationRectF;
    private float safeAreaFocusWidth;
    private Paint safeAreaPaint;
    private float safeAreaRadius;
    private boolean showEdit;
    private RectF viewBoundRect;
    private RectF viewCenterRect;
    private int viewMode;
    private Bitmap volumeOffImgBtn;
    private Bitmap volumeOnImageBtn;
    private RectF volumeRectF;
    private Bitmap waterMarkBitmap;

    public interface OnDrawRectTouchListener {
        void onBeyondDrawRectClick(int i10);

        void onDel(int i10);

        void onDrag(PointF pointF, PointF pointF2, int i10);

        void onEdit(int i10);

        void onHorizFlipClick(int i10);

        void onScaleAndRotate(float f, PointF pointF, float f6, int i10);

        void onTouchDown(PointF pointF, int i10);
    }

    public interface onDrawRectClickListener {
        void onDrawRectClick(int i10);
    }

    public interface onPipVideoMuteListener {
        void onPipVideoMute(boolean z6);
    }

    public interface onStickerMuteListenser {
        void onStickerMute();
    }

    public DrawRectView(Context context) {
        this(context, null);
    }

    public List<PointF> getDrawRect() {
        return this.mListPointF;
    }

    public boolean isPipVideoMute() {
        return this.pipVideoMute;
    }

    public void setDrawRectClickListener(onDrawRectClickListener ondrawrectclicklistener) {
        this.mDrawRectClickListener = ondrawrectclicklistener;
    }

    public void setOnDrawRectTouchListener(OnDrawRectTouchListener onDrawRectTouchListener) {
        this.mListener = onDrawRectTouchListener;
    }

    public void setPipVideoMuteListener(onPipVideoMuteListener onpipvideomutelistener) {
        this.mPipVideoMuteListener = onpipvideomutelistener;
    }

    public void setStickerMuteListenser(onStickerMuteListenser onstickermutelistenser) {
        this.mStickerMuteListenser = onstickermutelistenser;
    }

    public DrawRectView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.prePointF = new PointF(0.0f, 0.0f);
        this.lastDragPointF = new PointF(0.0f, 0.0f);
        this.horizFlipRectF = new RectF();
        this.rotationRectF = new RectF();
        this.editRectF = new RectF();
        this.deleteRectF = new RectF();
        this.volumeRectF = new RectF();
        this.muteRectF = new RectF();
        this.viewCenterRect = new RectF();
        this.viewBoundRect = new RectF();
        this.rectPath = new Path();
        this.canScalOrRotate = false;
        this.canHorizFlipClick = false;
        this.canMuteClick = false;
        this.isInnerDrawRect = false;
        this.canDel = false;
        this.canEdit = false;
        this.canVolume = false;
        this.viewMode = 0;
        this.mHasAudio = false;
        this.rotationImgBtn = BitmapFactory.decodeResource(getResources(), R.drawable.ic_draw_rect_rotate);
        this.deleteImgBtn = BitmapFactory.decodeResource(getResources(), R.drawable.ic_draw_rect_delete);
        this.editImgBtn = BitmapFactory.decodeResource(getResources(), R.drawable.ic_draw_rect_edit);
        this.volumeOffImgBtn = BitmapFactory.decodeResource(getResources(), R.drawable.ic_draw_rect_volume_off);
        this.volumeOnImageBtn = BitmapFactory.decodeResource(getResources(), R.drawable.ic_draw_rect_volume_on);
        this.pipVideoMute = false;
        this.mPrevMillionSecond = 0L;
        this.mClickMoveDistance = com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
        this.mRectPaint = new Paint();
        this.hintLinePaint = new Paint();
        this.safeAreaPaint = new Paint();
        this.mMoveOutScreen = false;
        this.showEdit = true;
        this.movementAligningCenterHintLine = new PointF();
        this.movementAligningLeftTopHintLine = new PointF();
        this.movementAligningRightBottomHintLine = new PointF();
        initRectPaint();
        initHintLinePaint();
        initSafeAreaPaint();
        this.mTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop() / 2;
    }

    private void drawActions(Canvas canvas, PointF pointF, Bitmap bitmap, RectF rectF) {
        canvas.drawBitmap(bitmap, pointF.x - (bitmap.getWidth() / 2.0f), pointF.y - (bitmap.getHeight() / 2.0f), this.mRectPaint);
        rectF.set(pointF.x - (bitmap.getWidth() / 2.0f), pointF.y - (bitmap.getHeight() / 2.0f), pointF.x + (bitmap.getWidth() / 2.0f), pointF.y + (bitmap.getHeight() / 2.0f));
    }

    private void initHintLinePaint() {
        this.hintLinePaint.setColor(Color.parseColor("#04E4B9"));
        this.hintLinePaint.setAntiAlias(true);
        this.hintLinePaint.setStrokeWidth(Utils.dpToPx(getContext(), 1.0f));
        this.hintLinePaint.setStyle(Paint.Style.STROKE);
    }

    private void initRectPaint() {
        Paint paint = new Paint();
        this.mRectPaint = paint;
        paint.setColor(-1);
        this.mRectPaint.setAntiAlias(true);
        this.mRectPaint.setStrokeWidth(Utils.dpToPx(getContext(), 1.0f));
        this.mRectPaint.setPathEffect(new DashPathEffect(new float[]{Utils.dpToPxInt(getContext(), 3.0f), Utils.dpToPxInt(getContext(), 3.0f)}, 0.0f));
        this.mRectPaint.setStyle(Paint.Style.STROKE);
    }

    private void initSafeAreaPaint() {
        this.safeAreaPaint.setAlpha(255);
        this.safeAreaPaint.setAntiAlias(true);
        this.safeAreaPaint.setColor(Color.parseColor("#80D8D8D8"));
        this.safeAreaPaint.setStrokeWidth(Utils.dpToPx(getContext(), 1.0f));
        this.safeAreaPaint.setStyle(Paint.Style.STROKE);
        this.safeAreaRadius = Utils.dpToPx(getContext(), 4.0f);
        this.safeAreaFocusWidth = Utils.dpToPx(getContext(), 9.0f);
    }

    public boolean curPointInDrawOrEditRect(PointF pointF) {
        if (this.mListPointF == null) {
            return false;
        }
        float f = pointF.x;
        float f6 = pointF.y;
        return curPointIsInnerDrawRect((int) f, (int) f6) || this.rotationRectF.contains(f, f6) || this.deleteRectF.contains(f, f6) || this.editRectF.contains(f, f6) || this.volumeRectF.contains(f, f6);
    }

    public boolean curPointIsInnerDrawRect(int i10, int i11) {
        RectF rectF = new RectF();
        Path path = new Path();
        path.moveTo(this.mListPointF.get(0).x, this.mListPointF.get(0).y);
        path.lineTo(this.mListPointF.get(1).x, this.mListPointF.get(1).y);
        path.lineTo(this.mListPointF.get(2).x, this.mListPointF.get(2).y);
        path.lineTo(this.mListPointF.get(3).x, this.mListPointF.get(3).y);
        path.close();
        path.computeBounds(rectF, true);
        Region region = new Region();
        region.setPath(path, new Region((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom));
        return region.contains(i10, i11);
    }

    @Override // android.view.View
    @SuppressLint({"DrawAllocation"})
    protected void onDraw(Canvas canvas) {
        int i10;
        super.onDraw(canvas);
        RectF rectF = this.viewBoundRect;
        float f = this.safeAreaRadius;
        canvas.drawRoundRect(rectF, f, f, this.safeAreaPaint);
        float fCenterX = this.viewBoundRect.centerX();
        RectF rectF2 = this.viewBoundRect;
        canvas.drawLine(fCenterX, rectF2.top - this.safeAreaFocusWidth, rectF2.centerX(), this.viewBoundRect.top, this.safeAreaPaint);
        float fCenterX2 = this.viewBoundRect.centerX();
        RectF rectF3 = this.viewBoundRect;
        canvas.drawLine(fCenterX2, rectF3.bottom, rectF3.centerX(), this.safeAreaFocusWidth + this.viewBoundRect.bottom, this.safeAreaPaint);
        RectF rectF4 = this.viewBoundRect;
        float f6 = rectF4.left - this.safeAreaFocusWidth;
        float fCenterY = rectF4.centerY();
        RectF rectF5 = this.viewBoundRect;
        canvas.drawLine(f6, fCenterY, rectF5.left, rectF5.centerY(), this.safeAreaPaint);
        RectF rectF6 = this.viewBoundRect;
        float f7 = rectF6.right;
        float fCenterY2 = rectF6.centerY();
        RectF rectF7 = this.viewBoundRect;
        canvas.drawLine(f7, fCenterY2, rectF7.right + this.safeAreaFocusWidth, rectF7.centerY(), this.safeAreaPaint);
        List<PointF> list = this.mListPointF;
        if (list == null || list.size() < 4) {
            return;
        }
        if (this.isDragging && !this.canScalOrRotate) {
            float f10 = (this.mListPointF.get(0).x + this.mListPointF.get(2).x) / 2.0f;
            float f11 = (this.mListPointF.get(0).y + this.mListPointF.get(2).y) / 2.0f;
            RectF rectF8 = this.viewCenterRect;
            float f12 = rectF8.left;
            if (f10 >= f12 && f10 <= rectF8.right) {
                this.hintLinePaint.setAlpha(255);
                canvas.drawLine(this.viewCenterRect.centerX(), 0.0f, this.viewCenterRect.centerX(), getHeight(), this.hintLinePaint);
                this.hitHintLineCenterVertical = true;
            } else if (f10 >= f12 || f10 < f12 - 40.0f) {
                float f13 = rectF8.right;
                if (f10 > f13 && f10 <= f13 + 40.0f) {
                    this.hintLinePaint.setAlpha((int) ((1.0f - ((f10 - f13) / 40.0f)) * 255.0f));
                    canvas.drawLine(this.viewCenterRect.centerX(), 0.0f, this.viewCenterRect.centerX(), getHeight(), this.hintLinePaint);
                }
            } else {
                this.hintLinePaint.setAlpha((int) ((1.0f - ((f12 - f10) / 40.0f)) * 255.0f));
                canvas.drawLine(this.viewCenterRect.centerX(), 0.0f, this.viewCenterRect.centerX(), getHeight(), this.hintLinePaint);
            }
            RectF rectF9 = this.viewCenterRect;
            float f14 = rectF9.top;
            if (f11 >= f14 && f11 <= rectF9.bottom) {
                this.hintLinePaint.setAlpha(255);
                canvas.drawLine(0.0f, this.viewCenterRect.centerY(), getWidth(), this.viewCenterRect.centerY(), this.hintLinePaint);
                this.hitHintLineCenterHorizontal = true;
            } else if (f11 >= f14 || f11 < f14 - 40.0f) {
                float f15 = rectF9.bottom;
                if (f11 > f15 && f11 <= f15 + 40.0f) {
                    this.hintLinePaint.setAlpha((int) ((1.0f - ((f11 - f15) / 40.0f)) * 255.0f));
                    canvas.drawLine(0.0f, this.viewCenterRect.centerY(), getWidth(), this.viewCenterRect.centerY(), this.hintLinePaint);
                }
            } else {
                this.hintLinePaint.setAlpha((int) ((1.0f - ((f14 - f11) / 40.0f)) * 255.0f));
                canvas.drawLine(0.0f, this.viewCenterRect.centerY(), getWidth(), this.viewCenterRect.centerY(), this.hintLinePaint);
            }
        }
        this.rectPath.reset();
        this.rectPath.moveTo(this.mListPointF.get(0).x, this.mListPointF.get(0).y);
        this.rectPath.lineTo(this.mListPointF.get(1).x, this.mListPointF.get(1).y);
        this.rectPath.lineTo(this.mListPointF.get(2).x, this.mListPointF.get(2).y);
        this.rectPath.lineTo(this.mListPointF.get(3).x, this.mListPointF.get(3).y);
        this.rectPath.close();
        canvas.drawPath(this.rectPath, this.mRectPaint);
        boolean z6 = this.isDragging;
        if (!z6 && ((i10 = this.viewMode) == 0 || i10 == 1)) {
            drawActions(canvas, this.mListPointF.get(0), this.deleteImgBtn, this.deleteRectF);
            drawActions(canvas, this.mListPointF.get(2), this.rotationImgBtn, this.rotationRectF);
            if (this.showEdit) {
                drawActions(canvas, this.mListPointF.get(3), this.editImgBtn, this.editRectF);
                return;
            }
            return;
        }
        if (!z6 && this.viewMode == 4 && this.showEdit) {
            drawActions(canvas, this.mListPointF.get(0), this.deleteImgBtn, this.deleteRectF);
            drawActions(canvas, this.mListPointF.get(1), this.editImgBtn, this.editRectF);
            drawActions(canvas, this.mListPointF.get(2), this.rotationImgBtn, this.rotationRectF);
            drawActions(canvas, this.mListPointF.get(3), this.pipVideoMute ? this.volumeOffImgBtn : this.volumeOnImageBtn, this.volumeRectF);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        OnDrawRectTouchListener onDrawRectTouchListener;
        onPipVideoMuteListener onpipvideomutelistener;
        OnDrawRectTouchListener onDrawRectTouchListener2;
        OnDrawRectTouchListener onDrawRectTouchListener3;
        OnDrawRectTouchListener onDrawRectTouchListener4;
        OnDrawRectTouchListener onDrawRectTouchListener5;
        OnDrawRectTouchListener onDrawRectTouchListener6;
        OnDrawRectTouchListener onDrawRectTouchListener7;
        float x6 = motionEvent.getX();
        float y6 = motionEvent.getY();
        int action = motionEvent.getAction();
        boolean z6 = false;
        if (action == 0) {
            PointF pointF = this.movementAligningCenterHintLine;
            pointF.x = 0.0f;
            pointF.y = 0.0f;
            PointF pointF2 = this.movementAligningRightBottomHintLine;
            pointF2.x = 0.0f;
            pointF2.y = 0.0f;
            PointF pointF3 = this.movementAligningLeftTopHintLine;
            pointF3.x = 0.0f;
            pointF3.y = 0.0f;
            this.initialMotionX = motionEvent.getX();
            this.initialMotionY = motionEvent.getY();
            this.mPrevMillionSecond = System.currentTimeMillis();
            this.canScalOrRotate = this.rotationRectF.contains(x6, y6);
            this.canDel = this.deleteRectF.contains(x6, y6) && !this.canScalOrRotate;
            int i10 = this.viewMode;
            if (i10 == 0) {
                if (this.showEdit && this.editRectF.contains(x6, y6)) {
                    z6 = true;
                }
                this.canEdit = z6;
            } else if (i10 == 1) {
                if (this.showEdit && this.editRectF.contains(x6, y6)) {
                    z6 = true;
                }
                this.canEdit = z6;
            } else if (i10 == 4) {
                this.canEdit = this.showEdit && this.editRectF.contains(x6, y6);
                if (this.showEdit && this.volumeRectF.contains(x6, y6)) {
                    z6 = true;
                }
                this.canVolume = z6;
            }
            OnDrawRectTouchListener onDrawRectTouchListener8 = this.mListener;
            if (onDrawRectTouchListener8 != null) {
                onDrawRectTouchListener8.onTouchDown(new PointF(x6, y6), this.viewMode);
            }
            List<PointF> list = this.mListPointF;
            if (list != null && list.size() == 4) {
                this.isInnerDrawRect = curPointIsInnerDrawRect((int) x6, (int) y6);
            }
            this.prePointF.set(x6, y6);
            this.lastDragPointF.set(x6, y6);
        } else {
            if (action != 1) {
                if (action == 2) {
                    PointF pointF4 = new PointF();
                    List<PointF> list2 = this.mListPointF;
                    if (list2 != null && list2.size() == 4) {
                        pointF4.x = (this.mListPointF.get(0).x + this.mListPointF.get(2).x) / 2.0f;
                        pointF4.y = (this.mListPointF.get(0).y + this.mListPointF.get(2).y) / 2.0f;
                    }
                    if (!this.canScalOrRotate && (this.hitHintLineCenterHorizontal || this.hitHintLineCenterVertical || this.hitHintLineLeft || this.hitHintLineTop || this.hitHintLineRight || this.hitHintLineBottom)) {
                        if (!this.forceAligningHintLine) {
                            this.forceAligningHintLine = true;
                            Utils.postDelayed(new Runnable() { // from class: com.narvii.video.attachment.DrawRectView.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    DrawRectView.this.hitHintLineCenterHorizontal = false;
                                    DrawRectView.this.hitHintLineCenterVertical = false;
                                    DrawRectView.this.hitHintLineLeft = false;
                                    DrawRectView.this.hitHintLineTop = false;
                                    DrawRectView.this.hitHintLineRight = false;
                                    DrawRectView.this.hitHintLineBottom = false;
                                    DrawRectView.this.forceAligningHintLine = false;
                                }
                            }, 250L);
                        }
                        if (this.hitHintLineCenterHorizontal) {
                            this.movementAligningCenterHintLine.y = y6;
                            this.movementAligningLeftTopHintLine.y = 0.0f;
                            this.movementAligningRightBottomHintLine.y = 0.0f;
                            this.lastDragPointF.y = this.viewCenterRect.centerY();
                            this.prePointF.y = this.viewCenterRect.centerY();
                            y6 = this.viewCenterRect.centerY();
                        }
                        if (this.hitHintLineCenterVertical) {
                            this.movementAligningCenterHintLine.x = x6;
                            this.movementAligningLeftTopHintLine.x = 0.0f;
                            this.movementAligningRightBottomHintLine.x = 0.0f;
                            this.lastDragPointF.x = this.viewCenterRect.centerX();
                            this.prePointF.x = this.viewCenterRect.centerX();
                            x6 = this.viewCenterRect.centerX();
                        }
                    }
                    if (!this.hitHintLineCenterVertical && this.movementAligningCenterHintLine.x != 0.0f) {
                        x6 += (this.viewCenterRect.centerX() - this.movementAligningCenterHintLine.x) * 0.7f;
                    }
                    if (!this.hitHintLineCenterHorizontal && this.movementAligningCenterHintLine.y != 0.0f) {
                        y6 += (this.viewCenterRect.centerY() - this.movementAligningCenterHintLine.y) * 0.6f;
                    }
                    this.mClickMoveDistance = Math.sqrt(Math.pow(x6 - this.prePointF.x, 2.0d) + Math.pow(y6 - this.prePointF.y, 2.0d));
                    if (x6 <= 100.0f || x6 >= getWidth() || y6 >= getHeight() || y6 <= 20.0f) {
                        this.mMoveOutScreen = true;
                        return true;
                    }
                    if (this.mMoveOutScreen) {
                        this.mMoveOutScreen = false;
                    } else {
                        if (this.mListener != null && this.canScalOrRotate) {
                            this.isInnerDrawRect = false;
                            float fSqrt = (float) (Math.sqrt(Math.pow(x6 - pointF4.x, 2.0d) + Math.pow(y6 - pointF4.y, 2.0d)) / Math.sqrt(Math.pow(this.prePointF.x - pointF4.x, 2.0d) + Math.pow(this.prePointF.y - pointF4.y, 2.0d)));
                            double dAtan2 = Math.atan2(y6 - pointF4.y, x6 - pointF4.x);
                            PointF pointF5 = this.prePointF;
                            this.mListener.onScaleAndRotate(fSqrt, new PointF(pointF4.x, pointF4.y), -((float) (((double) (((float) (dAtan2 - Math.atan2(pointF5.y - pointF4.y, pointF5.x - pointF4.x))) * 180.0f)) / 3.141592653589793d)), this.viewMode);
                        }
                        if (!this.isDragging && Math.sqrt(Math.pow(x6 - this.initialMotionX, 2.0d) + Math.pow(y6 - this.initialMotionY, 2.0d)) >= 10.0d) {
                            this.isDragging = true;
                        }
                        if (this.isDragging && (onDrawRectTouchListener7 = this.mListener) != null && this.isInnerDrawRect) {
                            onDrawRectTouchListener7.onDrag(this.lastDragPointF, new PointF(x6, y6), this.viewMode);
                            this.lastDragPointF.set(x6, y6);
                        }
                        this.prePointF.set(x6, y6);
                    }
                } else if (action == 3) {
                    this.isDragging = false;
                    invalidate();
                }
                return true;
            }
            long jCurrentTimeMillis = System.currentTimeMillis() - this.mPrevMillionSecond;
            if (this.mClickMoveDistance < 10.0d && jCurrentTimeMillis <= 200) {
                int i11 = this.viewMode;
                if (i11 == 0) {
                    if (!this.canScalOrRotate && !this.canDel && !this.canEdit) {
                        if (this.isInnerDrawRect) {
                            onDrawRectClickListener ondrawrectclicklistener = this.mDrawRectClickListener;
                            if (ondrawrectclicklistener != null && !this.isDragging) {
                                ondrawrectclicklistener.onDrawRectClick(i11);
                            }
                        } else {
                            OnDrawRectTouchListener onDrawRectTouchListener9 = this.mListener;
                            if (onDrawRectTouchListener9 != null) {
                                onDrawRectTouchListener9.onBeyondDrawRectClick(i11);
                            }
                        }
                    }
                } else if (i11 == 1) {
                    if (!this.canScalOrRotate && !this.canDel && !this.canEdit) {
                        if (this.isInnerDrawRect) {
                            onDrawRectClickListener ondrawrectclicklistener2 = this.mDrawRectClickListener;
                            if (ondrawrectclicklistener2 != null && !this.isDragging) {
                                ondrawrectclicklistener2.onDrawRectClick(i11);
                            }
                        } else {
                            OnDrawRectTouchListener onDrawRectTouchListener10 = this.mListener;
                            if (onDrawRectTouchListener10 != null) {
                                onDrawRectTouchListener10.onBeyondDrawRectClick(i11);
                            }
                        }
                    }
                } else if (i11 == 3) {
                    if (!this.isInnerDrawRect && (onDrawRectTouchListener6 = this.mListener) != null) {
                        onDrawRectTouchListener6.onBeyondDrawRectClick(i11);
                    }
                } else if (i11 == 2 && !this.isInnerDrawRect && (onDrawRectTouchListener5 = this.mListener) != null) {
                    onDrawRectTouchListener5.onBeyondDrawRectClick(i11);
                }
            }
            if (this.canDel && (onDrawRectTouchListener4 = this.mListener) != null) {
                onDrawRectTouchListener4.onDel(this.viewMode);
            }
            int i12 = this.viewMode;
            if (i12 == 0) {
                if (this.canEdit && (onDrawRectTouchListener3 = this.mListener) != null) {
                    onDrawRectTouchListener3.onEdit(i12);
                }
            } else if (i12 == 1) {
                if (this.canEdit && (onDrawRectTouchListener2 = this.mListener) != null) {
                    onDrawRectTouchListener2.onEdit(i12);
                }
            } else if (i12 == 4) {
                if (this.canVolume && (onpipvideomutelistener = this.mPipVideoMuteListener) != null) {
                    onpipvideomutelistener.onPipVideoMute(this.pipVideoMute);
                }
                if (this.canEdit && (onDrawRectTouchListener = this.mListener) != null) {
                    onDrawRectTouchListener.onEdit(this.viewMode);
                }
            }
            this.canDel = false;
            this.canScalOrRotate = false;
            this.isInnerDrawRect = false;
            this.isDragging = false;
            this.canEdit = false;
            this.canHorizFlipClick = false;
            this.canMuteClick = false;
            this.mClickMoveDistance = com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
            invalidate();
        }
        return true;
    }

    public void setDrawRect(List<PointF> list, int i10) {
        this.mListPointF = list;
        this.viewMode = i10;
        invalidate();
    }

    public void setMuteVisible(boolean z6) {
        this.mHasAudio = z6;
        invalidate();
    }

    public void setPipVideoMute(boolean z6) {
        this.pipVideoMute = z6;
        invalidate();
    }

    public void setShowEdit(boolean z6) {
        this.showEdit = z6;
        invalidate();
    }

    @Override // android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        float f = i10;
        float f6 = i12 - i10;
        float f7 = (f6 / 2.0f) + f;
        float f10 = i11;
        float f11 = i13 - i11;
        float f12 = (f11 / 2.0f) + f10;
        this.viewCenterRect.set(f7 - 5.0f, f12 - 5.0f, f7 + 5.0f, f12 + 5.0f);
        float f13 = f6 * 0.1f;
        this.viewBoundRect.set(f + f13, f10 + (0.1f * f11), i12 - f13, i13 - (f11 * 0.12f));
    }

    public void setStickerMuteIndex(int i10) {
        invalidate();
    }
}
