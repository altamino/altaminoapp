package com.narvii.editor.cropping.dynamic;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.rebound.SimpleSpringListener;
import com.facebook.rebound.Spring;
import com.facebook.rebound.SpringConfig;
import com.facebook.rebound.SpringSystem;
import com.narvii.editor.cropping.dynamic.Utils;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SimpleEditorView.kt */
/* loaded from: classes2.dex */
public final class SimpleEditorView extends View {
    public static final Companion Companion = new Companion(null);
    private static final float INNER_BORDER = 7.0f;
    private static final String INNER_COLOR = "#F5A623";
    private static final float INNER_PAINT_WIDTH = 2.0f;
    private static final float INNER_RADIUS = 4.0f;
    private static final int OUTER_ALPHA = 36;
    private static final float OUTER_PAINT_WIDTH = 4.0f;
    private static final float OUTER_RADIUS = 8.0f;
    private HashMap _$_findViewCache;
    private final float diff;
    private boolean editorViewMoved;
    private IEditorViewTouchListener editorViewTouchListener;
    private final float innerRadius;
    private float leftBorder;
    private Paint mInnerPaint;
    private RectF mInnerRect;
    private Paint mOuterPaint;
    private RectF mOuterRectF;
    private Paint mShadowPaint;
    private int mVideoViewHeight;
    private int mVideoViewWidth;
    private final float outerRadius;
    private float rightBorder;
    private boolean showOuterRect;
    private SimpleGLSurfaceView simpleGlView;
    private Spring spring;
    private SpringSystem springSystem;
    private float startLeft;
    private Rect videoRect;

    /* compiled from: SimpleEditorView.kt */
    public interface IEditorViewTouchListener {

        /* compiled from: SimpleEditorView.kt */
        public static final class DefaultImpls {
            public static void onTouchDown(IEditorViewTouchListener iEditorViewTouchListener) {
            }

            public static void onTouchUp(IEditorViewTouchListener iEditorViewTouchListener) {
            }
        }

        void onTouchDown();

        void onTouchUp();
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

