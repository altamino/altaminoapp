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
import com.facebook.rebound.f;
import com.facebook.rebound.i;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class SimpleEditorView extends View {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final float INNER_BORDER = 7.0f;

    @NotNull
    private static final String INNER_COLOR = "#F5A623";
    private static final float INNER_PAINT_WIDTH = 2.0f;
    private static final float INNER_RADIUS = 4.0f;
    private static final int OUTER_ALPHA = 36;
    private static final float OUTER_PAINT_WIDTH = 4.0f;
    private static final float OUTER_RADIUS = 8.0f;
    private final float diff;
    private boolean editorViewMoved;

    @Nullable
    private IEditorViewTouchListener editorViewTouchListener;
    private final float innerRadius;
    private float leftBorder;

    @NotNull
    private Paint mInnerPaint;

    @NotNull
    private RectF mInnerRect;

    @NotNull
    private Paint mOuterPaint;

    @NotNull
    private RectF mOuterRectF;

    @NotNull
    private Paint mShadowPaint;
    private int mVideoViewHeight;
    private int mVideoViewWidth;
    private final float outerRadius;
    private float rightBorder;
    private boolean showOuterRect;

    @Nullable
    private SimpleGLSurfaceView simpleGlView;

    @NotNull
    private com.facebook.rebound.e spring;

    @NotNull
    private i springSystem;
    private float startLeft;

    @NotNull
    private Rect videoRect;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public interface IEditorViewTouchListener {

        public static final class DefaultImpls {
            public static void onTouchDown(@NotNull IEditorViewTouchListener iEditorViewTouchListener) {
            }

            public static void onTouchUp(@NotNull IEditorViewTouchListener iEditorViewTouchListener) {
            }
        }

        void onTouchDown();

        void onTouchUp();
    }

    public SimpleEditorView(@Nullable Context context) {
        super(context);
        this.mInnerPaint = new Paint();
        this.mInnerRect = new RectF();
        Utils.Companion companion = Utils.Companion;
        Context context2 = getContext();
        t.i(context2, "getContext(...)");
        this.innerRadius = companion.dptopx(context2, 4.0f);
        this.mOuterPaint = new Paint();
        this.mOuterRectF = new RectF();
        Context context3 = getContext();
        t.i(context3, "getContext(...)");
        this.outerRadius = companion.dptopx(context3, 8.0f);
        Context context4 = getContext();
        t.i(context4, "getContext(...)");
        this.diff = companion.dptopx(context4, 4.0f);
        this.videoRect = new Rect(0, 0, 0, 0);
        this.mShadowPaint = new Paint();
        this.mInnerPaint.setColor(Color.parseColor(INNER_COLOR));
        this.mInnerPaint.setAntiAlias(true);
        Paint paint = this.mInnerPaint;
        Context context5 = getContext();
        t.i(context5, "getContext(...)");
        paint.setStrokeWidth(companion.dptopx(context5, 2.0f));
        Paint paint2 = this.mInnerPaint;
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        this.mInnerRect.set(0.0f, 0.0f, 0.0f, 0.0f);
        this.mOuterPaint.setColor(Color.parseColor(INNER_COLOR));
        this.mOuterPaint.setAntiAlias(true);
        Paint paint3 = this.mOuterPaint;
        Context context6 = getContext();
        t.i(context6, "getContext(...)");
        paint3.setStrokeWidth(companion.dptopx(context6, 4.0f));
        this.mOuterPaint.setAlpha(91);
        this.mOuterPaint.setStyle(style);
        this.mOuterRectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        this.mShadowPaint.setColor(Color.parseColor("#55000000"));
        this.mShadowPaint.setAntiAlias(true);
        i iVarG = i.g();
        t.i(iVarG, "create(...)");
        this.springSystem = iVarG;
        com.facebook.rebound.e eVarC = iVarG.c();
        t.i(eVarC, "createSpring(...)");
        this.spring = eVarC;
        eVarC.r(new f(70.0d, 20.0d));
        this.spring.a(new com.facebook.rebound.d() { // from class: com.narvii.editor.cropping.dynamic.SimpleEditorView.1
            @Override // com.facebook.rebound.d, com.facebook.rebound.g
            public void onSpringUpdate(@NotNull com.facebook.rebound.e spring) {
                t.j(spring, "spring");
                SimpleEditorView.this.setBorderRect((float) spring.c());
                SimpleEditorView.this.invalidate();
            }
        });
    }

    public final boolean getEditorViewMoved() {
        return this.editorViewMoved;
    }

    @Nullable
    public final IEditorViewTouchListener getEditorViewTouchListener() {
        return this.editorViewTouchListener;
    }

    @NotNull
    public final RectF getInnerRectF() {
        return this.mInnerRect;
    }

    public final boolean getShowOuterRect() {
        return this.showOuterRect;
    }

    @Nullable
    public final SimpleGLSurfaceView getSimpleGlView() {
        return this.simpleGlView;
    }

    @NotNull
    public final Rect getVideoRect() {
        return this.videoRect;
    }

    public final void setEditorViewMoved(boolean z6) {
        this.editorViewMoved = z6;
    }

    public final void setEditorViewTouchListener(@Nullable IEditorViewTouchListener iEditorViewTouchListener) {
        this.editorViewTouchListener = iEditorViewTouchListener;
    }

    public final void setShowOuterRect(boolean z6) {
        this.showOuterRect = z6;
    }

    public final void setSimpleGlView(@Nullable SimpleGLSurfaceView simpleGLSurfaceView) {
        this.simpleGlView = simpleGLSurfaceView;
    }

    public final void setSize(float f, float f6, float f7, float f10) {
        this.mVideoViewWidth = (int) f6;
        this.mVideoViewHeight = (int) f;
        float f11 = 2;
        this.leftBorder = (f10 - f6) / f11;
        this.rightBorder = (f6 + f10) / f11;
        float f12 = (f / 16.0f) * 9.0f;
        float f13 = (f10 - f12) / f11;
        RectF rectF = this.mInnerRect;
        Utils.Companion companion = Utils.Companion;
        Context context = getContext();
        t.i(context, "getContext(...)");
        Context context2 = getContext();
        t.i(context2, "getContext(...)");
        rectF.set(f13, companion.dptopx(context, INNER_BORDER), f12 + f13, f7 - companion.dptopx(context2, INNER_BORDER));
        RectF rectF2 = this.mOuterRectF;
        RectF rectF3 = this.mInnerRect;
        float f14 = rectF3.left;
        float f15 = this.diff;
        rectF2.set(f14 - f15, rectF3.top - f15, rectF3.right + f15, rectF3.bottom + f15);
        invalidate();
        Rect rect = this.videoRect;
        RectF rectF4 = this.mInnerRect;
        float f16 = rectF4.left;
        float f17 = this.leftBorder;
        rect.set((int) (f16 - f17), 0, (int) (rectF4.right - f17), this.mVideoViewHeight);
        setVideoEditorRect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setBorderRect(float f) {
        RectF rectF = this.mInnerRect;
        float f6 = rectF.left;
        float f7 = rectF.right;
        float f10 = this.startLeft;
        float fWidth = f6 + ((int) (f - f10));
        float fWidth2 = f7 + ((int) (f - f10));
        float f11 = this.leftBorder;
        if (fWidth < f11) {
            fWidth2 = f11 + rectF.width();
            fWidth = f11;
        }
        float f12 = this.rightBorder;
        if (fWidth2 > f12) {
            fWidth = f12 - this.mInnerRect.width();
            fWidth2 = f12;
        }
        RectF rectF2 = this.mInnerRect;
        rectF2.set(fWidth, rectF2.top, fWidth2, rectF2.bottom);
        RectF rectF3 = this.mOuterRectF;
        RectF rectF4 = this.mInnerRect;
        float f13 = rectF4.left;
        float f14 = this.diff;
        rectF3.set(f13 - f14, rectF4.top - f14, rectF4.right + f14, rectF4.bottom + f14);
        invalidate();
        Rect rect = this.videoRect;
        RectF rectF5 = this.mInnerRect;
        float f15 = rectF5.left;
        float f16 = this.leftBorder;
        rect.set((int) (f15 - f16), 0, (int) (rectF5.right - f16), this.mVideoViewHeight);
        setVideoEditorRect();
        this.startLeft = f;
    }

    public final void moveInnerRectToPos(float f) {
        if (!this.showOuterRect && Math.abs(this.videoRect.left - f) >= 0.01f) {
            Rect rect = this.videoRect;
            int i10 = (int) f;
            rect.set(i10, rect.top, rect.width() + i10, this.videoRect.bottom);
            RectF rectF = this.mInnerRect;
            Rect rect2 = this.videoRect;
            float f6 = rect2.left;
            float f7 = this.leftBorder;
            rectF.set(f6 + f7, rectF.top, rect2.right + f7, rectF.bottom);
            postInvalidate();
            setVideoEditorRect();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(@Nullable MotionEvent motionEvent) {
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
            this.spring.m(motionEvent.getX());
        } else if (numValueOf != null && numValueOf.intValue() == 2) {
            this.editorViewMoved = true;
            this.spring.o(motionEvent.getX());
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

    public final void setTensionAndFriction(int i10, int i11) {
        this.spring.r(new f(i10, i11));
    }

    public final void setVideoEditorRect() {
        float f = (this.videoRect.left * 1.0f) / (this.rightBorder - this.leftBorder);
        SimpleGLSurfaceView simpleGLSurfaceView = this.simpleGlView;
        if (simpleGLSurfaceView != null) {
            simpleGLSurfaceView.setTransform(new float[]{f, 0.0f});
        }
    }

    @Override // android.view.View
    public void draw(@Nullable Canvas canvas) {
        super.draw(canvas);
        if (canvas != null) {
            RectF rectF = this.mInnerRect;
            float f = this.innerRadius;
            canvas.drawRoundRect(rectF, f, f, this.mInnerPaint);
        }
        if (this.showOuterRect && canvas != null) {
            RectF rectF2 = this.mOuterRectF;
            float f6 = this.outerRadius;
            canvas.drawRoundRect(rectF2, f6, f6, this.mOuterPaint);
        }
        if (canvas != null) {
            float f7 = this.leftBorder;
            RectF rectF3 = this.mInnerRect;
            canvas.drawRect(f7, rectF3.top, rectF3.left, rectF3.bottom, this.mShadowPaint);
        }
        if (canvas != null) {
            RectF rectF4 = this.mInnerRect;
            canvas.drawRect(rectF4.right, rectF4.top, this.rightBorder, rectF4.bottom, this.mShadowPaint);
        }
    }

    public SimpleEditorView(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mInnerPaint = new Paint();
        this.mInnerRect = new RectF();
        Utils.Companion companion = Utils.Companion;
        Context context2 = getContext();
        t.i(context2, "getContext(...)");
        this.innerRadius = companion.dptopx(context2, 4.0f);
        this.mOuterPaint = new Paint();
        this.mOuterRectF = new RectF();
        Context context3 = getContext();
        t.i(context3, "getContext(...)");
        this.outerRadius = companion.dptopx(context3, 8.0f);
        Context context4 = getContext();
        t.i(context4, "getContext(...)");
        this.diff = companion.dptopx(context4, 4.0f);
        this.videoRect = new Rect(0, 0, 0, 0);
        this.mShadowPaint = new Paint();
        this.mInnerPaint.setColor(Color.parseColor(INNER_COLOR));
        this.mInnerPaint.setAntiAlias(true);
        Paint paint = this.mInnerPaint;
        Context context5 = getContext();
        t.i(context5, "getContext(...)");
        paint.setStrokeWidth(companion.dptopx(context5, 2.0f));
        Paint paint2 = this.mInnerPaint;
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        this.mInnerRect.set(0.0f, 0.0f, 0.0f, 0.0f);
        this.mOuterPaint.setColor(Color.parseColor(INNER_COLOR));
        this.mOuterPaint.setAntiAlias(true);
        Paint paint3 = this.mOuterPaint;
        Context context6 = getContext();
        t.i(context6, "getContext(...)");
        paint3.setStrokeWidth(companion.dptopx(context6, 4.0f));
        this.mOuterPaint.setAlpha(91);
        this.mOuterPaint.setStyle(style);
        this.mOuterRectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        this.mShadowPaint.setColor(Color.parseColor("#55000000"));
        this.mShadowPaint.setAntiAlias(true);
        i iVarG = i.g();
        t.i(iVarG, "create(...)");
        this.springSystem = iVarG;
        com.facebook.rebound.e eVarC = iVarG.c();
        t.i(eVarC, "createSpring(...)");
        this.spring = eVarC;
        eVarC.r(new f(70.0d, 20.0d));
        this.spring.a(new com.facebook.rebound.d() { // from class: com.narvii.editor.cropping.dynamic.SimpleEditorView.1
            @Override // com.facebook.rebound.d, com.facebook.rebound.g
            public void onSpringUpdate(@NotNull com.facebook.rebound.e spring) {
                t.j(spring, "spring");
                SimpleEditorView.this.setBorderRect((float) spring.c());
                SimpleEditorView.this.invalidate();
            }
        });
    }

    public SimpleEditorView(@Nullable Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mInnerPaint = new Paint();
        this.mInnerRect = new RectF();
        Utils.Companion companion = Utils.Companion;
        Context context2 = getContext();
        t.i(context2, "getContext(...)");
        this.innerRadius = companion.dptopx(context2, 4.0f);
        this.mOuterPaint = new Paint();
        this.mOuterRectF = new RectF();
        Context context3 = getContext();
        t.i(context3, "getContext(...)");
        this.outerRadius = companion.dptopx(context3, 8.0f);
        Context context4 = getContext();
        t.i(context4, "getContext(...)");
        this.diff = companion.dptopx(context4, 4.0f);
        this.videoRect = new Rect(0, 0, 0, 0);
        this.mShadowPaint = new Paint();
        this.mInnerPaint.setColor(Color.parseColor(INNER_COLOR));
        this.mInnerPaint.setAntiAlias(true);
        Paint paint = this.mInnerPaint;
        Context context5 = getContext();
        t.i(context5, "getContext(...)");
        paint.setStrokeWidth(companion.dptopx(context5, 2.0f));
        Paint paint2 = this.mInnerPaint;
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        this.mInnerRect.set(0.0f, 0.0f, 0.0f, 0.0f);
        this.mOuterPaint.setColor(Color.parseColor(INNER_COLOR));
        this.mOuterPaint.setAntiAlias(true);
        Paint paint3 = this.mOuterPaint;
        Context context6 = getContext();
        t.i(context6, "getContext(...)");
        paint3.setStrokeWidth(companion.dptopx(context6, 4.0f));
        this.mOuterPaint.setAlpha(91);
        this.mOuterPaint.setStyle(style);
        this.mOuterRectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        this.mShadowPaint.setColor(Color.parseColor("#55000000"));
        this.mShadowPaint.setAntiAlias(true);
        i iVarG = i.g();
        t.i(iVarG, "create(...)");
        this.springSystem = iVarG;
        com.facebook.rebound.e eVarC = iVarG.c();
        t.i(eVarC, "createSpring(...)");
        this.spring = eVarC;
        eVarC.r(new f(70.0d, 20.0d));
        this.spring.a(new com.facebook.rebound.d() { // from class: com.narvii.editor.cropping.dynamic.SimpleEditorView.1
            @Override // com.facebook.rebound.d, com.facebook.rebound.g
            public void onSpringUpdate(@NotNull com.facebook.rebound.e spring) {
                t.j(spring, "spring");
                SimpleEditorView.this.setBorderRect((float) spring.c());
                SimpleEditorView.this.invalidate();
            }
        });
    }
}
