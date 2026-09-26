package com.narvii.video.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.collections.d0;
import kotlin.collections.m0;
import kotlin.collections.v;
import kotlin.collections.w;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.u0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes10.dex */
public final class MediaSpeedSelectView extends FrameLayout {
    private int animateCountLeft;
    private float animateStep;
    private final int backgroundColor;
    private float currentOffset;
    private final int cursorColor;
    private final float dp1;

    @NotNull
    private final RectF drawRectF;
    private boolean isAnimating;
    private float lastDownX;

    @Nullable
    private e8.l<? super Double, l0> onSpeedUpdateListener;

    @NotNull
    private final Paint paint;
    private final int scaleColor;
    private final float scaleInterval;

    @NotNull
    private final List<u<Double, Boolean>> scaleList;
    private final float scaleTextWidthHalf;
    private final int textColor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaSpeedSelectView(@NotNull Context context) {
        super(context);
        t.j(context, "context");
        this.drawRectF = new RectF();
        List<u<Double, Boolean>> listS = v.s(a0.a(Double.valueOf(0.1d), Boolean.TRUE));
        j8.i iVar = new j8.i(2, 40);
        ArrayList arrayList = new ArrayList(w.x(iVar, 10));
        Iterator<Integer> it = iVar.iterator();
        while (it.hasNext()) {
            int iNextInt = ((m0) it).nextInt();
            arrayList.add(a0.a(Double.valueOf(((double) iNextInt) / ((double) 10)), Boolean.valueOf(iNextInt % 5 == 0)));
        }
        listS.addAll(arrayList);
        this.scaleList = Utils.isRtl() ? d0.G0(listS) : listS;
        Paint paint = new Paint();
        this.paint = paint;
        paint.setDither(true);
        paint.setAntiAlias(true);
        this.backgroundColor = Color.parseColor("#FF222222");
        this.textColor = Color.parseColor("#CCFFFFFF");
        this.scaleColor = Color.parseColor("#CCD8D8D8");
        this.cursorColor = Color.parseColor("#FFFFBE17");
        float fDpToPx = Utils.dpToPx(getContext(), 1.0f);
        this.dp1 = fDpToPx;
        paint.setTextSize(11 * fDpToPx);
        this.scaleTextWidthHalf = paint.measureText("0.1x") / 2.0f;
        this.scaleInterval = fDpToPx * 10;
        setWillNotDraw(false);
    }

    @Nullable
    public final e8.l<Double, l0> getOnSpeedUpdateListener() {
        return this.onSpeedUpdateListener;
    }

    public final void setOnSpeedUpdateListener(@Nullable e8.l<? super Double, l0> lVar) {
        this.onSpeedUpdateListener = lVar;
    }

    private final void drawRoundLine(Canvas canvas, float f, float f6, float f7, float f10, Paint paint) {
        float strokeWidth = this.paint.getStrokeWidth() / 2;
        this.drawRectF.set(f - strokeWidth, f6 - strokeWidth, f7 + strokeWidth, f10 + strokeWidth);
        canvas.drawRoundRect(this.drawRectF, strokeWidth, strokeWidth, paint);
    }

