package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.view.Display;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Flow;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.core.widgets.Placeholder;
import androidx.constraintlayout.core.widgets.VirtualLayout;
import androidx.constraintlayout.motion.utils.StopLogic;
import androidx.constraintlayout.motion.utils.ViewState;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintLayoutStates;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.R;
import androidx.constraintlayout.widget.StateSet;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class MotionLayout extends ConstraintLayout implements NestedScrollingParent3 {
    private static final boolean DEBUG = false;
    public static final int DEBUG_SHOW_NONE = 0;
    public static final int DEBUG_SHOW_PATH = 2;
    public static final int DEBUG_SHOW_PROGRESS = 1;
    private static final float EPSILON = 1.0E-5f;
    public static boolean IS_IN_EDIT_MODE = false;
    static final int MAX_KEY_FRAMES = 50;
    static final String TAG = "MotionLayout";
    public static final int TOUCH_UP_COMPLETE = 0;
    public static final int TOUCH_UP_COMPLETE_TO_END = 2;
    public static final int TOUCH_UP_COMPLETE_TO_START = 1;
    public static final int TOUCH_UP_DECELERATE = 4;
    public static final int TOUCH_UP_DECELERATE_AND_COMPLETE = 5;
    public static final int TOUCH_UP_NEVER_TO_END = 7;
    public static final int TOUCH_UP_NEVER_TO_START = 6;
    public static final int TOUCH_UP_STOP = 3;
    public static final int VELOCITY_LAYOUT = 1;
    public static final int VELOCITY_POST_LAYOUT = 0;
    public static final int VELOCITY_STATIC_LAYOUT = 3;
    public static final int VELOCITY_STATIC_POST_LAYOUT = 2;
    boolean firstDown;
    private float lastPos;
    private float lastY;
    private long mAnimationStartTime;
    private int mBeginState;
    private RectF mBoundsCheck;
    int mCurrentState;
    int mDebugPath;
    private DecelerateInterpolator mDecelerateLogic;
    private ArrayList<MotionHelper> mDecoratorsHelpers;
    private boolean mDelayedApply;
    private DesignTool mDesignTool;
    DevModeDraw mDevModeDraw;
    private int mEndState;
    int mEndWrapHeight;
    int mEndWrapWidth;
    HashMap<View, MotionController> mFrameArrayList;
    private int mFrames;
    int mHeightMeasureMode;
    private boolean mInLayout;
    private boolean mInRotation;
    boolean mInTransition;
    boolean mIndirectTransition;
    private boolean mInteractionEnabled;
    Interpolator mInterpolator;
    private Matrix mInverseMatrix;
    boolean mIsAnimating;
    private boolean mKeepAnimating;
    private KeyCache mKeyCache;
    private long mLastDrawTime;
    private float mLastFps;
    private int mLastHeightMeasureSpec;
    int mLastLayoutHeight;
    int mLastLayoutWidth;
    float mLastVelocity;
    private int mLastWidthMeasureSpec;
    private float mListenerPosition;
    private int mListenerState;
    protected boolean mMeasureDuringTransition;
    Model mModel;
    private boolean mNeedsFireTransitionCompleted;
    int mOldHeight;
    int mOldWidth;
    private Runnable mOnComplete;
    private ArrayList<MotionHelper> mOnHideHelpers;
    private ArrayList<MotionHelper> mOnShowHelpers;
    float mPostInterpolationPosition;
    HashMap<View, ViewState> mPreRotate;
    private int mPreRotateHeight;
    private int mPreRotateWidth;
    private int mPreviouseRotation;
    Interpolator mProgressInterpolator;
    private View mRegionView;
    int mRotatMode;
    MotionScene mScene;
    private int[] mScheduledTransitionTo;
    int mScheduledTransitions;
    float mScrollTargetDT;
    float mScrollTargetDX;
    float mScrollTargetDY;
    long mScrollTargetTime;
    int mStartWrapHeight;
    int mStartWrapWidth;
    private StateCache mStateCache;
    private StopLogic mStopLogic;
    Rect mTempRect;
    private boolean mTemporalInterpolator;
    ArrayList<Integer> mTransitionCompleted;
    private float mTransitionDuration;
    float mTransitionGoalPosition;
    private boolean mTransitionInstantly;
    float mTransitionLastPosition;
    private long mTransitionLastTime;
    private TransitionListener mTransitionListener;
    private CopyOnWriteArrayList<TransitionListener> mTransitionListeners;
    float mTransitionPosition;
    TransitionState mTransitionState;
    boolean mUndergoingMotion;
    int mWidthMeasureMode;

    /* JADX INFO: renamed from: androidx.constraintlayout.motion.widget.MotionLayout$2, reason: invalid class name */
    /* JADX INFO: loaded from: classes11.dex */
    class AnonymousClass2 implements Runnable {
        final /* synthetic */ MotionLayout this$0;

        @Override // java.lang.Runnable
        public void run() {
            this.this$0.mInRotation = false;
        }
    }

    class DecelerateInterpolator extends MotionInterpolator {
        float maxA;
        float initalV = 0.0f;
        float currentP = 0.0f;

        public void b(float velocity, float position, float maxAcceleration) {
            this.initalV = velocity;
            this.currentP = position;
            this.maxA = maxAcceleration;
        }

        DecelerateInterpolator() {
        }

        @Override // androidx.constraintlayout.motion.widget.MotionInterpolator
        public float a() {
            return MotionLayout.this.mLastVelocity;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float time) {
            float f;
            float f6;
            float f7 = this.initalV;
            if (f7 > 0.0f) {
                float f10 = this.maxA;
                if (f7 / f10 < time) {
                    time = f7 / f10;
                }
                MotionLayout.this.mLastVelocity = f7 - (f10 * time);
                f = (f7 * time) - (((f10 * time) * time) / 2.0f);
                f6 = this.currentP;
            } else {
                float f11 = this.maxA;
                if ((-f7) / f11 < time) {
                    time = (-f7) / f11;
                }
                MotionLayout.this.mLastVelocity = (f11 * time) + f7;
                f = (f7 * time) + (((f11 * time) * time) / 2.0f);
                f6 = this.currentP;
            }
            return f + f6;
        }
    }

    private class DevModeDraw {
        private static final int DEBUG_PATH_TICKS_PER_MS = 16;
        DashPathEffect mDashPathEffect;
        Paint mFillPaint;
        int mKeyFrameCount;
        float[] mKeyFramePoints;
        Paint mPaint;
        Paint mPaintGraph;
        Paint mPaintKeyframes;
        Path mPath;
        int[] mPathMode;
        float[] mPoints;
        private float[] mRectangle;
        int mShadowTranslate;
        Paint mTextPaint;
        final int RED_COLOR = -21965;
        final int KEYFRAME_COLOR = -2067046;
        final int GRAPH_COLOR = -13391360;
        final int SHADOW_COLOR = 1996488704;
        final int DIAMOND_SIZE = 10;
        Rect mBounds = new Rect();
        boolean mPresentationMode = false;

        private void d(Canvas canvas) {
            boolean z6 = false;
            boolean z10 = false;
            for (int i10 = 0; i10 < this.mKeyFrameCount; i10++) {
                int i11 = this.mPathMode[i10];
                if (i11 == 1) {
                    z6 = true;
                }
                if (i11 == 0) {
                    z10 = true;
                }
            }
            if (z6) {
                g(canvas);
            }
            if (z10) {
                e(canvas);
            }
        }

        private void i(Canvas canvas, float x6, float y6, int viewWidth, int viewHeight) {
            String str = "" + (((int) (((double) (((x6 - (viewWidth / 2)) * 100.0f) / (MotionLayout.this.getWidth() - viewWidth))) + 0.5d)) / 100.0f);
            l(str, this.mTextPaint);
            canvas.drawText(str, ((x6 / 2.0f) - (this.mBounds.width() / 2)) + 0.0f, y6 - 20.0f, this.mTextPaint);
            canvas.drawLine(x6, y6, Math.min(0.0f, 1.0f), y6, this.mPaintGraph);
            String str2 = "" + (((int) (((double) (((y6 - (viewHeight / 2)) * 100.0f) / (MotionLayout.this.getHeight() - viewHeight))) + 0.5d)) / 100.0f);
            l(str2, this.mTextPaint);
            canvas.drawText(str2, x6 + 5.0f, 0.0f - ((y6 / 2.0f) - (this.mBounds.height() / 2)), this.mTextPaint);
            canvas.drawLine(x6, y6, x6, Math.max(0.0f, 1.0f), this.mPaintGraph);
        }

        public void b(Canvas canvas, int mode, int keyFrames, MotionController motionController) {
            if (mode == 4) {
                d(canvas);
            }
            if (mode == 2) {
                g(canvas);
            }
            if (mode == 3) {
                e(canvas);
            }
            c(canvas);
            k(canvas, mode, keyFrames, motionController);
        }

        public DevModeDraw() {
            this.mShadowTranslate = 1;
            Paint paint = new Paint();
            this.mPaint = paint;
            paint.setAntiAlias(true);
            this.mPaint.setColor(-21965);
            this.mPaint.setStrokeWidth(2.0f);
            Paint paint2 = this.mPaint;
            Paint.Style style = Paint.Style.STROKE;
            paint2.setStyle(style);
            Paint paint3 = new Paint();
            this.mPaintKeyframes = paint3;
            paint3.setAntiAlias(true);
            this.mPaintKeyframes.setColor(-2067046);
            this.mPaintKeyframes.setStrokeWidth(2.0f);
            this.mPaintKeyframes.setStyle(style);
            Paint paint4 = new Paint();
            this.mPaintGraph = paint4;
            paint4.setAntiAlias(true);
            this.mPaintGraph.setColor(-13391360);
            this.mPaintGraph.setStrokeWidth(2.0f);
            this.mPaintGraph.setStyle(style);
            Paint paint5 = new Paint();
            this.mTextPaint = paint5;
            paint5.setAntiAlias(true);
            this.mTextPaint.setColor(-13391360);
            this.mTextPaint.setTextSize(MotionLayout.this.getContext().getResources().getDisplayMetrics().density * 12.0f);
            this.mRectangle = new float[8];
            Paint paint6 = new Paint();
            this.mFillPaint = paint6;
            paint6.setAntiAlias(true);
            DashPathEffect dashPathEffect = new DashPathEffect(new float[]{4.0f, 8.0f}, 0.0f);
            this.mDashPathEffect = dashPathEffect;
            this.mPaintGraph.setPathEffect(dashPathEffect);
            this.mKeyFramePoints = new float[100];
            this.mPathMode = new int[50];
            if (this.mPresentationMode) {
                this.mPaint.setStrokeWidth(8.0f);
                this.mFillPaint.setStrokeWidth(8.0f);
                this.mPaintKeyframes.setStrokeWidth(8.0f);
                this.mShadowTranslate = 4;
            }
        }

        private void c(Canvas canvas) {
            canvas.drawLines(this.mPoints, this.mPaint);
        }

        private void e(Canvas canvas) {
            float[] fArr = this.mPoints;
            float f = fArr[0];
            float f6 = fArr[1];
            float f7 = fArr[fArr.length - 2];
            float f10 = fArr[fArr.length - 1];
            canvas.drawLine(Math.min(f, f7), Math.max(f6, f10), Math.max(f, f7), Math.max(f6, f10), this.mPaintGraph);
            canvas.drawLine(Math.min(f, f7), Math.min(f6, f10), Math.min(f, f7), Math.max(f6, f10), this.mPaintGraph);
        }

        private void f(Canvas canvas, float x6, float y6) {
            float[] fArr = this.mPoints;
            float f = fArr[0];
            float f6 = fArr[1];
            float f7 = fArr[fArr.length - 2];
            float f10 = fArr[fArr.length - 1];
            float fMin = Math.min(f, f7);
            float fMax = Math.max(f6, f10);
            float fMin2 = x6 - Math.min(f, f7);
            float fMax2 = Math.max(f6, f10) - y6;
            String str = "" + (((int) (((double) ((fMin2 * 100.0f) / Math.abs(f7 - f))) + 0.5d)) / 100.0f);
            l(str, this.mTextPaint);
            canvas.drawText(str, ((fMin2 / 2.0f) - (this.mBounds.width() / 2)) + fMin, y6 - 20.0f, this.mTextPaint);
            canvas.drawLine(x6, y6, Math.min(f, f7), y6, this.mPaintGraph);
            String str2 = "" + (((int) (((double) ((fMax2 * 100.0f) / Math.abs(f10 - f6))) + 0.5d)) / 100.0f);
            l(str2, this.mTextPaint);
            canvas.drawText(str2, x6 + 5.0f, fMax - ((fMax2 / 2.0f) - (this.mBounds.height() / 2)), this.mTextPaint);
            canvas.drawLine(x6, y6, x6, Math.max(f6, f10), this.mPaintGraph);
        }

        private void g(Canvas canvas) {
            float[] fArr = this.mPoints;
            canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], this.mPaintGraph);
        }

        private void h(Canvas canvas, float x6, float y6) {
            float[] fArr = this.mPoints;
            float f = fArr[0];
            float f6 = fArr[1];
            float f7 = fArr[fArr.length - 2];
            float f10 = fArr[fArr.length - 1];
            float fHypot = (float) Math.hypot(f - f7, f6 - f10);
            float f11 = f7 - f;
            float f12 = f10 - f6;
            float f13 = (((x6 - f) * f11) + ((y6 - f6) * f12)) / (fHypot * fHypot);
            float f14 = f + (f11 * f13);
            float f15 = f6 + (f13 * f12);
            Path path = new Path();
            path.moveTo(x6, y6);
            path.lineTo(f14, f15);
            float fHypot2 = (float) Math.hypot(f14 - x6, f15 - y6);
            String str = "" + (((int) ((fHypot2 * 100.0f) / fHypot)) / 100.0f);
            l(str, this.mTextPaint);
            canvas.drawTextOnPath(str, path, (fHypot2 / 2.0f) - (this.mBounds.width() / 2), -20.0f, this.mTextPaint);
            canvas.drawLine(x6, y6, f14, f15, this.mPaintGraph);
        }

        private void j(Canvas canvas, MotionController motionController) {
            this.mPath.reset();
            for (int i10 = 0; i10 <= 50; i10++) {
                motionController.e(i10 / 50, this.mRectangle, 0);
                Path path = this.mPath;
                float[] fArr = this.mRectangle;
                path.moveTo(fArr[0], fArr[1]);
                Path path2 = this.mPath;
                float[] fArr2 = this.mRectangle;
                path2.lineTo(fArr2[2], fArr2[3]);
                Path path3 = this.mPath;
                float[] fArr3 = this.mRectangle;
                path3.lineTo(fArr3[4], fArr3[5]);
                Path path4 = this.mPath;
                float[] fArr4 = this.mRectangle;
                path4.lineTo(fArr4[6], fArr4[7]);
                this.mPath.close();
            }
            this.mPaint.setColor(1140850688);
            canvas.translate(2.0f, 2.0f);
            canvas.drawPath(this.mPath, this.mPaint);
            canvas.translate(-2.0f, -2.0f);
            this.mPaint.setColor(SupportMenu.CATEGORY_MASK);
            canvas.drawPath(this.mPath, this.mPaint);
        }

        private void k(Canvas canvas, int mode, int keyFrames, MotionController motionController) {
            int width;
            int height;
            View view = motionController.mView;
            if (view != null) {
                width = view.getWidth();
                height = motionController.mView.getHeight();
            } else {
                width = 0;
                height = 0;
            }
            for (int i10 = 1; i10 < keyFrames - 1; i10++) {
                if (mode != 4 || this.mPathMode[i10 - 1] != 0) {
                    float[] fArr = this.mKeyFramePoints;
                    int i11 = i10 * 2;
                    float f = fArr[i11];
                    float f6 = fArr[i11 + 1];
                    this.mPath.reset();
                    this.mPath.moveTo(f, f6 + 10.0f);
                    this.mPath.lineTo(f + 10.0f, f6);
                    this.mPath.lineTo(f, f6 - 10.0f);
                    this.mPath.lineTo(f - 10.0f, f6);
                    this.mPath.close();
                    int i12 = i10 - 1;
                    motionController.q(i12);
                    if (mode == 4) {
                        int i13 = this.mPathMode[i12];
                        if (i13 == 1) {
                            h(canvas, f - 0.0f, f6 - 0.0f);
                        } else if (i13 == 0) {
                            f(canvas, f - 0.0f, f6 - 0.0f);
                        } else {
                            if (i13 == 2) {
                                i(canvas, f - 0.0f, f6 - 0.0f, width, height);
                            }
                            canvas.drawPath(this.mPath, this.mFillPaint);
                        }
                        canvas.drawPath(this.mPath, this.mFillPaint);
                    } else {
                        f6 = f6;
                        f = f;
                    }
                    if (mode == 2) {
                        h(canvas, f - 0.0f, f6 - 0.0f);
                    }
                    if (mode == 3) {
                        f(canvas, f - 0.0f, f6 - 0.0f);
                    }
                    if (mode == 6) {
                        i(canvas, f - 0.0f, f6 - 0.0f, width, height);
                    }
                    canvas.drawPath(this.mPath, this.mFillPaint);
                }
            }
            float[] fArr2 = this.mPoints;
            if (fArr2.length > 1) {
                canvas.drawCircle(fArr2[0], fArr2[1], 8.0f, this.mPaintKeyframes);
                float[] fArr3 = this.mPoints;
                canvas.drawCircle(fArr3[fArr3.length - 2], fArr3[fArr3.length - 1], 8.0f, this.mPaintKeyframes);
            }
        }

        public void a(Canvas canvas, HashMap<View, MotionController> frameArrayList, int duration, int debugPath) {
            if (frameArrayList == null || frameArrayList.size() == 0) {
                return;
            }
            canvas.save();
            if (!MotionLayout.this.isInEditMode() && (debugPath & 1) == 2) {
                String str = MotionLayout.this.getContext().getResources().getResourceName(MotionLayout.this.mEndState) + ":" + MotionLayout.this.getProgress();
                canvas.drawText(str, 10.0f, MotionLayout.this.getHeight() - 30, this.mTextPaint);
                canvas.drawText(str, 11.0f, MotionLayout.this.getHeight() - 29, this.mPaint);
            }
            for (MotionController motionController : frameArrayList.values()) {
                int iM = motionController.m();
                if (debugPath > 0 && iM == 0) {
                    iM = 1;
                }
                if (iM != 0) {
                    this.mKeyFrameCount = motionController.c(this.mKeyFramePoints, this.mPathMode);
                    if (iM >= 1) {
                        int i10 = duration / 16;
                        float[] fArr = this.mPoints;
                        if (fArr == null || fArr.length != i10 * 2) {
                            this.mPoints = new float[i10 * 2];
                            this.mPath = new Path();
                        }
                        int i11 = this.mShadowTranslate;
                        canvas.translate(i11, i11);
                        this.mPaint.setColor(1996488704);
                        this.mFillPaint.setColor(1996488704);
                        this.mPaintKeyframes.setColor(1996488704);
                        this.mPaintGraph.setColor(1996488704);
                        motionController.d(this.mPoints, i10);
                        b(canvas, iM, this.mKeyFrameCount, motionController);
                        this.mPaint.setColor(-21965);
                        this.mPaintKeyframes.setColor(-2067046);
                        this.mFillPaint.setColor(-2067046);
                        this.mPaintGraph.setColor(-13391360);
                        int i12 = this.mShadowTranslate;
                        canvas.translate(-i12, -i12);
                        b(canvas, iM, this.mKeyFrameCount, motionController);
                        if (iM == 5) {
                            j(canvas, motionController);
                        }
                    }
                }
            }
            canvas.restore();
        }

        void l(String text, Paint paint) {
            paint.getTextBounds(text, 0, text.length(), this.mBounds);
        }
    }

    class Model {
        int mEndId;
        int mStartId;
        ConstraintWidgetContainer mLayoutStart = new ConstraintWidgetContainer();
        ConstraintWidgetContainer mLayoutEnd = new ConstraintWidgetContainer();
        ConstraintSet mStart = null;
        ConstraintSet mEnd = null;

        public boolean f(int startId, int endId) {
            return (startId == this.mStartId && endId == this.mEndId) ? false : true;
        }

        public void g(int widthMeasureSpec, int heightMeasureSpec) {
            int mode = View.MeasureSpec.getMode(widthMeasureSpec);
            int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
            MotionLayout motionLayout = MotionLayout.this;
            motionLayout.mWidthMeasureMode = mode;
            motionLayout.mHeightMeasureMode = mode2;
            motionLayout.getOptimizationLevel();
            b(widthMeasureSpec, heightMeasureSpec);
            if (!(MotionLayout.this.getParent() instanceof MotionLayout) || mode != 1073741824 || mode2 != 1073741824) {
                b(widthMeasureSpec, heightMeasureSpec);
                MotionLayout.this.mStartWrapWidth = this.mLayoutStart.Y();
                MotionLayout.this.mStartWrapHeight = this.mLayoutStart.z();
                MotionLayout.this.mEndWrapWidth = this.mLayoutEnd.Y();
                MotionLayout.this.mEndWrapHeight = this.mLayoutEnd.z();
                MotionLayout motionLayout2 = MotionLayout.this;
                motionLayout2.mMeasureDuringTransition = (motionLayout2.mStartWrapWidth == motionLayout2.mEndWrapWidth && motionLayout2.mStartWrapHeight == motionLayout2.mEndWrapHeight) ? false : true;
            }
            MotionLayout motionLayout3 = MotionLayout.this;
            int i10 = motionLayout3.mStartWrapWidth;
            int i11 = motionLayout3.mStartWrapHeight;
            int i12 = motionLayout3.mWidthMeasureMode;
            if (i12 == Integer.MIN_VALUE || i12 == 0) {
                i10 = (int) (i10 + (motionLayout3.mPostInterpolationPosition * (motionLayout3.mEndWrapWidth - i10)));
            }
            int i13 = i10;
            int i14 = motionLayout3.mHeightMeasureMode;
            if (i14 == Integer.MIN_VALUE || i14 == 0) {
                i11 = (int) (i11 + (motionLayout3.mPostInterpolationPosition * (motionLayout3.mEndWrapHeight - i11)));
            }
            MotionLayout.this.resolveMeasuredDimension(widthMeasureSpec, heightMeasureSpec, i13, i11, this.mLayoutStart.V1() || this.mLayoutEnd.V1(), this.mLayoutStart.T1() || this.mLayoutEnd.T1());
        }

        public void i(int startId, int endId) {
            this.mStartId = startId;
            this.mEndId = endId;
        }

        Model() {
        }

        private void b(int widthMeasureSpec, int heightMeasureSpec) {
            int optimizationLevel = MotionLayout.this.getOptimizationLevel();
            MotionLayout motionLayout = MotionLayout.this;
            if (motionLayout.mCurrentState == motionLayout.getStartState()) {
                MotionLayout motionLayout2 = MotionLayout.this;
                ConstraintWidgetContainer constraintWidgetContainer = this.mLayoutEnd;
                ConstraintSet constraintSet = this.mEnd;
                motionLayout2.resolveSystem(constraintWidgetContainer, optimizationLevel, (constraintSet == null || constraintSet.mRotate == 0) ? widthMeasureSpec : heightMeasureSpec, (constraintSet == null || constraintSet.mRotate == 0) ? heightMeasureSpec : widthMeasureSpec);
                ConstraintSet constraintSet2 = this.mStart;
                if (constraintSet2 != null) {
                    MotionLayout motionLayout3 = MotionLayout.this;
                    ConstraintWidgetContainer constraintWidgetContainer2 = this.mLayoutStart;
                    int i10 = constraintSet2.mRotate;
                    int i11 = i10 == 0 ? widthMeasureSpec : heightMeasureSpec;
                    if (i10 == 0) {
                        widthMeasureSpec = heightMeasureSpec;
                    }
                    motionLayout3.resolveSystem(constraintWidgetContainer2, optimizationLevel, i11, widthMeasureSpec);
                    return;
                }
                return;
            }
            ConstraintSet constraintSet3 = this.mStart;
            if (constraintSet3 != null) {
                MotionLayout motionLayout4 = MotionLayout.this;
                ConstraintWidgetContainer constraintWidgetContainer3 = this.mLayoutStart;
                int i12 = constraintSet3.mRotate;
                motionLayout4.resolveSystem(constraintWidgetContainer3, optimizationLevel, i12 == 0 ? widthMeasureSpec : heightMeasureSpec, i12 == 0 ? heightMeasureSpec : widthMeasureSpec);
            }
            MotionLayout motionLayout5 = MotionLayout.this;
            ConstraintWidgetContainer constraintWidgetContainer4 = this.mLayoutEnd;
            ConstraintSet constraintSet4 = this.mEnd;
            int i13 = (constraintSet4 == null || constraintSet4.mRotate == 0) ? widthMeasureSpec : heightMeasureSpec;
            if (constraintSet4 == null || constraintSet4.mRotate == 0) {
                widthMeasureSpec = heightMeasureSpec;
            }
            motionLayout5.resolveSystem(constraintWidgetContainer4, optimizationLevel, i13, widthMeasureSpec);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void j(ConstraintWidgetContainer base, ConstraintSet cSet) {
            SparseArray<ConstraintWidget> sparseArray = new SparseArray<>();
            Constraints.LayoutParams layoutParams = new Constraints.LayoutParams(-2, -2);
            sparseArray.clear();
            sparseArray.put(0, base);
            sparseArray.put(MotionLayout.this.getId(), base);
            if (cSet != null && cSet.mRotate != 0) {
                MotionLayout motionLayout = MotionLayout.this;
                motionLayout.resolveSystem(this.mLayoutEnd, motionLayout.getOptimizationLevel(), View.MeasureSpec.makeMeasureSpec(MotionLayout.this.getHeight(), 1073741824), View.MeasureSpec.makeMeasureSpec(MotionLayout.this.getWidth(), 1073741824));
            }
            for (ConstraintWidget constraintWidget : base.v1()) {
                constraintWidget.D0(true);
                sparseArray.put(((View) constraintWidget.u()).getId(), constraintWidget);
            }
            for (ConstraintWidget constraintWidget2 : base.v1()) {
                View view = (View) constraintWidget2.u();
                cSet.l(view.getId(), layoutParams);
                constraintWidget2.o1(cSet.C(view.getId()));
                constraintWidget2.P0(cSet.x(view.getId()));
                if (view instanceof ConstraintHelper) {
                    cSet.j((ConstraintHelper) view, constraintWidget2, layoutParams, sparseArray);
                    if (view instanceof Barrier) {
                        ((Barrier) view).w();
                    }
                }
                layoutParams.resolveLayoutDirection(MotionLayout.this.getLayoutDirection());
                MotionLayout.this.applyConstraintsFromLayoutParams(false, view, constraintWidget2, layoutParams, sparseArray);
                if (cSet.B(view.getId()) == 1) {
                    constraintWidget2.n1(view.getVisibility());
                } else {
                    constraintWidget2.n1(cSet.A(view.getId()));
                }
            }
            for (ConstraintWidget constraintWidget3 : base.v1()) {
                if (constraintWidget3 instanceof VirtualLayout) {
                    ConstraintHelper constraintHelper = (ConstraintHelper) constraintWidget3.u();
                    Helper helper = (Helper) constraintWidget3;
                    constraintHelper.u(base, helper, sparseArray);
                    ((VirtualLayout) helper).y1();
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:24:0x00e8  */
        /* JADX WARN: Code duplicated, block: B:26:0x00f0  */
        /* JADX WARN: Code duplicated, block: B:27:0x0108  */
        /* JADX WARN: Code duplicated, block: B:29:0x010e  */
        /* JADX WARN: Code duplicated, block: B:42:0x013c A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:44:0x013c A[SYNTHETIC] */
        /* JADX WARN: Instruction removed from duplicated block: B:29:0x010e, please report this as an issue */
        public void a() {
            ConstraintWidget constraintWidgetD;
            int childCount = MotionLayout.this.getChildCount();
            MotionLayout.this.mFrameArrayList.clear();
            SparseArray sparseArray = new SparseArray();
            int[] iArr = new int[childCount];
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = MotionLayout.this.getChildAt(i10);
                MotionController motionController = new MotionController(childAt);
                int id = childAt.getId();
                iArr[i10] = id;
                sparseArray.put(id, motionController);
                MotionLayout.this.mFrameArrayList.put(childAt, motionController);
            }
            int i11 = 0;
            while (i11 < childCount) {
                View childAt2 = MotionLayout.this.getChildAt(i11);
                MotionController motionController2 = MotionLayout.this.mFrameArrayList.get(childAt2);
                if (motionController2 == null) {
                    sparseArray = sparseArray;
                } else {
                    if (this.mStart != null) {
                        ConstraintWidget constraintWidgetD2 = d(this.mLayoutStart, childAt2);
                        if (constraintWidgetD2 != null) {
                            motionController2.F(MotionLayout.this.b0(constraintWidgetD2), this.mStart, MotionLayout.this.getWidth(), MotionLayout.this.getHeight());
                        } else if (MotionLayout.this.mDebugPath != 0) {
                            Log.e(MotionLayout.TAG, Debug.b() + "no widget for  " + Debug.d(childAt2) + " (" + childAt2.getClass().getName() + ")");
                        }
                    } else {
                        if (MotionLayout.this.mInRotation) {
                            ViewState viewState = MotionLayout.this.mPreRotate.get(childAt2);
                            MotionLayout motionLayout = MotionLayout.this;
                            motionController2.G(viewState, childAt2, motionLayout.mRotatMode, motionLayout.mPreRotateWidth, MotionLayout.this.mPreRotateHeight);
                        }
                        if (this.mEnd == null) {
                            constraintWidgetD = d(this.mLayoutEnd, childAt2);
                            if (constraintWidgetD != null) {
                                motionController2.C(MotionLayout.this.b0(constraintWidgetD), this.mEnd, MotionLayout.this.getWidth(), MotionLayout.this.getHeight());
                            } else if (MotionLayout.this.mDebugPath != 0) {
                                Log.e(MotionLayout.TAG, Debug.b() + "no widget for  " + Debug.d(childAt2) + " (" + childAt2.getClass().getName() + ")");
                            }
                        }
                    }
                    if (this.mEnd == null) {
                        constraintWidgetD = d(this.mLayoutEnd, childAt2);
                        if (constraintWidgetD != null) {
                            motionController2.C(MotionLayout.this.b0(constraintWidgetD), this.mEnd, MotionLayout.this.getWidth(), MotionLayout.this.getHeight());
                        } else if (MotionLayout.this.mDebugPath != 0) {
                            Log.e(MotionLayout.TAG, Debug.b() + "no widget for  " + Debug.d(childAt2) + " (" + childAt2.getClass().getName() + ")");
                        }
                    }
                }
                i11++;
                sparseArray = sparseArray;
            }
            SparseArray sparseArray2 = sparseArray;
            int i12 = 0;
            while (i12 < childCount) {
                SparseArray sparseArray3 = sparseArray2;
                MotionController motionController3 = (MotionController) sparseArray3.get(iArr[i12]);
                int iH = motionController3.h();
                if (iH != -1) {
                    motionController3.J((MotionController) sparseArray3.get(iH));
                }
                i12++;
                sparseArray2 = sparseArray3;
            }
        }

        void e(ConstraintWidgetContainer baseLayout, ConstraintSet start, ConstraintSet end) {
            this.mStart = start;
            this.mEnd = end;
            this.mLayoutStart = new ConstraintWidgetContainer();
            this.mLayoutEnd = new ConstraintWidgetContainer();
            this.mLayoutStart.a2(((ConstraintLayout) MotionLayout.this).mLayoutWidget.N1());
            this.mLayoutEnd.a2(((ConstraintLayout) MotionLayout.this).mLayoutWidget.N1());
            this.mLayoutStart.y1();
            this.mLayoutEnd.y1();
            c(((ConstraintLayout) MotionLayout.this).mLayoutWidget, this.mLayoutStart);
            c(((ConstraintLayout) MotionLayout.this).mLayoutWidget, this.mLayoutEnd);
            if (MotionLayout.this.mTransitionLastPosition > 0.5d) {
                if (start != null) {
                    j(this.mLayoutStart, start);
                }
                j(this.mLayoutEnd, end);
            } else {
                j(this.mLayoutEnd, end);
                if (start != null) {
                    j(this.mLayoutStart, start);
                }
            }
            this.mLayoutStart.d2(MotionLayout.this.isRtl());
            this.mLayoutStart.f2();
            this.mLayoutEnd.d2(MotionLayout.this.isRtl());
            this.mLayoutEnd.f2();
            ViewGroup.LayoutParams layoutParams = MotionLayout.this.getLayoutParams();
            if (layoutParams != null) {
                if (layoutParams.width == -2) {
                    ConstraintWidgetContainer constraintWidgetContainer = this.mLayoutStart;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    constraintWidgetContainer.T0(dimensionBehaviour);
                    this.mLayoutEnd.T0(dimensionBehaviour);
                }
                if (layoutParams.height == -2) {
                    ConstraintWidgetContainer constraintWidgetContainer2 = this.mLayoutStart;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    constraintWidgetContainer2.k1(dimensionBehaviour2);
                    this.mLayoutEnd.k1(dimensionBehaviour2);
                }
            }
        }

        public void h() {
            g(MotionLayout.this.mLastWidthMeasureSpec, MotionLayout.this.mLastHeightMeasureSpec);
            MotionLayout.this.a0();
        }

        void c(ConstraintWidgetContainer src, ConstraintWidgetContainer dest) {
            ConstraintWidget constraintWidget;
            ArrayList<ConstraintWidget> arrayListV1 = src.v1();
            HashMap<ConstraintWidget, ConstraintWidget> map = new HashMap<>();
            map.put(src, dest);
            dest.v1().clear();
            dest.n(src, map);
            for (ConstraintWidget constraintWidget2 : arrayListV1) {
                if (constraintWidget2 instanceof androidx.constraintlayout.core.widgets.Barrier) {
                    constraintWidget = new androidx.constraintlayout.core.widgets.Barrier();
                } else if (constraintWidget2 instanceof Guideline) {
                    constraintWidget = new Guideline();
                } else if (constraintWidget2 instanceof Flow) {
                    constraintWidget = new Flow();
                } else if (constraintWidget2 instanceof Placeholder) {
                    constraintWidget = new Placeholder();
                } else if (constraintWidget2 instanceof Helper) {
                    constraintWidget = new HelperWidget();
                } else {
                    constraintWidget = new ConstraintWidget();
                }
                dest.a(constraintWidget);
                map.put(constraintWidget2, constraintWidget);
            }
            for (ConstraintWidget constraintWidget3 : arrayListV1) {
                map.get(constraintWidget3).n(constraintWidget3, map);
            }
        }

        ConstraintWidget d(ConstraintWidgetContainer container, View view) {
            if (container.u() == view) {
                return container;
            }
            ArrayList<ConstraintWidget> arrayListV1 = container.v1();
            int size = arrayListV1.size();
            for (int i10 = 0; i10 < size; i10++) {
                ConstraintWidget constraintWidget = arrayListV1.get(i10);
                if (constraintWidget.u() == view) {
                    return constraintWidget;
                }
            }
            return null;
        }
    }

    protected interface MotionTracker {
        void a();

        void b(MotionEvent event);

        float c();

        void d(int units);

        float e();
    }

    private static class MyTracker implements MotionTracker {
        private static MyTracker me = new MyTracker();
        VelocityTracker tracker;

        public static MyTracker f() {
            me.tracker = VelocityTracker.obtain();
            return me;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void a() {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.tracker = null;
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void b(MotionEvent event) {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                velocityTracker.addMovement(event);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float c() {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                return velocityTracker.getYVelocity();
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void d(int units) {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(units);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float e() {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                return velocityTracker.getXVelocity();
            }
            return 0.0f;
        }

        private MyTracker() {
        }
    }

    class StateCache {
        float mProgress = Float.NaN;
        float mVelocity = Float.NaN;
        int startState = -1;
        int endState = -1;
        final String KeyProgress = "motion.progress";
        final String KeyVelocity = "motion.velocity";
        final String KeyStartState = "motion.StartState";
        final String KeyEndState = "motion.EndState";

        public void d(int endState) {
            this.endState = endState;
        }

        public void e(float progress) {
            this.mProgress = progress;
        }

        public void f(int startState) {
            this.startState = startState;
        }

        public void h(float mVelocity) {
            this.mVelocity = mVelocity;
        }

        StateCache() {
        }

        void a() {
            int i10 = this.startState;
            if (i10 != -1 || this.endState != -1) {
                if (i10 == -1) {
                    MotionLayout.this.g0(this.endState);
                } else {
                    int i11 = this.endState;
                    if (i11 == -1) {
                        MotionLayout.this.setState(i10, -1, -1);
                    } else {
                        MotionLayout.this.Z(i10, i11);
                    }
                }
                MotionLayout.this.setState(TransitionState.SETUP);
            }
            if (Float.isNaN(this.mVelocity)) {
                if (Float.isNaN(this.mProgress)) {
                    return;
                }
                MotionLayout.this.setProgress(this.mProgress);
            } else {
                MotionLayout.this.Y(this.mProgress, this.mVelocity);
                this.mProgress = Float.NaN;
                this.mVelocity = Float.NaN;
                this.startState = -1;
                this.endState = -1;
            }
        }

        public Bundle b() {
            Bundle bundle = new Bundle();
            bundle.putFloat("motion.progress", this.mProgress);
            bundle.putFloat("motion.velocity", this.mVelocity);
            bundle.putInt("motion.StartState", this.startState);
            bundle.putInt("motion.EndState", this.endState);
            return bundle;
        }

        public void c() {
            this.endState = MotionLayout.this.mEndState;
            this.startState = MotionLayout.this.mBeginState;
            this.mVelocity = MotionLayout.this.getVelocity();
            this.mProgress = MotionLayout.this.getProgress();
        }

        public void g(Bundle bundle) {
            this.mProgress = bundle.getFloat("motion.progress");
            this.mVelocity = bundle.getFloat("motion.velocity");
            this.startState = bundle.getInt("motion.StartState");
            this.endState = bundle.getInt("motion.EndState");
        }
    }

    public interface TransitionListener {
        void a(MotionLayout motionLayout, int startId, int endId, float progress);

        void b(MotionLayout motionLayout, int currentId);

        void c(MotionLayout motionLayout, int startId, int endId);

        void d(MotionLayout motionLayout, int triggerId, boolean positive, float progress);
    }

    enum TransitionState {
        UNDEFINED,
        SETUP,
        MOVING,
        FINISHED
    }

    public MotionLayout(@NonNull Context context) {
        super(context);
        this.mProgressInterpolator = null;
        this.mLastVelocity = 0.0f;
        this.mBeginState = -1;
        this.mCurrentState = -1;
        this.mEndState = -1;
        this.mLastWidthMeasureSpec = 0;
        this.mLastHeightMeasureSpec = 0;
        this.mInteractionEnabled = true;
        this.mFrameArrayList = new HashMap<>();
        this.mAnimationStartTime = 0L;
        this.mTransitionDuration = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionGoalPosition = 0.0f;
        this.mInTransition = false;
        this.mIndirectTransition = false;
        this.mDebugPath = 0;
        this.mTemporalInterpolator = false;
        this.mStopLogic = new StopLogic();
        this.mDecelerateLogic = new DecelerateInterpolator();
        this.firstDown = true;
        this.mUndergoingMotion = false;
        this.mKeepAnimating = false;
        this.mOnShowHelpers = null;
        this.mOnHideHelpers = null;
        this.mDecoratorsHelpers = null;
        this.mTransitionListeners = null;
        this.mFrames = 0;
        this.mLastDrawTime = -1L;
        this.mLastFps = 0.0f;
        this.mListenerState = 0;
        this.mListenerPosition = 0.0f;
        this.mIsAnimating = false;
        this.mMeasureDuringTransition = false;
        this.mKeyCache = new KeyCache();
        this.mInLayout = false;
        this.mOnComplete = null;
        this.mScheduledTransitionTo = null;
        this.mScheduledTransitions = 0;
        this.mInRotation = false;
        this.mRotatMode = 0;
        this.mPreRotate = new HashMap<>();
        this.mTempRect = new Rect();
        this.mDelayedApply = false;
        this.mTransitionState = TransitionState.UNDEFINED;
        this.mModel = new Model();
        this.mNeedsFireTransitionCompleted = false;
        this.mBoundsCheck = new RectF();
        this.mRegionView = null;
        this.mInverseMatrix = null;
        this.mTransitionCompleted = new ArrayList<>();
        S(null);
    }

    private static boolean n0(float velocity, float position, float maxAcceleration) {
        if (velocity > 0.0f) {
            float f = velocity / maxAcceleration;
            return position + ((velocity * f) - (((maxAcceleration * f) * f) / 2.0f)) > 1.0f;
        }
        float f6 = (-velocity) / maxAcceleration;
        return position + ((velocity * f6) + (((maxAcceleration * f6) * f6) / 2.0f)) < 0.0f;
    }

    public boolean T() {
        return this.mInteractionEnabled;
    }

    public void f0() {
        z(0.0f);
    }

    public int getCurrentState() {
        return this.mCurrentState;
    }

    public int getEndState() {
        return this.mEndState;
    }

    public float getProgress() {
        return this.mTransitionLastPosition;
    }

    public MotionScene getScene() {
        return this.mScene;
    }

    public int getStartState() {
        return this.mBeginState;
    }

    public float getTargetPosition() {
        return this.mTransitionGoalPosition;
    }

    public float getVelocity() {
        return this.mLastVelocity;
    }

    public void i0(int id, int screenWidth, int screenHeight) {
        j0(id, screenWidth, screenHeight, -1);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        this.mInLayout = true;
        try {
            if (this.mScene == null) {
                super.onLayout(changed, left, top, right, bottom);
                return;
            }
            int i10 = right - left;
            int i11 = bottom - top;
            if (this.mLastLayoutWidth != i10 || this.mLastLayoutHeight != i11) {
                X();
                H(true);
            }
            this.mLastLayoutWidth = i10;
            this.mLastLayoutHeight = i11;
            this.mOldWidth = i10;
            this.mOldHeight = i11;
        } finally {
            this.mInLayout = false;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(@NonNull View target, float velocityX, float velocityY, boolean consumed) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(@NonNull View target, float velocityX, float velocityY) {
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(@NonNull View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int type) {
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    protected void parseLayoutDescription(int id) {
        this.mConstraintLayoutSpec = null;
    }

    public void setDelayedApplicationOfInitialState(boolean delayedApply) {
        this.mDelayedApply = delayedApply;
    }

    public void setInteractionEnabled(boolean enabled) {
        this.mInteractionEnabled = enabled;
    }

    public void setProgress(float pos) {
        if (pos < 0.0f || pos > 1.0f) {
            Log.w(TAG, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive");
        }
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.e(pos);
            return;
        }
        if (pos <= 0.0f) {
            if (this.mTransitionLastPosition == 1.0f && this.mCurrentState == this.mEndState) {
                setState(TransitionState.MOVING);
            }
            this.mCurrentState = this.mBeginState;
            if (this.mTransitionLastPosition == 0.0f) {
                setState(TransitionState.FINISHED);
            }
        } else if (pos >= 1.0f) {
            if (this.mTransitionLastPosition == 0.0f && this.mCurrentState == this.mBeginState) {
                setState(TransitionState.MOVING);
            }
            this.mCurrentState = this.mEndState;
            if (this.mTransitionLastPosition == 1.0f) {
                setState(TransitionState.FINISHED);
            }
        } else {
            this.mCurrentState = -1;
            setState(TransitionState.MOVING);
        }
        if (this.mScene == null) {
            return;
        }
        this.mTransitionInstantly = true;
        this.mTransitionGoalPosition = pos;
        this.mTransitionPosition = pos;
        this.mTransitionLastTime = -1L;
        this.mAnimationStartTime = -1L;
        this.mInterpolator = null;
        this.mInTransition = true;
        invalidate();
    }

    void setState(TransitionState newState) {
        TransitionState transitionState = TransitionState.FINISHED;
        if (newState == transitionState && this.mCurrentState == -1) {
            return;
        }
        TransitionState transitionState2 = this.mTransitionState;
        this.mTransitionState = newState;
        TransitionState transitionState3 = TransitionState.MOVING;
        if (transitionState2 == transitionState3 && newState == transitionState3) {
            J();
        }
        int i10 = AnonymousClass5.$SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[transitionState2.ordinal()];
        if (i10 != 1 && i10 != 2) {
            if (i10 == 3 && newState == transitionState) {
                K();
                return;
            }
            return;
        }
        if (newState == transitionState3) {
            J();
        }
        if (newState == transitionState) {
            K();
        }
    }

    public void setTransition(int transitionId) {
        float f;
        if (this.mScene != null) {
            MotionScene.Transition transitionP = P(transitionId);
            this.mBeginState = transitionP.A();
            this.mEndState = transitionP.y();
            if (!isAttachedToWindow()) {
                if (this.mStateCache == null) {
                    this.mStateCache = new StateCache();
                }
                this.mStateCache.f(this.mBeginState);
                this.mStateCache.d(this.mEndState);
                return;
            }
            int i10 = this.mCurrentState;
            if (i10 == this.mBeginState) {
                f = 0.0f;
            } else {
                f = i10 == this.mEndState ? 1.0f : Float.NaN;
            }
            this.mScene.Y(transitionP);
            this.mModel.e(this.mLayoutWidget, this.mScene.l(this.mBeginState), this.mScene.l(this.mEndState));
            X();
            if (this.mTransitionLastPosition != f) {
                if (f == 0.0f) {
                    G(true);
                    this.mScene.l(this.mBeginState).i(this);
                } else if (f == 1.0f) {
                    G(false);
                    this.mScene.l(this.mEndState).i(this);
                }
            }
            this.mTransitionLastPosition = Float.isNaN(f) ? 0.0f : f;
            if (!Float.isNaN(f)) {
                setProgress(f);
                return;
            }
            Log.v(TAG, Debug.b() + " transitionToStart ");
            f0();
        }
    }

    public void setTransitionListener(TransitionListener listener) {
        this.mTransitionListener = listener;
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.motion.widget.MotionLayout$5, reason: invalid class name */
    static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState;

        static {
            int[] iArr = new int[TransitionState.values().length];
            $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState = iArr;
            try {
                iArr[TransitionState.UNDEFINED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[TransitionState.SETUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[TransitionState.MOVING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[TransitionState.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private void C() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            Log.e(TAG, "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\"");
            return;
        }
        int iF = motionScene.F();
        MotionScene motionScene2 = this.mScene;
        D(iF, motionScene2.l(motionScene2.F()));
        SparseIntArray sparseIntArray = new SparseIntArray();
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        for (MotionScene.Transition transition : this.mScene.o()) {
            if (transition == this.mScene.mCurrentTransition) {
                Log.v(TAG, "CHECK: CURRENT");
            }
            E(transition);
            int iA = transition.A();
            int iY = transition.y();
            String strC = Debug.c(getContext(), iA);
            String strC2 = Debug.c(getContext(), iY);
            if (sparseIntArray.get(iA) == iY) {
                Log.e(TAG, "CHECK: two transitions with the same start and end " + strC + "->" + strC2);
            }
            if (sparseIntArray2.get(iY) == iA) {
                Log.e(TAG, "CHECK: you can't have reverse transitions" + strC + "->" + strC2);
            }
            sparseIntArray.put(iA, iY);
            sparseIntArray2.put(iY, iA);
            if (this.mScene.l(iA) == null) {
                Log.e(TAG, " no such constraintSetStart " + strC);
            }
            if (this.mScene.l(iY) == null) {
                Log.e(TAG, " no such constraintSetEnd " + strC);
            }
        }
    }

    private void I() {
        boolean z6;
        float fSignum = Math.signum(this.mTransitionGoalPosition - this.mTransitionLastPosition);
        long nanoTime = getNanoTime();
        Interpolator interpolator = this.mInterpolator;
        float interpolation = this.mTransitionLastPosition + (!(interpolator instanceof StopLogic) ? (((nanoTime - this.mTransitionLastTime) * fSignum) * 1.0E-9f) / this.mTransitionDuration : 0.0f);
        if (this.mTransitionInstantly) {
            interpolation = this.mTransitionGoalPosition;
        }
        if ((fSignum <= 0.0f || interpolation < this.mTransitionGoalPosition) && (fSignum > 0.0f || interpolation > this.mTransitionGoalPosition)) {
            z6 = false;
        } else {
            interpolation = this.mTransitionGoalPosition;
            z6 = true;
        }
        if (interpolator != null && !z6) {
            interpolation = this.mTemporalInterpolator ? interpolator.getInterpolation((nanoTime - this.mAnimationStartTime) * 1.0E-9f) : interpolator.getInterpolation(interpolation);
        }
        if ((fSignum > 0.0f && interpolation >= this.mTransitionGoalPosition) || (fSignum <= 0.0f && interpolation <= this.mTransitionGoalPosition)) {
            interpolation = this.mTransitionGoalPosition;
        }
        this.mPostInterpolationPosition = interpolation;
        int childCount = getChildCount();
        long nanoTime2 = getNanoTime();
        Interpolator interpolator2 = this.mProgressInterpolator;
        if (interpolator2 != null) {
            interpolation = interpolator2.getInterpolation(interpolation);
        }
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            MotionController motionController = this.mFrameArrayList.get(childAt);
            if (motionController != null) {
                motionController.x(childAt, interpolation, nanoTime2, this.mKeyCache);
            }
        }
        if (this.mMeasureDuringTransition) {
            requestLayout();
        }
    }

    private void J() {
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList;
        if ((this.mTransitionListener == null && ((copyOnWriteArrayList = this.mTransitionListeners) == null || copyOnWriteArrayList.isEmpty())) || this.mListenerPosition == this.mTransitionPosition) {
            return;
        }
        if (this.mListenerState != -1) {
            TransitionListener transitionListener = this.mTransitionListener;
            if (transitionListener != null) {
                transitionListener.c(this, this.mBeginState, this.mEndState);
            }
            CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList2 = this.mTransitionListeners;
            if (copyOnWriteArrayList2 != null) {
                Iterator<TransitionListener> it = copyOnWriteArrayList2.iterator();
                while (it.hasNext()) {
                    it.next().c(this, this.mBeginState, this.mEndState);
                }
            }
            this.mIsAnimating = true;
        }
        this.mListenerState = -1;
        float f = this.mTransitionPosition;
        this.mListenerPosition = f;
        TransitionListener transitionListener2 = this.mTransitionListener;
        if (transitionListener2 != null) {
            transitionListener2.a(this, this.mBeginState, this.mEndState, f);
        }
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList3 = this.mTransitionListeners;
        if (copyOnWriteArrayList3 != null) {
            Iterator<TransitionListener> it2 = copyOnWriteArrayList3.iterator();
            while (it2.hasNext()) {
                it2.next().a(this, this.mBeginState, this.mEndState, this.mTransitionPosition);
            }
        }
        this.mIsAnimating = true;
    }

    private boolean R(float x6, float y6, View view, MotionEvent event) {
        boolean z6;
        if (!(view instanceof ViewGroup)) {
            z6 = false;
            break;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount() - 1;
        while (true) {
            if (childCount < 0) {
                z6 = false;
                break;
            }
            View childAt = viewGroup.getChildAt(childCount);
            if (R((childAt.getLeft() + x6) - view.getScrollX(), (childAt.getTop() + y6) - view.getScrollY(), childAt, event)) {
                z6 = true;
                break;
            }
            childCount--;
        }
        if (!z6) {
            this.mBoundsCheck.set(x6, y6, (view.getRight() + x6) - view.getLeft(), (view.getBottom() + y6) - view.getTop());
            if ((event.getAction() != 0 || this.mBoundsCheck.contains(event.getX(), event.getY())) && B(view, event, -x6, -y6)) {
                return true;
            }
        }
        return z6;
    }

    private void W() {
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList;
        if (this.mTransitionListener == null && ((copyOnWriteArrayList = this.mTransitionListeners) == null || copyOnWriteArrayList.isEmpty())) {
            return;
        }
        this.mIsAnimating = false;
        for (Integer num : this.mTransitionCompleted) {
            TransitionListener transitionListener = this.mTransitionListener;
            if (transitionListener != null) {
                transitionListener.b(this, num.intValue());
            }
            CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList2 = this.mTransitionListeners;
            if (copyOnWriteArrayList2 != null) {
                Iterator<TransitionListener> it = copyOnWriteArrayList2.iterator();
                while (it.hasNext()) {
                    it.next().b(this, num.intValue());
                }
            }
        }
        this.mTransitionCompleted.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect b0(ConstraintWidget cw) {
        this.mTempRect.top = cw.a0();
        this.mTempRect.left = cw.Z();
        Rect rect = this.mTempRect;
        int iY = cw.Y();
        Rect rect2 = this.mTempRect;
        rect.right = iY + rect2.left;
        int iZ = cw.z();
        Rect rect3 = this.mTempRect;
        rect2.bottom = iZ + rect3.top;
        return rect3;
    }

    public boolean A(int viewTransitionId, MotionController motionController) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            return motionScene.g(viewTransitionId, motionController);
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:117:0x01be  */
    /* JADX WARN: Code duplicated, block: B:127:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:129:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:143:0x0222  */
    /* JADX WARN: Code duplicated, block: B:180:0x0193 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00e2 A[PHI: r3
      0x00e2: PHI (r3v50 float) = (r3v49 float), (r3v51 float), (r3v51 float) binds: [B:47:0x00ab, B:58:0x00d6, B:60:0x00da] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:72:0x0111  */
    /* JADX WARN: Code duplicated, block: B:74:0x0118  */
    /* JADX WARN: Code duplicated, block: B:86:0x0138  */
    /* JADX WARN: Code duplicated, block: B:89:0x014f  */
    /* JADX WARN: Code duplicated, block: B:90:0x0151  */
    /* JADX WARN: Code duplicated, block: B:93:0x0159  */
    /* JADX WARN: Code duplicated, block: B:96:0x0170  */
    /* JADX WARN: Code duplicated, block: B:98:0x0180  */
    void H(boolean force) {
        boolean z6;
        char c7;
        int childCount;
        long nanoTime;
        Interpolator interpolator;
        float interpolation;
        Interpolator interpolator2;
        int i10;
        int i11;
        int i12;
        int i13;
        View childAt;
        MotionController motionController;
        boolean z10;
        if (this.mTransitionLastTime == -1) {
            this.mTransitionLastTime = getNanoTime();
        }
        float f = this.mTransitionLastPosition;
        if (f > 0.0f && f < 1.0f) {
            this.mCurrentState = -1;
        }
        boolean z11 = false;
        if (this.mKeepAnimating || (this.mInTransition && (force || this.mTransitionGoalPosition != f))) {
            float fSignum = Math.signum(this.mTransitionGoalPosition - f);
            long nanoTime2 = getNanoTime();
            Interpolator interpolator3 = this.mInterpolator;
            float f6 = !(interpolator3 instanceof MotionInterpolator) ? (((nanoTime2 - this.mTransitionLastTime) * fSignum) * 1.0E-9f) / this.mTransitionDuration : 0.0f;
            float f7 = this.mTransitionLastPosition + f6;
            if (this.mTransitionInstantly) {
                f7 = this.mTransitionGoalPosition;
            }
            if ((fSignum <= 0.0f || f7 < this.mTransitionGoalPosition) && (fSignum > 0.0f || f7 > this.mTransitionGoalPosition)) {
                z6 = false;
            } else {
                f7 = this.mTransitionGoalPosition;
                this.mInTransition = false;
                z6 = true;
            }
            this.mTransitionLastPosition = f7;
            this.mTransitionPosition = f7;
            this.mTransitionLastTime = nanoTime2;
            if (interpolator3 == null || z6) {
                this.mLastVelocity = f6;
            } else {
                if (this.mTemporalInterpolator) {
                    float interpolation2 = interpolator3.getInterpolation((nanoTime2 - this.mAnimationStartTime) * 1.0E-9f);
                    Interpolator interpolator4 = this.mInterpolator;
                    StopLogic stopLogic = this.mStopLogic;
                    c7 = interpolator4 == stopLogic ? stopLogic.c() ? (char) 2 : (char) 1 : (char) 0;
                    this.mTransitionLastPosition = interpolation2;
                    this.mTransitionLastTime = nanoTime2;
                    Interpolator interpolator5 = this.mInterpolator;
                    if (interpolator5 instanceof MotionInterpolator) {
                        float fA = ((MotionInterpolator) interpolator5).a();
                        this.mLastVelocity = fA;
                        if (Math.abs(fA) * this.mTransitionDuration <= EPSILON && c7 == 2) {
                            this.mInTransition = false;
                        }
                        if (fA > 0.0f && interpolation2 >= 1.0f) {
                            this.mTransitionLastPosition = 1.0f;
                            this.mInTransition = false;
                            interpolation2 = 1.0f;
                        }
                        if (fA >= 0.0f || interpolation2 > 0.0f) {
                            f7 = interpolation2;
                        } else {
                            this.mTransitionLastPosition = 0.0f;
                            this.mInTransition = false;
                            f7 = 0.0f;
                        }
                    } else {
                        f7 = interpolation2;
                    }
                } else {
                    float interpolation3 = interpolator3.getInterpolation(f7);
                    Interpolator interpolator6 = this.mInterpolator;
                    if (interpolator6 instanceof MotionInterpolator) {
                        this.mLastVelocity = ((MotionInterpolator) interpolator6).a();
                    } else {
                        this.mLastVelocity = ((interpolator6.getInterpolation(f7 + f6) - interpolation3) * fSignum) / f6;
                    }
                    f7 = interpolation3;
                }
                if (Math.abs(this.mLastVelocity) > EPSILON) {
                    setState(TransitionState.MOVING);
                }
                if (c7 != 1) {
                    if ((fSignum <= 0.0f && f7 >= this.mTransitionGoalPosition) || (fSignum <= 0.0f && f7 <= this.mTransitionGoalPosition)) {
                        f7 = this.mTransitionGoalPosition;
                        this.mInTransition = false;
                    }
                    if (f7 < 1.0f || f7 <= 0.0f) {
                        this.mInTransition = false;
                        setState(TransitionState.FINISHED);
                    }
                }
                childCount = getChildCount();
                this.mKeepAnimating = false;
                nanoTime = getNanoTime();
                this.mPostInterpolationPosition = f7;
                interpolator = this.mProgressInterpolator;
                if (interpolator == null) {
                    interpolation = f7;
                } else {
                    interpolation = interpolator.getInterpolation(f7);
                }
                interpolator2 = this.mProgressInterpolator;
                if (interpolator2 != null) {
                    float interpolation4 = interpolator2.getInterpolation((fSignum / this.mTransitionDuration) + f7);
                    this.mLastVelocity = interpolation4;
                    this.mLastVelocity = interpolation4 - this.mProgressInterpolator.getInterpolation(f7);
                }
                for (i10 = 0; i10 < childCount; i10++) {
                    childAt = getChildAt(i10);
                    motionController = this.mFrameArrayList.get(childAt);
                    if (motionController != null) {
                        this.mKeepAnimating = motionController.x(childAt, interpolation, nanoTime, this.mKeyCache) | this.mKeepAnimating;
                    }
                }
                boolean z12 = (fSignum <= 0.0f && f7 >= this.mTransitionGoalPosition) || (fSignum <= 0.0f && f7 <= this.mTransitionGoalPosition);
                if (!this.mKeepAnimating && !this.mInTransition && z12) {
                    setState(TransitionState.FINISHED);
                }
                if (this.mMeasureDuringTransition) {
                    requestLayout();
                }
                this.mKeepAnimating = (!z12) | this.mKeepAnimating;
                if (f7 <= 0.0f && (i13 = this.mBeginState) != -1 && this.mCurrentState != i13) {
                    this.mCurrentState = i13;
                    this.mScene.l(i13).g(this);
                    setState(TransitionState.FINISHED);
                    z11 = true;
                }
                if (f7 >= 1.0d) {
                    i11 = this.mCurrentState;
                    i12 = this.mEndState;
                    if (i11 != i12) {
                        this.mCurrentState = i12;
                        this.mScene.l(i12).g(this);
                        setState(TransitionState.FINISHED);
                        z11 = true;
                    }
                }
                if (!this.mKeepAnimating || this.mInTransition) {
                    invalidate();
                } else if ((fSignum > 0.0f && f7 == 1.0f) || (fSignum < 0.0f && f7 == 0.0f)) {
                    setState(TransitionState.FINISHED);
                }
                if (!this.mKeepAnimating && !this.mInTransition && ((fSignum > 0.0f && f7 == 1.0f) || (fSignum < 0.0f && f7 == 0.0f))) {
                    V();
                }
            }
            c7 = 0;
            if (Math.abs(this.mLastVelocity) > EPSILON) {
                setState(TransitionState.MOVING);
            }
            if (c7 != 1) {
                if (fSignum <= 0.0f) {
                    f7 = this.mTransitionGoalPosition;
                    this.mInTransition = false;
                } else {
                    f7 = this.mTransitionGoalPosition;
                    this.mInTransition = false;
                }
                if (f7 < 1.0f) {
                    this.mInTransition = false;
                    setState(TransitionState.FINISHED);
                } else {
                    this.mInTransition = false;
                    setState(TransitionState.FINISHED);
                }
            }
            childCount = getChildCount();
            this.mKeepAnimating = false;
            nanoTime = getNanoTime();
            this.mPostInterpolationPosition = f7;
            interpolator = this.mProgressInterpolator;
            if (interpolator == null) {
                interpolation = f7;
            } else {
                interpolation = interpolator.getInterpolation(f7);
            }
            interpolator2 = this.mProgressInterpolator;
            if (interpolator2 != null) {
                float interpolation5 = interpolator2.getInterpolation((fSignum / this.mTransitionDuration) + f7);
                this.mLastVelocity = interpolation5;
                this.mLastVelocity = interpolation5 - this.mProgressInterpolator.getInterpolation(f7);
            }
            while (i10 < childCount) {
                childAt = getChildAt(i10);
                motionController = this.mFrameArrayList.get(childAt);
                if (motionController != null) {
                    this.mKeepAnimating = motionController.x(childAt, interpolation, nanoTime, this.mKeyCache) | this.mKeepAnimating;
                }
            }
            if (fSignum <= 0.0f) {
            }
            if (!this.mKeepAnimating) {
                setState(TransitionState.FINISHED);
            }
            if (this.mMeasureDuringTransition) {
                requestLayout();
            }
            this.mKeepAnimating = (!z12) | this.mKeepAnimating;
            if (f7 <= 0.0f) {
                this.mCurrentState = i13;
                this.mScene.l(i13).g(this);
                setState(TransitionState.FINISHED);
                z11 = true;
            }
            if (f7 >= 1.0d) {
                i11 = this.mCurrentState;
                i12 = this.mEndState;
                if (i11 != i12) {
                    this.mCurrentState = i12;
                    this.mScene.l(i12).g(this);
                    setState(TransitionState.FINISHED);
                    z11 = true;
                }
            }
            if (this.mKeepAnimating) {
                invalidate();
            } else {
                invalidate();
            }
            if (!this.mKeepAnimating) {
                V();
            }
        }
        float f10 = this.mTransitionLastPosition;
        if (f10 < 1.0f) {
            if (f10 <= 0.0f) {
                int i14 = this.mCurrentState;
                int i15 = this.mBeginState;
                z10 = i14 == i15 ? z11 : true;
                this.mCurrentState = i15;
            }
            this.mNeedsFireTransitionCompleted |= z11;
            if (z11 && !this.mInLayout) {
                requestLayout();
            }
            this.mTransitionPosition = this.mTransitionLastPosition;
        }
        int i16 = this.mCurrentState;
        int i17 = this.mEndState;
        z10 = i16 == i17 ? z11 : true;
        this.mCurrentState = i17;
        z11 = z10;
        this.mNeedsFireTransitionCompleted |= z11;
        if (z11) {
            requestLayout();
        }
        this.mTransitionPosition = this.mTransitionLastPosition;
    }

    protected void K() {
        int iIntValue;
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList;
        if ((this.mTransitionListener != null || ((copyOnWriteArrayList = this.mTransitionListeners) != null && !copyOnWriteArrayList.isEmpty())) && this.mListenerState == -1) {
            this.mListenerState = this.mCurrentState;
            if (this.mTransitionCompleted.isEmpty()) {
                iIntValue = -1;
            } else {
                ArrayList<Integer> arrayList = this.mTransitionCompleted;
                iIntValue = arrayList.get(arrayList.size() - 1).intValue();
            }
            int i10 = this.mCurrentState;
            if (iIntValue != i10 && i10 != -1) {
                this.mTransitionCompleted.add(Integer.valueOf(i10));
            }
        }
        W();
        Runnable runnable = this.mOnComplete;
        if (runnable != null) {
            runnable.run();
        }
        int[] iArr = this.mScheduledTransitionTo;
        if (iArr == null || this.mScheduledTransitions <= 0) {
            return;
        }
        g0(iArr[0]);
        int[] iArr2 = this.mScheduledTransitionTo;
        System.arraycopy(iArr2, 1, iArr2, 0, iArr2.length - 1);
        this.mScheduledTransitions--;
    }

    public void L(int triggerId, boolean positive, float progress) {
        TransitionListener transitionListener = this.mTransitionListener;
        if (transitionListener != null) {
            transitionListener.d(this, triggerId, positive, progress);
        }
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList = this.mTransitionListeners;
        if (copyOnWriteArrayList != null) {
            Iterator<TransitionListener> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                it.next().d(this, triggerId, positive, progress);
            }
        }
    }

    void M(int mTouchAnchorId, float pos, float locationX, float locationY, float[] mAnchorDpDt) {
        String resourceName;
        HashMap<View, MotionController> map = this.mFrameArrayList;
        View viewById = getViewById(mTouchAnchorId);
        MotionController motionController = map.get(viewById);
        if (motionController != null) {
            motionController.l(pos, locationX, locationY, mAnchorDpDt);
            float y6 = viewById.getY();
            this.lastPos = pos;
            this.lastY = y6;
            return;
        }
        if (viewById == null) {
            resourceName = "" + mTouchAnchorId;
        } else {
            resourceName = viewById.getContext().getResources().getResourceName(mTouchAnchorId);
        }
        Log.w(TAG, "WARNING could not find view id " + resourceName);
    }

    public ConstraintSet N(int id) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.l(id);
    }

    MotionController O(int mTouchAnchorId) {
        return this.mFrameArrayList.get(findViewById(mTouchAnchorId));
    }

    public MotionScene.Transition P(int id) {
        return this.mScene.G(id);
    }

    public void Q(View view, float posOnViewX, float posOnViewY, float[] returnVelocity, int type) {
        float interpolation;
        float fA = this.mLastVelocity;
        float f = this.mTransitionLastPosition;
        if (this.mInterpolator != null) {
            float fSignum = Math.signum(this.mTransitionGoalPosition - f);
            float interpolation2 = this.mInterpolator.getInterpolation(this.mTransitionLastPosition + EPSILON);
            interpolation = this.mInterpolator.getInterpolation(this.mTransitionLastPosition);
            fA = (fSignum * ((interpolation2 - interpolation) / EPSILON)) / this.mTransitionDuration;
        } else {
            interpolation = f;
        }
        Interpolator interpolator = this.mInterpolator;
        if (interpolator instanceof MotionInterpolator) {
            fA = ((MotionInterpolator) interpolator).a();
        }
        MotionController motionController = this.mFrameArrayList.get(view);
        if ((type & 1) == 0) {
            motionController.r(interpolation, view.getWidth(), view.getHeight(), posOnViewX, posOnViewY, returnVelocity);
        } else {
            motionController.l(interpolation, posOnViewX, posOnViewY, returnVelocity);
        }
        if (type < 2) {
            returnVelocity[0] = returnVelocity[0] * fA;
            returnVelocity[1] = returnVelocity[1] * fA;
        }
    }

    void V() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return;
        }
        if (motionScene.h(this, this.mCurrentState)) {
            requestLayout();
            return;
        }
        int i10 = this.mCurrentState;
        if (i10 != -1) {
            this.mScene.f(this, i10);
        }
        if (this.mScene.b0()) {
            this.mScene.Z();
        }
    }

    public void X() {
        this.mModel.h();
        invalidate();
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0093  */
    /* JADX WARN: Code duplicated, block: B:30:0x009f  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:34:0x00c0  */
    public void c0(int touchUpMode, float position, float currentVelocity) {
        if (this.mScene == null || this.mTransitionLastPosition == position) {
            return;
        }
        this.mTemporalInterpolator = true;
        this.mAnimationStartTime = getNanoTime();
        this.mTransitionDuration = this.mScene.p() / 1000.0f;
        this.mTransitionGoalPosition = position;
        this.mInTransition = true;
        if (touchUpMode == 0 || touchUpMode == 1 || touchUpMode == 2) {
            if (touchUpMode != 1 || touchUpMode == 7) {
                position = 0.0f;
            } else if (touchUpMode == 2 || touchUpMode == 6) {
                position = 1.0f;
            }
            if (this.mScene.k() == 0) {
                this.mStopLogic.b(this.mTransitionLastPosition, position, currentVelocity, this.mTransitionDuration, this.mScene.u(), this.mScene.v());
            } else {
                this.mStopLogic.d(this.mTransitionLastPosition, position, currentVelocity, this.mScene.B(), this.mScene.C(), this.mScene.A(), this.mScene.D(), this.mScene.z());
            }
            int i10 = this.mCurrentState;
            this.mTransitionGoalPosition = position;
            this.mCurrentState = i10;
            this.mInterpolator = this.mStopLogic;
        } else if (touchUpMode == 4) {
            this.mDecelerateLogic.b(currentVelocity, this.mTransitionLastPosition, this.mScene.u());
            this.mInterpolator = this.mDecelerateLogic;
        } else if (touchUpMode != 5) {
            if (touchUpMode == 6 || touchUpMode == 7) {
                if (touchUpMode != 1) {
                    position = 0.0f;
                } else {
                    position = 0.0f;
                }
                if (this.mScene.k() == 0) {
                    this.mStopLogic.b(this.mTransitionLastPosition, position, currentVelocity, this.mTransitionDuration, this.mScene.u(), this.mScene.v());
                } else {
                    this.mStopLogic.d(this.mTransitionLastPosition, position, currentVelocity, this.mScene.B(), this.mScene.C(), this.mScene.A(), this.mScene.D(), this.mScene.z());
                }
                int i11 = this.mCurrentState;
                this.mTransitionGoalPosition = position;
                this.mCurrentState = i11;
                this.mInterpolator = this.mStopLogic;
            }
        } else if (n0(currentVelocity, this.mTransitionLastPosition, this.mScene.u())) {
            this.mDecelerateLogic.b(currentVelocity, this.mTransitionLastPosition, this.mScene.u());
            this.mInterpolator = this.mDecelerateLogic;
        } else {
            this.mStopLogic.b(this.mTransitionLastPosition, position, currentVelocity, this.mTransitionDuration, this.mScene.u(), this.mScene.v());
            this.mLastVelocity = 0.0f;
            int i12 = this.mCurrentState;
            this.mTransitionGoalPosition = position;
            this.mCurrentState = i12;
            this.mInterpolator = this.mStopLogic;
        }
        this.mTransitionInstantly = false;
        this.mAnimationStartTime = getNanoTime();
        invalidate();
    }

    public void d0() {
        z(1.0f);
        this.mOnComplete = null;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        ViewTransitionController viewTransitionController;
        ArrayList<MotionHelper> arrayList = this.mDecoratorsHelpers;
        if (arrayList != null) {
            Iterator<MotionHelper> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().C(canvas);
            }
        }
        H(false);
        MotionScene motionScene = this.mScene;
        if (motionScene != null && (viewTransitionController = motionScene.mViewTransitionController) != null) {
            viewTransitionController.c();
        }
        super.dispatchDraw(canvas);
        if (this.mScene == null) {
            return;
        }
        if ((this.mDebugPath & 1) == 1 && !isInEditMode()) {
            this.mFrames++;
            long nanoTime = getNanoTime();
            long j6 = this.mLastDrawTime;
            if (j6 != -1) {
                long j10 = nanoTime - j6;
                if (j10 > 200000000) {
                    this.mLastFps = ((int) ((this.mFrames / (j10 * 1.0E-9f)) * 100.0f)) / 100.0f;
                    this.mFrames = 0;
                    this.mLastDrawTime = nanoTime;
                }
            } else {
                this.mLastDrawTime = nanoTime;
            }
            Paint paint = new Paint();
            paint.setTextSize(42.0f);
            float progress = ((int) (getProgress() * 1000.0f)) / 10.0f;
            String str = this.mLastFps + " fps " + Debug.e(this, this.mBeginState) + " -> ";
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(Debug.e(this, this.mEndState));
            sb.append(" (progress: ");
            sb.append(progress);
            sb.append(" ) state=");
            int i10 = this.mCurrentState;
            sb.append(i10 == -1 ? "undefined" : Debug.e(this, i10));
            String string = sb.toString();
            paint.setColor(ViewCompat.MEASURED_STATE_MASK);
            canvas.drawText(string, 11.0f, getHeight() - 29, paint);
            paint.setColor(-7864184);
            canvas.drawText(string, 10.0f, getHeight() - 30, paint);
        }
        if (this.mDebugPath > 1) {
            if (this.mDevModeDraw == null) {
                this.mDevModeDraw = new DevModeDraw();
            }
            this.mDevModeDraw.a(canvas, this.mFrameArrayList, this.mScene.p(), this.mDebugPath);
        }
        ArrayList<MotionHelper> arrayList2 = this.mDecoratorsHelpers;
        if (arrayList2 != null) {
            Iterator<MotionHelper> it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                it2.next().B(canvas);
            }
        }
    }

    public void e0(Runnable onComplete) {
        z(1.0f);
        this.mOnComplete = onComplete;
    }

    public int[] getConstraintSetIds() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.n();
    }

    public ArrayList<MotionScene.Transition> getDefinedTransitions() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.o();
    }

    public DesignTool getDesignTool() {
        if (this.mDesignTool == null) {
            this.mDesignTool = new DesignTool(this);
        }
        return this.mDesignTool;
    }

    public Bundle getTransitionState() {
        if (this.mStateCache == null) {
            this.mStateCache = new StateCache();
        }
        this.mStateCache.c();
        return this.mStateCache.b();
    }

    public long getTransitionTimeMs() {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            this.mTransitionDuration = motionScene.p() / 1000.0f;
        }
        return (long) (this.mTransitionDuration * 1000.0f);
    }

    public void j0(int id, int screenWidth, int screenHeight, int duration) {
        StateSet stateSet;
        int iA;
        MotionScene motionScene = this.mScene;
        if (motionScene != null && (stateSet = motionScene.mStateSet) != null && (iA = stateSet.a(this.mCurrentState, id, screenWidth, screenHeight)) != -1) {
            id = iA;
        }
        int i10 = this.mCurrentState;
        if (i10 == id) {
            return;
        }
        if (this.mBeginState == id) {
            z(0.0f);
            if (duration > 0) {
                this.mTransitionDuration = duration / 1000.0f;
                return;
            }
            return;
        }
        if (this.mEndState == id) {
            z(1.0f);
            if (duration > 0) {
                this.mTransitionDuration = duration / 1000.0f;
                return;
            }
            return;
        }
        this.mEndState = id;
        if (i10 != -1) {
            Z(i10, id);
            z(1.0f);
            this.mTransitionLastPosition = 0.0f;
            d0();
            if (duration > 0) {
                this.mTransitionDuration = duration / 1000.0f;
                return;
            }
            return;
        }
        this.mTemporalInterpolator = false;
        this.mTransitionGoalPosition = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionLastTime = getNanoTime();
        this.mAnimationStartTime = getNanoTime();
        this.mTransitionInstantly = false;
        this.mInterpolator = null;
        if (duration == -1) {
            this.mTransitionDuration = this.mScene.p() / 1000.0f;
        }
        this.mBeginState = -1;
        this.mScene.X(-1, this.mEndState);
        SparseArray sparseArray = new SparseArray();
        if (duration == 0) {
            this.mTransitionDuration = this.mScene.p() / 1000.0f;
        } else if (duration > 0) {
            this.mTransitionDuration = duration / 1000.0f;
        }
        int childCount = getChildCount();
        this.mFrameArrayList.clear();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            this.mFrameArrayList.put(childAt, new MotionController(childAt));
            sparseArray.put(childAt.getId(), this.mFrameArrayList.get(childAt));
        }
        this.mInTransition = true;
        this.mModel.e(this.mLayoutWidget, null, this.mScene.l(id));
        X();
        this.mModel.a();
        F();
        int width = getWidth();
        int height = getHeight();
        if (this.mDecoratorsHelpers != null) {
            for (int i12 = 0; i12 < childCount; i12++) {
                MotionController motionController = this.mFrameArrayList.get(getChildAt(i12));
                if (motionController != null) {
                    this.mScene.t(motionController);
                }
            }
            Iterator<MotionHelper> it = this.mDecoratorsHelpers.iterator();
            while (it.hasNext()) {
                it.next().D(this, this.mFrameArrayList);
            }
            for (int i13 = 0; i13 < childCount; i13++) {
                MotionController motionController2 = this.mFrameArrayList.get(getChildAt(i13));
                if (motionController2 != null) {
                    motionController2.I(width, height, this.mTransitionDuration, getNanoTime());
                }
            }
        } else {
            for (int i14 = 0; i14 < childCount; i14++) {
                MotionController motionController3 = this.mFrameArrayList.get(getChildAt(i14));
                if (motionController3 != null) {
                    this.mScene.t(motionController3);
                    motionController3.I(width, height, this.mTransitionDuration, getNanoTime());
                }
            }
        }
        float fE = this.mScene.E();
        if (fE != 0.0f) {
            float fMin = Float.MAX_VALUE;
            float fMax = -3.4028235E38f;
            for (int i15 = 0; i15 < childCount; i15++) {
                MotionController motionController4 = this.mFrameArrayList.get(getChildAt(i15));
                float fO = motionController4.o() + motionController4.n();
                fMin = Math.min(fMin, fO);
                fMax = Math.max(fMax, fO);
            }
            for (int i16 = 0; i16 < childCount; i16++) {
                MotionController motionController5 = this.mFrameArrayList.get(getChildAt(i16));
                float fN = motionController5.n();
                float fO2 = motionController5.o();
                motionController5.mStaggerScale = 1.0f / (1.0f - fE);
                motionController5.mStaggerOffset = fE - ((((fN + fO2) - fMin) * fE) / (fMax - fMin));
            }
        }
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mInTransition = true;
        invalidate();
    }

    public void k0() {
        this.mModel.e(this.mLayoutWidget, this.mScene.l(this.mBeginState), this.mScene.l(this.mEndState));
        X();
    }

    public void l0(int stateId, ConstraintSet set) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.U(stateId, set);
        }
        k0();
        if (this.mCurrentState == stateId) {
            set.i(this);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void loadLayoutDescription(int motionScene) {
        MotionScene.Transition transition;
        if (motionScene == 0) {
            this.mScene = null;
            return;
        }
        try {
            MotionScene motionScene2 = new MotionScene(getContext(), this, motionScene);
            this.mScene = motionScene2;
            if (this.mCurrentState == -1) {
                this.mCurrentState = motionScene2.F();
                this.mBeginState = this.mScene.F();
                this.mEndState = this.mScene.q();
            }
            if (!isAttachedToWindow()) {
                this.mScene = null;
                return;
            }
            try {
                Display display = getDisplay();
                this.mPreviouseRotation = display == null ? 0 : display.getRotation();
                MotionScene motionScene3 = this.mScene;
                if (motionScene3 != null) {
                    ConstraintSet constraintSetL = motionScene3.l(this.mCurrentState);
                    this.mScene.T(this);
                    ArrayList<MotionHelper> arrayList = this.mDecoratorsHelpers;
                    if (arrayList != null) {
                        Iterator<MotionHelper> it = arrayList.iterator();
                        while (it.hasNext()) {
                            it.next().A(this);
                        }
                    }
                    if (constraintSetL != null) {
                        constraintSetL.i(this);
                    }
                    this.mBeginState = this.mCurrentState;
                }
                V();
                StateCache stateCache = this.mStateCache;
                if (stateCache != null) {
                    if (this.mDelayedApply) {
                        post(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MotionLayout.this.mStateCache.a();
                            }
                        });
                        return;
                    } else {
                        stateCache.a();
                        return;
                    }
                }
                MotionScene motionScene4 = this.mScene;
                if (motionScene4 == null || (transition = motionScene4.mCurrentTransition) == null || transition.x() != 4) {
                    return;
                }
                d0();
                setState(TransitionState.SETUP);
                setState(TransitionState.MOVING);
            } catch (Exception e) {
                throw new IllegalArgumentException("unable to parse MotionScene file", e);
            }
        } catch (Exception e2) {
            throw new IllegalArgumentException("unable to parse MotionScene file", e2);
        }
    }

    public void m0(int viewTransitionId, View... view) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.c0(viewTransitionId, view);
        } else {
            Log.e(TAG, " no motionScene");
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent event) {
        TouchResponse touchResponseB;
        int iQ;
        RectF rectFP;
        MotionScene motionScene = this.mScene;
        if (motionScene != null && this.mInteractionEnabled) {
            ViewTransitionController viewTransitionController = motionScene.mViewTransitionController;
            if (viewTransitionController != null) {
                viewTransitionController.h(event);
            }
            MotionScene.Transition transition = this.mScene.mCurrentTransition;
            if (transition != null && transition.C() && (touchResponseB = transition.B()) != null && ((event.getAction() != 0 || (rectFP = touchResponseB.p(this, new RectF())) == null || rectFP.contains(event.getX(), event.getY())) && (iQ = touchResponseB.q()) != -1)) {
                View view = this.mRegionView;
                if (view == null || view.getId() != iQ) {
                    this.mRegionView = findViewById(iQ);
                }
                View view2 = this.mRegionView;
                if (view2 != null) {
                    this.mBoundsCheck.set(view2.getLeft(), this.mRegionView.getTop(), this.mRegionView.getRight(), this.mRegionView.getBottom());
                    if (this.mBoundsCheck.contains(event.getX(), event.getY()) && !R(this.mRegionView.getLeft(), this.mRegionView.getTop(), this.mRegionView, event)) {
                        return onTouchEvent(event);
                    }
                }
            }
        }
        return false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.mScene == null) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        boolean z6 = false;
        boolean z10 = (this.mLastWidthMeasureSpec == widthMeasureSpec && this.mLastHeightMeasureSpec == heightMeasureSpec) ? false : true;
        if (this.mNeedsFireTransitionCompleted) {
            this.mNeedsFireTransitionCompleted = false;
            V();
            W();
            z10 = true;
        }
        if (this.mDirtyHierarchy) {
            z10 = true;
        }
        this.mLastWidthMeasureSpec = widthMeasureSpec;
        this.mLastHeightMeasureSpec = heightMeasureSpec;
        int iF = this.mScene.F();
        int iQ = this.mScene.q();
        if ((z10 || this.mModel.f(iF, iQ)) && this.mBeginState != -1) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            this.mModel.e(this.mLayoutWidget, this.mScene.l(iF), this.mScene.l(iQ));
            this.mModel.h();
            this.mModel.i(iF, iQ);
        } else {
            if (z10) {
                super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            }
            z6 = true;
        }
        if (this.mMeasureDuringTransition || z6) {
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int iY = this.mLayoutWidget.Y() + getPaddingLeft() + getPaddingRight();
            int iZ = this.mLayoutWidget.z() + paddingTop;
            int i10 = this.mWidthMeasureMode;
            if (i10 == Integer.MIN_VALUE || i10 == 0) {
                int i11 = this.mStartWrapWidth;
                iY = (int) (i11 + (this.mPostInterpolationPosition * (this.mEndWrapWidth - i11)));
                requestLayout();
            }
            int i12 = this.mHeightMeasureMode;
            if (i12 == Integer.MIN_VALUE || i12 == 0) {
                int i13 = this.mStartWrapHeight;
                iZ = (int) (i13 + (this.mPostInterpolationPosition * (this.mEndWrapHeight - i13)));
                requestLayout();
            }
            setMeasuredDimension(iY, iZ);
        }
        I();
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(@NonNull final View target, int dx, int dy, @NonNull int[] consumed, int type) {
        MotionScene.Transition transition;
        TouchResponse touchResponseB;
        int iQ;
        MotionScene motionScene = this.mScene;
        if (motionScene == null || (transition = motionScene.mCurrentTransition) == null || !transition.C()) {
            return;
        }
        int i10 = -1;
        if (!transition.C() || (touchResponseB = transition.B()) == null || (iQ = touchResponseB.q()) == -1 || target.getId() == iQ) {
            if (motionScene.w()) {
                TouchResponse touchResponseB2 = transition.B();
                if (touchResponseB2 != null && (touchResponseB2.e() & 4) != 0) {
                    i10 = dy;
                }
                float f = this.mTransitionPosition;
                if ((f == 1.0f || f == 0.0f) && target.canScrollVertically(i10)) {
                    return;
                }
            }
            if (transition.B() != null && (transition.B().e() & 1) != 0) {
                float fX = motionScene.x(dx, dy);
                float f6 = this.mTransitionLastPosition;
                if ((f6 <= 0.0f && fX < 0.0f) || (f6 >= 1.0f && fX > 0.0f)) {
                    target.setNestedScrollingEnabled(false);
                    target.post(new Runnable(this) { // from class: androidx.constraintlayout.motion.widget.MotionLayout.3
                        @Override // java.lang.Runnable
                        public void run() {
                            target.setNestedScrollingEnabled(true);
                        }
                    });
                    return;
                }
            }
            float f7 = this.mTransitionPosition;
            long nanoTime = getNanoTime();
            float f10 = dx;
            this.mScrollTargetDX = f10;
            float f11 = dy;
            this.mScrollTargetDY = f11;
            this.mScrollTargetDT = (float) ((nanoTime - this.mScrollTargetTime) * 1.0E-9d);
            this.mScrollTargetTime = nanoTime;
            motionScene.P(f10, f11);
            if (f7 != this.mTransitionPosition) {
                consumed[0] = dx;
                consumed[1] = dy;
            }
            H(false);
            if (consumed[0] == 0 && consumed[1] == 0) {
                return;
            }
            this.mUndergoingMotion = true;
        }
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(@NonNull View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int type, int[] consumed) {
        if (this.mUndergoingMotion || dxConsumed != 0 || dyConsumed != 0) {
            consumed[0] = consumed[0] + dxUnconsumed;
            consumed[1] = consumed[1] + dyUnconsumed;
        }
        this.mUndergoingMotion = false;
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int layoutDirection) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.W(isRtl());
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(@NonNull View child, @NonNull View target, int axes, int type) {
        MotionScene.Transition transition;
        MotionScene motionScene = this.mScene;
        return (motionScene == null || (transition = motionScene.mCurrentTransition) == null || transition.B() == null || (this.mScene.mCurrentTransition.B().e() & 2) != 0) ? false : true;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(@NonNull View target, int type) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            float f = this.mScrollTargetDT;
            if (f == 0.0f) {
                return;
            }
            motionScene.Q(this.mScrollTargetDX / f, this.mScrollTargetDY / f);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null || !this.mInteractionEnabled || !motionScene.b0()) {
            return super.onTouchEvent(event);
        }
        MotionScene.Transition transition = this.mScene.mCurrentTransition;
        if (transition != null && !transition.C()) {
            return super.onTouchEvent(event);
        }
        this.mScene.R(event, getCurrentState(), this);
        if (this.mScene.mCurrentTransition.D(4)) {
            return this.mScene.mCurrentTransition.B().r();
        }
        return true;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public void requestLayout() {
        MotionScene motionScene;
        MotionScene.Transition transition;
        if (!this.mMeasureDuringTransition && this.mCurrentState == -1 && (motionScene = this.mScene) != null && (transition = motionScene.mCurrentTransition) != null) {
            int iZ = transition.z();
            if (iZ == 0) {
                return;
            }
            if (iZ == 2) {
                int childCount = getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    this.mFrameArrayList.get(getChildAt(i10)).z();
                }
                return;
            }
        }
        super.requestLayout();
    }

    public void setDebugMode(int debugMode) {
        this.mDebugPath = debugMode;
        invalidate();
    }

    public void setInterpolatedProgress(float pos) {
        if (this.mScene != null) {
            setState(TransitionState.MOVING);
            Interpolator interpolatorS = this.mScene.s();
            if (interpolatorS != null) {
                setProgress(interpolatorS.getInterpolation(pos));
                return;
            }
        }
        setProgress(pos);
    }

    public void setOnHide(float progress) {
        ArrayList<MotionHelper> arrayList = this.mOnHideHelpers;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.mOnHideHelpers.get(i10).setProgress(progress);
            }
        }
    }

    public void setOnShow(float progress) {
        ArrayList<MotionHelper> arrayList = this.mOnShowHelpers;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.mOnShowHelpers.get(i10).setProgress(progress);
            }
        }
    }

    public void setScene(MotionScene scene) {
        this.mScene = scene;
        scene.W(isRtl());
        X();
    }

    public void setTransitionDuration(int milliseconds) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            Log.e(TAG, "MotionScene not defined");
        } else {
            motionScene.V(milliseconds);
        }
    }

    public void setTransitionState(Bundle bundle) {
        if (this.mStateCache == null) {
            this.mStateCache = new StateCache();
        }
        this.mStateCache.g(bundle);
        if (isAttachedToWindow()) {
            this.mStateCache.a();
        }
    }

    void z(float position) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return;
        }
        float f = this.mTransitionLastPosition;
        float f6 = this.mTransitionPosition;
        if (f != f6 && this.mTransitionInstantly) {
            this.mTransitionLastPosition = f6;
        }
        float f7 = this.mTransitionLastPosition;
        if (f7 == position) {
            return;
        }
        this.mTemporalInterpolator = false;
        this.mTransitionGoalPosition = position;
        this.mTransitionDuration = motionScene.p() / 1000.0f;
        setProgress(this.mTransitionGoalPosition);
        this.mInterpolator = null;
        this.mProgressInterpolator = this.mScene.s();
        this.mTransitionInstantly = false;
        this.mAnimationStartTime = getNanoTime();
        this.mInTransition = true;
        this.mTransitionPosition = f7;
        this.mTransitionLastPosition = f7;
        invalidate();
    }

    private boolean B(View view, MotionEvent event, float offsetX, float offsetY) {
        Matrix matrix = view.getMatrix();
        if (matrix.isIdentity()) {
            event.offsetLocation(offsetX, offsetY);
            boolean zOnTouchEvent = view.onTouchEvent(event);
            event.offsetLocation(-offsetX, -offsetY);
            return zOnTouchEvent;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(event);
        motionEventObtain.offsetLocation(offsetX, offsetY);
        if (this.mInverseMatrix == null) {
            this.mInverseMatrix = new Matrix();
        }
        matrix.invert(this.mInverseMatrix);
        motionEventObtain.transform(this.mInverseMatrix);
        boolean zOnTouchEvent2 = view.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
        return zOnTouchEvent2;
    }

    private void D(int csetId, ConstraintSet set) {
        String strC = Debug.c(getContext(), csetId);
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            int id = childAt.getId();
            if (id == -1) {
                Log.w(TAG, "CHECK: " + strC + " ALL VIEWS SHOULD HAVE ID's " + childAt.getClass().getName() + " does not!");
            }
            if (set.w(id) == null) {
                Log.w(TAG, "CHECK: " + strC + " NO CONSTRAINTS for " + Debug.d(childAt));
            }
        }
        int[] iArrY = set.y();
        for (int i11 = 0; i11 < iArrY.length; i11++) {
            int i12 = iArrY[i11];
            String strC2 = Debug.c(getContext(), i12);
            if (findViewById(iArrY[i11]) == null) {
                Log.w(TAG, "CHECK: " + strC + " NO View matches id " + strC2);
            }
            if (set.x(i12) == -1) {
                Log.w(TAG, "CHECK: " + strC + "(" + strC2 + ") no LAYOUT_HEIGHT");
            }
            if (set.C(i12) == -1) {
                Log.w(TAG, "CHECK: " + strC + "(" + strC2 + ") no LAYOUT_HEIGHT");
            }
        }
    }

    private void E(MotionScene.Transition transition) {
        if (transition.A() == transition.y()) {
            Log.e(TAG, "CHECK: start and end constraint set should not be the same!");
        }
    }

    private void F() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            MotionController motionController = this.mFrameArrayList.get(childAt);
            if (motionController != null) {
                motionController.E(childAt);
            }
        }
    }

    private void S(AttributeSet attrs) {
        MotionScene motionScene;
        int i10;
        IS_IN_EDIT_MODE = isInEditMode();
        if (attrs != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.MotionLayout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            boolean z6 = true;
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R.styleable.MotionLayout_layoutDescription) {
                    this.mScene = new MotionScene(getContext(), this, typedArrayObtainStyledAttributes.getResourceId(index, -1));
                } else if (index == R.styleable.MotionLayout_currentState) {
                    this.mCurrentState = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                } else if (index == R.styleable.MotionLayout_motionProgress) {
                    this.mTransitionGoalPosition = typedArrayObtainStyledAttributes.getFloat(index, 0.0f);
                    this.mInTransition = true;
                } else if (index == R.styleable.MotionLayout_applyMotionScene) {
                    z6 = typedArrayObtainStyledAttributes.getBoolean(index, z6);
                } else if (index == R.styleable.MotionLayout_showPaths) {
                    if (this.mDebugPath == 0) {
                        if (typedArrayObtainStyledAttributes.getBoolean(index, false)) {
                            i10 = 2;
                        } else {
                            i10 = 0;
                        }
                        this.mDebugPath = i10;
                    }
                } else if (index == R.styleable.MotionLayout_motionDebug) {
                    this.mDebugPath = typedArrayObtainStyledAttributes.getInt(index, 0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            if (this.mScene == null) {
                Log.e(TAG, "WARNING NO app:layoutDescription tag");
            }
            if (!z6) {
                this.mScene = null;
            }
        }
        if (this.mDebugPath != 0) {
            C();
        }
        if (this.mCurrentState == -1 && (motionScene = this.mScene) != null) {
            this.mCurrentState = motionScene.F();
            this.mBeginState = this.mScene.F();
            this.mEndState = this.mScene.q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0() {
        float f;
        float f6;
        int childCount = getChildCount();
        this.mModel.a();
        boolean z6 = true;
        this.mInTransition = true;
        SparseArray sparseArray = new SparseArray();
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            sparseArray.put(childAt.getId(), this.mFrameArrayList.get(childAt));
        }
        int width = getWidth();
        int height = getHeight();
        int iJ = this.mScene.j();
        if (iJ != -1) {
            for (int i12 = 0; i12 < childCount; i12++) {
                MotionController motionController = this.mFrameArrayList.get(getChildAt(i12));
                if (motionController != null) {
                    motionController.D(iJ);
                }
            }
        }
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        int[] iArr = new int[this.mFrameArrayList.size()];
        int i13 = 0;
        for (int i14 = 0; i14 < childCount; i14++) {
            MotionController motionController2 = this.mFrameArrayList.get(getChildAt(i14));
            if (motionController2.h() != -1) {
                sparseBooleanArray.put(motionController2.h(), true);
                iArr[i13] = motionController2.h();
                i13++;
            }
        }
        if (this.mDecoratorsHelpers != null) {
            for (int i15 = 0; i15 < i13; i15++) {
                MotionController motionController3 = this.mFrameArrayList.get(findViewById(iArr[i15]));
                if (motionController3 != null) {
                    this.mScene.t(motionController3);
                }
            }
            Iterator<MotionHelper> it = this.mDecoratorsHelpers.iterator();
            while (it.hasNext()) {
                it.next().D(this, this.mFrameArrayList);
            }
            for (int i16 = 0; i16 < i13; i16++) {
                MotionController motionController4 = this.mFrameArrayList.get(findViewById(iArr[i16]));
                if (motionController4 != null) {
                    motionController4.I(width, height, this.mTransitionDuration, getNanoTime());
                }
            }
        } else {
            for (int i17 = 0; i17 < i13; i17++) {
                MotionController motionController5 = this.mFrameArrayList.get(findViewById(iArr[i17]));
                if (motionController5 != null) {
                    this.mScene.t(motionController5);
                    motionController5.I(width, height, this.mTransitionDuration, getNanoTime());
                }
            }
        }
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt2 = getChildAt(i18);
            MotionController motionController6 = this.mFrameArrayList.get(childAt2);
            if (!sparseBooleanArray.get(childAt2.getId()) && motionController6 != null) {
                this.mScene.t(motionController6);
                motionController6.I(width, height, this.mTransitionDuration, getNanoTime());
            }
        }
        float fE = this.mScene.E();
        if (fE != 0.0f) {
            if (fE >= com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
                z6 = false;
            }
            float fAbs = Math.abs(fE);
            float fMax = -3.4028235E38f;
            float fMin = Float.MAX_VALUE;
            float fMax2 = -3.4028235E38f;
            float fMin2 = Float.MAX_VALUE;
            for (int i19 = 0; i19 < childCount; i19++) {
                MotionController motionController7 = this.mFrameArrayList.get(getChildAt(i19));
                if (!Float.isNaN(motionController7.mMotionStagger)) {
                    for (int i20 = 0; i20 < childCount; i20++) {
                        MotionController motionController8 = this.mFrameArrayList.get(getChildAt(i20));
                        if (!Float.isNaN(motionController8.mMotionStagger)) {
                            fMin = Math.min(fMin, motionController8.mMotionStagger);
                            fMax = Math.max(fMax, motionController8.mMotionStagger);
                        }
                    }
                    while (i10 < childCount) {
                        MotionController motionController9 = this.mFrameArrayList.get(getChildAt(i10));
                        if (!Float.isNaN(motionController9.mMotionStagger)) {
                            motionController9.mStaggerScale = 1.0f / (1.0f - fAbs);
                            if (z6) {
                                motionController9.mStaggerOffset = fAbs - (((fMax - motionController9.mMotionStagger) / (fMax - fMin)) * fAbs);
                            } else {
                                motionController9.mStaggerOffset = fAbs - (((motionController9.mMotionStagger - fMin) * fAbs) / (fMax - fMin));
                            }
                        }
                        i10++;
                    }
                    return;
                }
                float fN = motionController7.n();
                float fO = motionController7.o();
                if (z6) {
                    f6 = fO - fN;
                } else {
                    f6 = fO + fN;
                }
                fMin2 = Math.min(fMin2, f6);
                fMax2 = Math.max(fMax2, f6);
            }
            while (i10 < childCount) {
                MotionController motionController10 = this.mFrameArrayList.get(getChildAt(i10));
                float fN2 = motionController10.n();
                float fO2 = motionController10.o();
                if (z6) {
                    f = fO2 - fN2;
                } else {
                    f = fO2 + fN2;
                }
                motionController10.mStaggerScale = 1.0f / (1.0f - fAbs);
                motionController10.mStaggerOffset = fAbs - (((f - fMin2) * fAbs) / (fMax2 - fMin2));
                i10++;
            }
        }
    }

    void G(boolean start) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            MotionController motionController = this.mFrameArrayList.get(getChildAt(i10));
            if (motionController != null) {
                motionController.f(start);
            }
        }
    }

    protected MotionTracker U() {
        return MyTracker.f();
    }

    public void Y(float pos, float velocity) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.e(pos);
            this.mStateCache.h(velocity);
            return;
        }
        setProgress(pos);
        setState(TransitionState.MOVING);
        this.mLastVelocity = velocity;
        float f = 0.0f;
        if (velocity != 0.0f) {
            if (velocity > 0.0f) {
                f = 1.0f;
            }
            z(f);
        } else if (pos != 0.0f && pos != 1.0f) {
            if (pos > 0.5f) {
                f = 1.0f;
            }
            z(f);
        }
    }

    public void Z(int beginId, int endId) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.f(beginId);
            this.mStateCache.d(endId);
            return;
        }
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            this.mBeginState = beginId;
            this.mEndState = endId;
            motionScene.X(beginId, endId);
            this.mModel.e(this.mLayoutWidget, this.mScene.l(beginId), this.mScene.l(endId));
            X();
            this.mTransitionLastPosition = 0.0f;
            f0();
        }
    }

    public void g0(int id) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.d(id);
            return;
        }
        i0(id, -1, -1);
    }

    protected long getNanoTime() {
        return System.nanoTime();
    }

    public void h0(int id, int duration) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.d(id);
            return;
        }
        j0(id, -1, -1, duration);
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return super.isAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        MotionScene.Transition transition;
        int i10;
        super.onAttachedToWindow();
        Display display = getDisplay();
        if (display != null) {
            this.mPreviouseRotation = display.getRotation();
        }
        MotionScene motionScene = this.mScene;
        if (motionScene != null && (i10 = this.mCurrentState) != -1) {
            ConstraintSet constraintSetL = motionScene.l(i10);
            this.mScene.T(this);
            ArrayList<MotionHelper> arrayList = this.mDecoratorsHelpers;
            if (arrayList != null) {
                Iterator<MotionHelper> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().A(this);
                }
            }
            if (constraintSetL != null) {
                constraintSetL.i(this);
            }
            this.mBeginState = this.mCurrentState;
        }
        V();
        StateCache stateCache = this.mStateCache;
        if (stateCache != null) {
            if (this.mDelayedApply) {
                post(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.4
                    @Override // java.lang.Runnable
                    public void run() {
                        MotionLayout.this.mStateCache.a();
                    }
                });
                return;
            } else {
                stateCache.a();
                return;
            }
        }
        MotionScene motionScene2 = this.mScene;
        if (motionScene2 != null && (transition = motionScene2.mCurrentTransition) != null && transition.x() == 4) {
            d0();
            setState(TransitionState.SETUP);
            setState(TransitionState.MOVING);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(@NonNull View child, @NonNull View target, int axes, int type) {
        this.mScrollTargetTime = getNanoTime();
        this.mScrollTargetDT = 0.0f;
        this.mScrollTargetDX = 0.0f;
        this.mScrollTargetDY = 0.0f;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof MotionHelper) {
            MotionHelper motionHelper = (MotionHelper) view;
            if (this.mTransitionListeners == null) {
                this.mTransitionListeners = new CopyOnWriteArrayList<>();
            }
            this.mTransitionListeners.add(motionHelper);
            if (motionHelper.z()) {
                if (this.mOnShowHelpers == null) {
                    this.mOnShowHelpers = new ArrayList<>();
                }
                this.mOnShowHelpers.add(motionHelper);
            }
            if (motionHelper.y()) {
                if (this.mOnHideHelpers == null) {
                    this.mOnHideHelpers = new ArrayList<>();
                }
                this.mOnHideHelpers.add(motionHelper);
            }
            if (motionHelper.x()) {
                if (this.mDecoratorsHelpers == null) {
                    this.mDecoratorsHelpers = new ArrayList<>();
                }
                this.mDecoratorsHelpers.add(motionHelper);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList<MotionHelper> arrayList = this.mOnShowHelpers;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList<MotionHelper> arrayList2 = this.mOnHideHelpers;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    void setStartState(int beginId) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.f(beginId);
            this.mStateCache.d(beginId);
            return;
        }
        this.mCurrentState = beginId;
    }

    @Override // android.view.View
    public String toString() {
        Context context = getContext();
        return Debug.c(context, this.mBeginState) + "->" + Debug.c(context, this.mEndState) + " (pos:" + this.mTransitionLastPosition + " Dpos/Dt:" + this.mLastVelocity;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void setState(int id, int screenWidth, int screenHeight) {
        setState(TransitionState.SETUP);
        this.mCurrentState = id;
        this.mBeginState = -1;
        this.mEndState = -1;
        ConstraintLayoutStates constraintLayoutStates = this.mConstraintLayoutSpec;
        if (constraintLayoutStates != null) {
            constraintLayoutStates.d(id, screenWidth, screenHeight);
            return;
        }
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.l(id).i(this);
        }
    }

    public MotionLayout(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.mProgressInterpolator = null;
        this.mLastVelocity = 0.0f;
        this.mBeginState = -1;
        this.mCurrentState = -1;
        this.mEndState = -1;
        this.mLastWidthMeasureSpec = 0;
        this.mLastHeightMeasureSpec = 0;
        this.mInteractionEnabled = true;
        this.mFrameArrayList = new HashMap<>();
        this.mAnimationStartTime = 0L;
        this.mTransitionDuration = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionGoalPosition = 0.0f;
        this.mInTransition = false;
        this.mIndirectTransition = false;
        this.mDebugPath = 0;
        this.mTemporalInterpolator = false;
        this.mStopLogic = new StopLogic();
        this.mDecelerateLogic = new DecelerateInterpolator();
        this.firstDown = true;
        this.mUndergoingMotion = false;
        this.mKeepAnimating = false;
        this.mOnShowHelpers = null;
        this.mOnHideHelpers = null;
        this.mDecoratorsHelpers = null;
        this.mTransitionListeners = null;
        this.mFrames = 0;
        this.mLastDrawTime = -1L;
        this.mLastFps = 0.0f;
        this.mListenerState = 0;
        this.mListenerPosition = 0.0f;
        this.mIsAnimating = false;
        this.mMeasureDuringTransition = false;
        this.mKeyCache = new KeyCache();
        this.mInLayout = false;
        this.mOnComplete = null;
        this.mScheduledTransitionTo = null;
        this.mScheduledTransitions = 0;
        this.mInRotation = false;
        this.mRotatMode = 0;
        this.mPreRotate = new HashMap<>();
        this.mTempRect = new Rect();
        this.mDelayedApply = false;
        this.mTransitionState = TransitionState.UNDEFINED;
        this.mModel = new Model();
        this.mNeedsFireTransitionCompleted = false;
        this.mBoundsCheck = new RectF();
        this.mRegionView = null;
        this.mInverseMatrix = null;
        this.mTransitionCompleted = new ArrayList<>();
        S(attrs);
    }

    protected void setTransition(MotionScene.Transition transition) {
        this.mScene.Y(transition);
        setState(TransitionState.SETUP);
        if (this.mCurrentState == this.mScene.q()) {
            this.mTransitionLastPosition = 1.0f;
            this.mTransitionPosition = 1.0f;
            this.mTransitionGoalPosition = 1.0f;
        } else {
            this.mTransitionLastPosition = 0.0f;
            this.mTransitionPosition = 0.0f;
            this.mTransitionGoalPosition = 0.0f;
        }
        this.mTransitionLastTime = transition.D(1) ? -1L : getNanoTime();
        int iF = this.mScene.F();
        int iQ = this.mScene.q();
        if (iF == this.mBeginState && iQ == this.mEndState) {
            return;
        }
        this.mBeginState = iF;
        this.mEndState = iQ;
        this.mScene.X(iF, iQ);
        this.mModel.e(this.mLayoutWidget, this.mScene.l(this.mBeginState), this.mScene.l(this.mEndState));
        this.mModel.i(this.mBeginState, this.mEndState);
        this.mModel.h();
        X();
    }

    public MotionLayout(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mProgressInterpolator = null;
        this.mLastVelocity = 0.0f;
        this.mBeginState = -1;
        this.mCurrentState = -1;
        this.mEndState = -1;
        this.mLastWidthMeasureSpec = 0;
        this.mLastHeightMeasureSpec = 0;
        this.mInteractionEnabled = true;
        this.mFrameArrayList = new HashMap<>();
        this.mAnimationStartTime = 0L;
        this.mTransitionDuration = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionGoalPosition = 0.0f;
        this.mInTransition = false;
        this.mIndirectTransition = false;
        this.mDebugPath = 0;
        this.mTemporalInterpolator = false;
        this.mStopLogic = new StopLogic();
        this.mDecelerateLogic = new DecelerateInterpolator();
        this.firstDown = true;
        this.mUndergoingMotion = false;
        this.mKeepAnimating = false;
        this.mOnShowHelpers = null;
        this.mOnHideHelpers = null;
        this.mDecoratorsHelpers = null;
        this.mTransitionListeners = null;
        this.mFrames = 0;
        this.mLastDrawTime = -1L;
        this.mLastFps = 0.0f;
        this.mListenerState = 0;
        this.mListenerPosition = 0.0f;
        this.mIsAnimating = false;
        this.mMeasureDuringTransition = false;
        this.mKeyCache = new KeyCache();
        this.mInLayout = false;
        this.mOnComplete = null;
        this.mScheduledTransitionTo = null;
        this.mScheduledTransitions = 0;
        this.mInRotation = false;
        this.mRotatMode = 0;
        this.mPreRotate = new HashMap<>();
        this.mTempRect = new Rect();
        this.mDelayedApply = false;
        this.mTransitionState = TransitionState.UNDEFINED;
        this.mModel = new Model();
        this.mNeedsFireTransitionCompleted = false;
        this.mBoundsCheck = new RectF();
        this.mRegionView = null;
        this.mInverseMatrix = null;
        this.mTransitionCompleted = new ArrayList<>();
        S(attrs);
    }
}