    public SimpleEditorView(Context context) {
        super(context);
        this.mInnerPaint = new Paint();
        this.mInnerRect = new RectF();
        Utils.Companion companion = Utils.Companion;
        Context context2 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        this.innerRadius = companion.dptopx(context2, 4.0f);
        this.mOuterPaint = new Paint();
        this.mOuterRectF = new RectF();
        Utils.Companion companion2 = Utils.Companion;
        Context context3 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        this.outerRadius = companion2.dptopx(context3, 8.0f);
        Utils.Companion companion3 = Utils.Companion;
        Context context4 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context4, "context");
        this.diff = companion3.dptopx(context4, 4.0f);
        this.videoRect = new Rect(0, 0, 0, 0);
        this.mShadowPaint = new Paint();
        this.mInnerPaint.setColor(Color.parseColor(INNER_COLOR));
        this.mInnerPaint.setAntiAlias(true);
        Paint paint = this.mInnerPaint;
        Utils.Companion companion4 = Utils.Companion;
        Context context5 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context5, "context");
        paint.setStrokeWidth(companion4.dptopx(context5, 2.0f));
        this.mInnerPaint.setStyle(Paint.Style.STROKE);
        this.mInnerRect.set(0.0f, 0.0f, 0.0f, 0.0f);
        this.mOuterPaint.setColor(Color.parseColor(INNER_COLOR));
        this.mOuterPaint.setAntiAlias(true);
        Paint paint2 = this.mOuterPaint;
        Utils.Companion companion5 = Utils.Companion;
        Context context6 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context6, "context");
        paint2.setStrokeWidth(companion5.dptopx(context6, 4.0f));
        this.mOuterPaint.setAlpha((int) 91.8f);
        this.mOuterPaint.setStyle(Paint.Style.STROKE);
        this.mOuterRectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        this.mShadowPaint.setColor(Color.parseColor("#55000000"));
        this.mShadowPaint.setAntiAlias(true);
        SpringSystem springSystemCreate = SpringSystem.create();
        Intrinsics.checkExpressionValueIsNotNull(springSystemCreate, "SpringSystem.create()");
        this.springSystem = springSystemCreate;
        Spring springCreateSpring = this.springSystem.createSpring();
        Intrinsics.checkExpressionValueIsNotNull(springCreateSpring, "springSystem.createSpring()");
        this.spring = springCreateSpring;
        this.spring.setSpringConfig(new SpringConfig(70.0d, 20.0d));
        this.spring.addListener(new SimpleSpringListener() { // from class: com.narvii.editor.cropping.dynamic.SimpleEditorView.1
            @Override // com.facebook.rebound.SimpleSpringListener, com.facebook.rebound.SpringListener
            public void onSpringUpdate(Spring spring) {
                Intrinsics.checkParameterIsNotNull(spring, "spring");
                SimpleEditorView.this.setBorderRect((float) spring.getCurrentValue());
                SimpleEditorView.this.invalidate();
            }
        });
    }

    public SimpleEditorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mInnerPaint = new Paint();
        this.mInnerRect = new RectF();
        Utils.Companion companion = Utils.Companion;
        Context context2 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        this.innerRadius = companion.dptopx(context2, 4.0f);
        this.mOuterPaint = new Paint();
        this.mOuterRectF = new RectF();
        Utils.Companion companion2 = Utils.Companion;
        Context context3 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        this.outerRadius = companion2.dptopx(context3, 8.0f);
        Utils.Companion companion3 = Utils.Companion;
        Context context4 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context4, "context");
        this.diff = companion3.dptopx(context4, 4.0f);
        this.videoRect = new Rect(0, 0, 0, 0);
        this.mShadowPaint = new Paint();
        this.mInnerPaint.setColor(Color.parseColor(INNER_COLOR));
        this.mInnerPaint.setAntiAlias(true);
        Paint paint = this.mInnerPaint;
        Utils.Companion companion4 = Utils.Companion;
        Context context5 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context5, "context");
        paint.setStrokeWidth(companion4.dptopx(context5, 2.0f));
        this.mInnerPaint.setStyle(Paint.Style.STROKE);
        this.mInnerRect.set(0.0f, 0.0f, 0.0f, 0.0f);
        this.mOuterPaint.setColor(Color.parseColor(INNER_COLOR));
        this.mOuterPaint.setAntiAlias(true);
        Paint paint2 = this.mOuterPaint;
        Utils.Companion companion5 = Utils.Companion;
        Context context6 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context6, "context");
        paint2.setStrokeWidth(companion5.dptopx(context6, 4.0f));
        this.mOuterPaint.setAlpha((int) 91.8f);
        this.mOuterPaint.setStyle(Paint.Style.STROKE);
        this.mOuterRectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        this.mShadowPaint.setColor(Color.parseColor("#55000000"));
        this.mShadowPaint.setAntiAlias(true);
        SpringSystem springSystemCreate = SpringSystem.create();
        Intrinsics.checkExpressionValueIsNotNull(springSystemCreate, "SpringSystem.create()");
        this.springSystem = springSystemCreate;
        Spring springCreateSpring = this.springSystem.createSpring();
        Intrinsics.checkExpressionValueIsNotNull(springCreateSpring, "springSystem.createSpring()");
        this.spring = springCreateSpring;
        this.spring.setSpringConfig(new SpringConfig(70.0d, 20.0d));
        this.spring.addListener(new SimpleSpringListener() { // from class: com.narvii.editor.cropping.dynamic.SimpleEditorView.1
            @Override // com.facebook.rebound.SimpleSpringListener, com.facebook.rebound.SpringListener
            public void onSpringUpdate(Spring spring) {
                Intrinsics.checkParameterIsNotNull(spring, "spring");
                SimpleEditorView.this.setBorderRect((float) spring.getCurrentValue());
                SimpleEditorView.this.invalidate();
            }
        });
    }

    public SimpleEditorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mInnerPaint = new Paint();
        this.mInnerRect = new RectF();
        Utils.Companion companion = Utils.Companion;
        Context context2 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        this.innerRadius = companion.dptopx(context2, 4.0f);
        this.mOuterPaint = new Paint();
        this.mOuterRectF = new RectF();
        Utils.Companion companion2 = Utils.Companion;
        Context context3 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context3, "context");
        this.outerRadius = companion2.dptopx(context3, 8.0f);
        Utils.Companion companion3 = Utils.Companion;
        Context context4 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context4, "context");
        this.diff = companion3.dptopx(context4, 4.0f);
        this.videoRect = new Rect(0, 0, 0, 0);
        this.mShadowPaint = new Paint();
        this.mInnerPaint.setColor(Color.parseColor(INNER_COLOR));
        this.mInnerPaint.setAntiAlias(true);
        Paint paint = this.mInnerPaint;
        Utils.Companion companion4 = Utils.Companion;
        Context context5 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context5, "context");
        paint.setStrokeWidth(companion4.dptopx(context5, 2.0f));
        this.mInnerPaint.setStyle(Paint.Style.STROKE);
        this.mInnerRect.set(0.0f, 0.0f, 0.0f, 0.0f);
        this.mOuterPaint.setColor(Color.parseColor(INNER_COLOR));
        this.mOuterPaint.setAntiAlias(true);
        Paint paint2 = this.mOuterPaint;
        Utils.Companion companion5 = Utils.Companion;
        Context context6 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context6, "context");
        paint2.setStrokeWidth(companion5.dptopx(context6, 4.0f));
        this.mOuterPaint.setAlpha((int) 91.8f);
        this.mOuterPaint.setStyle(Paint.Style.STROKE);
        this.mOuterRectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        this.mShadowPaint.setColor(Color.parseColor("#55000000"));
        this.mShadowPaint.setAntiAlias(true);
        SpringSystem springSystemCreate = SpringSystem.create();
        Intrinsics.checkExpressionValueIsNotNull(springSystemCreate, "SpringSystem.create()");
        this.springSystem = springSystemCreate;
        Spring springCreateSpring = this.springSystem.createSpring();
        Intrinsics.checkExpressionValueIsNotNull(springCreateSpring, "springSystem.createSpring()");
        this.spring = springCreateSpring;
        this.spring.setSpringConfig(new SpringConfig(70.0d, 20.0d));
        this.spring.addListener(new SimpleSpringListener() { // from class: com.narvii.editor.cropping.dynamic.SimpleEditorView.1
            @Override // com.facebook.rebound.SimpleSpringListener, com.facebook.rebound.SpringListener
            public void onSpringUpdate(Spring spring) {
                Intrinsics.checkParameterIsNotNull(spring, "spring");
                SimpleEditorView.this.setBorderRect((float) spring.getCurrentValue());
                SimpleEditorView.this.invalidate();
            }
        });
    }

    /* compiled from: SimpleEditorView.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final SimpleGLSurfaceView getSimpleGlView() {
        return this.simpleGlView;
    }

    public final void setSimpleGlView(SimpleGLSurfaceView simpleGLSurfaceView) {
        this.simpleGlView = simpleGLSurfaceView;
    }

    public final boolean getShowOuterRect() {
        return this.showOuterRect;
    }

    public final void setShowOuterRect(boolean z) {
        this.showOuterRect = z;
    }

    public final boolean getEditorViewMoved() {
        return this.editorViewMoved;
    }

    public final void setEditorViewMoved(boolean z) {
        this.editorViewMoved = z;
    }

    public final void setTensionAndFriction(int i, int i2) {
        this.spring.setSpringConfig(new SpringConfig(i, i2));
    }

    public final void setSize(float f, float f2, float f3, float f4) {
        this.mVideoViewWidth = (int) f2;
        this.mVideoViewHeight = (int) f;
        float f5 = 2;
        this.leftBorder = (f4 - f2) / f5;
        this.rightBorder = (f2 + f4) / f5;
        float f6 = (f / 16.0f) * 9.0f;
        float f7 = (f4 - f6) / f5;
        RectF rectF = this.mInnerRect;
        Utils.Companion companion = Utils.Companion;
        Context context = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        Utils.Companion companion2 = Utils.Companion;
        Context context2 = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context2, "context");
        rectF.set(f7, companion.dptopx(context, INNER_BORDER), f6 + f7, f3 - companion2.dptopx(context2, INNER_BORDER));
        RectF rectF2 = this.mOuterRectF;
        RectF rectF3 = this.mInnerRect;
        float f8 = rectF3.left;
        float f9 = this.diff;
        rectF2.set(f8 - f9, rectF3.top - f9, rectF3.right + f9, rectF3.bottom + f9);
        invalidate();
        Rect rect = this.videoRect;
        RectF rectF4 = this.mInnerRect;
        float f10 = rectF4.left;
        float f11 = this.leftBorder;
        rect.set((int) (f10 - f11), 0, (int) (rectF4.right - f11), this.mVideoViewHeight);
        setVideoEditorRect();
    }

    public final Rect getVideoRect() {
        return this.videoRect;
    }

    public final RectF getInnerRectF() {
        return this.mInnerRect;
    }

    public final void moveInnerRectToPos(float f) {
        if (!this.showOuterRect && Math.abs(this.videoRect.left - f) >= 0.01f) {
            Rect rect = this.videoRect;
            int i = (int) f;
            rect.set(i, rect.top, rect.width() + i, this.videoRect.bottom);
            RectF rectF = this.mInnerRect;
            float f2 = this.videoRect.left;
            float f3 = this.leftBorder;
            rectF.set(f2 + f3, rectF.top, r0.right + f3, rectF.bottom);
            postInvalidate();
            setVideoEditorRect();
        }
    }

    public final void setVideoEditorRect() {
        float f = (this.videoRect.left * 1.0f) / (this.rightBorder - this.leftBorder);
        SimpleGLSurfaceView simpleGLSurfaceView = this.simpleGlView;
        if (simpleGLSurfaceView != null) {
            simpleGLSurfaceView.setTransform(new float[]{f, 0.0f});
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (canvas != null) {
            RectF rectF = this.mInnerRect;
            float f = this.innerRadius;
            canvas.drawRoundRect(rectF, f, f, this.mInnerPaint);
        }
        if (this.showOuterRect && canvas != null) {
            RectF rectF2 = this.mOuterRectF;
            float f2 = this.outerRadius;
            canvas.drawRoundRect(rectF2, f2, f2, this.mOuterPaint);
        }
        if (canvas != null) {
            float f3 = this.leftBorder;
            RectF rectF3 = this.mInnerRect;
            canvas.drawRect(f3, rectF3.top, rectF3.left, rectF3.bottom, this.mShadowPaint);
        }
        if (canvas != null) {
            RectF rectF4 = this.mInnerRect;
            canvas.drawRect(rectF4.right, rectF4.top, this.rightBorder, rectF4.bottom, this.mShadowPaint);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Integer numValueOf = motionEvent != null ? Integer.valueOf(motionEvent.getAction()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            if (!this.mInnerRect.contains(motionEvent.getX(), motionEvent.getY())) {
                return false;
            }
            this.showOuterRect = true;
            IEditorViewTouchListener iEditorViewTouchListener = this.editorViewTouchListener;
            if (iEditorViewTouchListener != null) {
                iEditorViewTouchListener.onTouchDown();
            }
            this.startLeft = motionEvent.getX();
            this.spring.setCurrentValue(motionEvent.getX());
        } else if (numValueOf != null && numValueOf.intValue() == 2) {
            this.editorViewMoved = true;
            this.spring.setEndValue(motionEvent.getX());
        } else if (numValueOf != null && numValueOf.intValue() == 1) {
            this.showOuterRect = false;
            invalidate();
            IEditorViewTouchListener iEditorViewTouchListener2 = this.editorViewTouchListener;
            if (iEditorViewTouchListener2 != null) {
                iEditorViewTouchListener2.onTouchUp();
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setBorderRect(float f) {
        RectF rectF = this.mInnerRect;
        float f2 = rectF.left;
        float f3 = rectF.right;
        float f4 = this.startLeft;
        float fWidth = f2 + ((int) (f - f4));
        float fWidth2 = f3 + ((int) (f - f4));
        float f5 = this.leftBorder;
        if (fWidth < f5) {
            fWidth2 = f5 + rectF.width();
            fWidth = f5;
        }
        float f6 = this.rightBorder;
        if (fWidth2 > f6) {
            fWidth = f6 - this.mInnerRect.width();
        } else {
            f6 = fWidth2;
        }
        RectF rectF2 = this.mInnerRect;
        rectF2.set(fWidth, rectF2.top, f6, rectF2.bottom);
        RectF rectF3 = this.mOuterRectF;
        RectF rectF4 = this.mInnerRect;
        float f7 = rectF4.left;
        float f8 = this.diff;
        rectF3.set(f7 - f8, rectF4.top - f8, rectF4.right + f8, rectF4.bottom + f8);
        invalidate();
        Rect rect = this.videoRect;
        RectF rectF5 = this.mInnerRect;
        float f9 = rectF5.left;
        float f10 = this.leftBorder;
        rect.set((int) (f9 - f10), 0, (int) (rectF5.right - f10), this.mVideoViewHeight);
        setVideoEditorRect();
        this.startLeft = f;
    }

    public final IEditorViewTouchListener getEditorViewTouchListener() {
        return this.editorViewTouchListener;
    }

    public final void setEditorViewTouchListener(IEditorViewTouchListener iEditorViewTouchListener) {
        this.editorViewTouchListener = iEditorViewTouchListener;
    }
}