    @Override // android.view.View
    protected void onDraw(@NotNull Canvas canvas) {
        t.j(canvas, "canvas");
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        this.paint.setColor(this.backgroundColor);
        float f = width;
        float f6 = height;
        float f7 = f6 * 1.0f;
        float f10 = 0.0f;
        this.drawRectF.set(0.0f, 0.0f, f * 1.0f, f7);
        canvas.drawRect(this.drawRectF, this.paint);
        int i10 = 0;
        for (Object obj : this.scaleList) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                v.w();
            }
            u uVar = (u) obj;
            float f11 = ((f / 2.0f) + (i10 * this.scaleInterval)) - this.currentOffset;
            float f12 = this.scaleTextWidthHalf;
            if (f11 + f12 >= f10 && f11 - f12 <= f) {
                if (((Boolean) uVar.d()).booleanValue()) {
                    this.paint.setColor(this.textColor);
                    u0 u0Var = u0.INSTANCE;
                    String str = String.format(Locale.US, "%.1fx", Arrays.copyOf(new Object[]{uVar.c()}, 1));
                    t.i(str, "format(...)");
                    canvas.drawText(str, f11 - this.scaleTextWidthHalf, (height / 2) - (15 * this.dp1), this.paint);
                }
                this.paint.setColor(this.scaleColor);
                this.paint.setStrokeWidth(this.dp1);
                float f13 = (((Boolean) uVar.d()).booleanValue() ? 15 : 6) * this.dp1;
                float f14 = 2;
                drawRoundLine(canvas, f11, (f6 - f13) / f14, f11, (f13 + f6) / f14, this.paint);
            }
            i10 = i11;
            f10 = 0.0f;
        }
        this.paint.setColor(this.cursorColor);
        this.paint.setStrokeWidth(2 * this.dp1);
        float f15 = f / 2.0f;
        drawRoundLine(canvas, f15, 0.0f, f15, f7, this.paint);
        if (this.isAnimating) {
            int i12 = this.animateCountLeft;
            if (i12 > 0) {
                this.animateCountLeft = i12 - 1;
                this.currentOffset += this.animateStep;
                invalidate();
            } else {
                this.isAnimating = false;
                try {
                    Object systemService = getContext().getSystemService("vibrator");
                    t.h(systemService, "null cannot be cast to non-null type android.os.Vibrator");
                    ((Vibrator) systemService).vibrate(20L);
                } catch (Exception unused) {
                }
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(@Nullable MotionEvent motionEvent) {
        Integer numValueOf = motionEvent != null ? Integer.valueOf(motionEvent.getActionMasked()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            this.isAnimating = false;
            this.lastDownX = motionEvent.getX();
        } else if (numValueOf != null && numValueOf.intValue() == 2) {
            float x6 = this.lastDownX - motionEvent.getX();
            this.lastDownX = motionEvent.getX();
            float f = this.currentOffset + x6;
            this.currentOffset = f;
            float fMax = Math.max(f, 0.0f);
            this.currentOffset = fMax;
            this.currentOffset = Math.min(fMax, (this.scaleList.size() - 1) * this.scaleInterval);
            invalidate();
        } else {
            int i10 = (int) (((double) (this.currentOffset / this.scaleInterval)) + 0.5d);
            if (i10 >= 0 && i10 < this.scaleList.size()) {
                double dDoubleValue = this.scaleList.get(i10).c().doubleValue();
                e8.l<? super Double, l0> lVar = this.onSpeedUpdateListener;
                if (lVar != null) {
                    lVar.invoke(Double.valueOf(dDoubleValue));
                }
            }
            this.animateCountLeft = 10;
            this.animateStep = ((i10 * this.scaleInterval) - this.currentOffset) / 10;
            this.isAnimating = true;
            invalidate();
        }
        return true;
    }

    public final void setSpeed(double d) {
        int i10 = 0;
        for (Object obj : this.scaleList) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                v.w();
            }
            if (Math.abs(((Number) ((u) obj).c()).doubleValue() - d) < 0.0010000000474974513d) {
                this.currentOffset = i10 * this.scaleInterval;
                invalidate();
                return;
            }
            i10 = i11;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaSpeedSelectView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        t.j(context, "context");
        this.drawRectF = new RectF();
        List<u<Double, Boolean>> listS = v.s(a0.a(Double.valueOf(0.1d), Boolean.TRUE));
        j8.i iVar = new j8.i(2, 40);
        ArrayList arrayList = new ArrayList(w.x(iVar, 10));
        Iterator<Integer> it = iVar.iterator();
        while (it.hasNext()) {
            int iNextInt = ((m0) it).nextInt();
            arrayList.add(a0.a(Double.valueOf(((double) iNextInt) / ((double) 10)), Boolean.valueOf(iNextInt % 5 == 0)));
        }
        listS.addAll(arrayList);
        this.scaleList = Utils.isRtl() ? d0.G0(listS) : listS;
        Paint paint = new Paint();
        this.paint = paint;
        paint.setDither(true);
        paint.setAntiAlias(true);
        this.backgroundColor = Color.parseColor("#FF222222");
        this.textColor = Color.parseColor("#CCFFFFFF");
        this.scaleColor = Color.parseColor("#CCD8D8D8");
        this.cursorColor = Color.parseColor("#FFFFBE17");
        float fDpToPx = Utils.dpToPx(getContext(), 1.0f);
        this.dp1 = fDpToPx;
        paint.setTextSize(11 * fDpToPx);
        this.scaleTextWidthHalf = paint.measureText("0.1x") / 2.0f;
        this.scaleInterval = fDpToPx * 10;
        setWillNotDraw(false);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaSpeedSelectView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
        this.drawRectF = new RectF();
        List<u<Double, Boolean>> listS = v.s(a0.a(Double.valueOf(0.1d), Boolean.TRUE));
        j8.i iVar = new j8.i(2, 40);
        ArrayList arrayList = new ArrayList(w.x(iVar, 10));
        Iterator<Integer> it = iVar.iterator();
        while (it.hasNext()) {
            int iNextInt = ((m0) it).nextInt();
            arrayList.add(a0.a(Double.valueOf(((double) iNextInt) / ((double) 10)), Boolean.valueOf(iNextInt % 5 == 0)));
        }
        listS.addAll(arrayList);
        this.scaleList = Utils.isRtl() ? d0.G0(listS) : listS;
        Paint paint = new Paint();
        this.paint = paint;
        paint.setDither(true);
        paint.setAntiAlias(true);
        this.backgroundColor = Color.parseColor("#FF222222");
        this.textColor = Color.parseColor("#CCFFFFFF");
        this.scaleColor = Color.parseColor("#CCD8D8D8");
        this.cursorColor = Color.parseColor("#FFFFBE17");
        float fDpToPx = Utils.dpToPx(getContext(), 1.0f);
        this.dp1 = fDpToPx;
        paint.setTextSize(11 * fDpToPx);
        this.scaleTextWidthHalf = paint.measureText("0.1x") / 2.0f;
        this.scaleInterval = fDpToPx * 10;
        setWillNotDraw(false);
    }
}
