package com.narvii.video.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.IntRange;

/* compiled from: MediaSpeedSelectView.kt */
/* loaded from: classes3.dex */
public final class MediaSpeedSelectView extends FrameLayout {
    private HashMap _$_findViewCache;
    private int animateCountLeft;
    private float animateStep;
    private final int backgroundColor;
    private float currentOffset;
    private final int cursorColor;
    private final float dp1;
    private final RectF drawRectF;
    private boolean isAnimating;
    private float lastDownX;
    private Function1<? super Double, Unit> onSpeedUpdateListener;
    private final Paint paint;
    private final int scaleColor;
    private final float scaleInterval;
    private final List<Pair<Double, Boolean>> scaleList;
    private final float scaleTextWidthHalf;
    private final int textColor;

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

    public MediaSpeedSelectView(Context context) {
        super(context);
        this.drawRectF = new RectF();
        List<Pair<Double, Boolean>> listMutableListOf = CollectionsKt__CollectionsKt.mutableListOf(TuplesKt.to(Double.valueOf(0.1d), true));
        IntRange intRange = new IntRange(2, 40);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(intRange, 10));
        Iterator<Integer> it = intRange.iterator();
        while (it.hasNext()) {
            int iNextInt = ((IntIterator) it).nextInt();
            double d = iNextInt;
            double d2 = 10;
            Double.isNaN(d);
            Double.isNaN(d2);
            arrayList.add(TuplesKt.to(Double.valueOf(d / d2), Boolean.valueOf(iNextInt % 5 == 0)));
        }
        listMutableListOf.addAll(arrayList);
        this.scaleList = Utils.isRtl() ? CollectionsKt___CollectionsKt.reversed(listMutableListOf) : listMutableListOf;
        this.paint = new Paint();
        this.paint.setDither(true);
        this.paint.setAntiAlias(true);
        this.backgroundColor = Color.parseColor("#FF222222");
        this.textColor = Color.parseColor("#CCFFFFFF");
        this.scaleColor = Color.parseColor("#CCD8D8D8");
        this.cursorColor = Color.parseColor("#FFFFBE17");
        this.dp1 = Utils.dpToPx(getContext(), 1.0f);
        this.paint.setTextSize(this.dp1 * 11);
        this.scaleTextWidthHalf = this.paint.measureText("0.1x") / 2.0f;
        this.scaleInterval = this.dp1 * 10;
        setWillNotDraw(false);
    }

    public MediaSpeedSelectView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.drawRectF = new RectF();
        List<Pair<Double, Boolean>> listMutableListOf = CollectionsKt__CollectionsKt.mutableListOf(TuplesKt.to(Double.valueOf(0.1d), true));
        IntRange intRange = new IntRange(2, 40);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(intRange, 10));
        Iterator<Integer> it = intRange.iterator();
        while (it.hasNext()) {
            int iNextInt = ((IntIterator) it).nextInt();
            double d = iNextInt;
            double d2 = 10;
            Double.isNaN(d);
            Double.isNaN(d2);
            arrayList.add(TuplesKt.to(Double.valueOf(d / d2), Boolean.valueOf(iNextInt % 5 == 0)));
        }
        listMutableListOf.addAll(arrayList);
        this.scaleList = Utils.isRtl() ? CollectionsKt___CollectionsKt.reversed(listMutableListOf) : listMutableListOf;
        this.paint = new Paint();
        this.paint.setDither(true);
        this.paint.setAntiAlias(true);
        this.backgroundColor = Color.parseColor("#FF222222");
        this.textColor = Color.parseColor("#CCFFFFFF");
        this.scaleColor = Color.parseColor("#CCD8D8D8");
        this.cursorColor = Color.parseColor("#FFFFBE17");
        this.dp1 = Utils.dpToPx(getContext(), 1.0f);
        this.paint.setTextSize(this.dp1 * 11);
        this.scaleTextWidthHalf = this.paint.measureText("0.1x") / 2.0f;
        this.scaleInterval = this.dp1 * 10;
        setWillNotDraw(false);
    }

    public MediaSpeedSelectView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.drawRectF = new RectF();
        List<Pair<Double, Boolean>> listMutableListOf = CollectionsKt__CollectionsKt.mutableListOf(TuplesKt.to(Double.valueOf(0.1d), true));
        IntRange intRange = new IntRange(2, 40);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(intRange, 10));
        Iterator<Integer> it = intRange.iterator();
        while (it.hasNext()) {
            int iNextInt = ((IntIterator) it).nextInt();
            double d = iNextInt;
            double d2 = 10;
            Double.isNaN(d);
            Double.isNaN(d2);
            arrayList.add(TuplesKt.to(Double.valueOf(d / d2), Boolean.valueOf(iNextInt % 5 == 0)));
        }
        listMutableListOf.addAll(arrayList);
        this.scaleList = Utils.isRtl() ? CollectionsKt___CollectionsKt.reversed(listMutableListOf) : listMutableListOf;
        this.paint = new Paint();
        this.paint.setDither(true);
        this.paint.setAntiAlias(true);
        this.backgroundColor = Color.parseColor("#FF222222");
        this.textColor = Color.parseColor("#CCFFFFFF");
        this.scaleColor = Color.parseColor("#CCD8D8D8");
        this.cursorColor = Color.parseColor("#FFFFBE17");
        this.dp1 = Utils.dpToPx(getContext(), 1.0f);
        this.paint.setTextSize(this.dp1 * 11);
        this.scaleTextWidthHalf = this.paint.measureText("0.1x") / 2.0f;
        this.scaleInterval = this.dp1 * 10;
        setWillNotDraw(false);
    }

    public final Function1<Double, Unit> getOnSpeedUpdateListener() {
        return this.onSpeedUpdateListener;
    }

    public final void setOnSpeedUpdateListener(Function1<? super Double, Unit> function1) {
        this.onSpeedUpdateListener = function1;
    }

    public final void setSpeed(double d) {
        int i = 0;
        for (Object obj : this.scaleList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
                throw null;
            }
            if (Math.abs(((Number) ((Pair) obj).getFirst()).doubleValue() - d) < 0.001f) {
                this.currentOffset = i * this.scaleInterval;
                invalidate();
                return;
            }
            i = i2;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkParameterIsNotNull(canvas, "canvas");
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        this.paint.setColor(this.backgroundColor);
        float f = width;
        float f2 = height;
        float f3 = f2 * 1.0f;
        this.drawRectF.set(0.0f, 0.0f, f * 1.0f, f3);
        canvas.drawRect(this.drawRectF, this.paint);
        int i = 0;
        int i2 = 0;
        for (Object obj : this.scaleList) {
            int i3 = i2 + 1;
            if (i2 >= 0) {
                Pair pair = (Pair) obj;
                float f4 = ((f / 2.0f) + (i2 * this.scaleInterval)) - this.currentOffset;
                float f5 = this.scaleTextWidthHalf;
                if (f4 + f5 >= i && f4 - f5 <= f) {
                    if (((Boolean) pair.getSecond()).booleanValue()) {
                        this.paint.setColor(this.textColor);
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        Locale locale = Locale.US;
                        Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.US");
                        Object[] objArr = new Object[1];
                        objArr[i] = pair.getFirst();
                        String str = String.format(locale, "%.1fx", Arrays.copyOf(objArr, objArr.length));
                        Intrinsics.checkExpressionValueIsNotNull(str, "java.lang.String.format(locale, format, *args)");
                        canvas.drawText(str, f4 - this.scaleTextWidthHalf, (height / 2) - (15 * this.dp1), this.paint);
                    }
                    this.paint.setColor(this.scaleColor);
                    this.paint.setStrokeWidth(this.dp1);
                    float f6 = (((Boolean) pair.getSecond()).booleanValue() ? 15 : 6) * this.dp1;
                    float f7 = 2;
                    drawRoundLine(canvas, f4, (f2 - f6) / f7, f4, (f6 + f2) / f7, this.paint);
                }
                i2 = i3;
                i = 0;
            } else {
                CollectionsKt.throwIndexOverflow();
                throw null;
            }
        }
        this.paint.setColor(this.cursorColor);
        this.paint.setStrokeWidth(2 * this.dp1);
        float f8 = f / 2.0f;
        drawRoundLine(canvas, f8, 0.0f, f8, f3, this.paint);
        if (this.isAnimating) {
            int i4 = this.animateCountLeft;
            if (i4 > 0) {
                this.animateCountLeft = i4 - 1;
                this.currentOffset += this.animateStep;
                invalidate();
            } else {
                this.isAnimating = false;
                try {
                    Object systemService = getContext().getSystemService("vibrator");
                    if (systemService == null) {
                        throw new TypeCastException("null cannot be cast to non-null type android.os.Vibrator");
                    }
                    ((Vibrator) systemService).vibrate(20L);
                } catch (Exception unused) {
                }
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Integer numValueOf = motionEvent != null ? Integer.valueOf(motionEvent.getActionMasked()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            this.isAnimating = false;
            this.lastDownX = motionEvent.getX();
        } else if (numValueOf != null && numValueOf.intValue() == 2) {
            float x = this.lastDownX - motionEvent.getX();
            this.lastDownX = motionEvent.getX();
            this.currentOffset += x;
            this.currentOffset = Math.max(this.currentOffset, 0.0f);
            this.currentOffset = Math.min(this.currentOffset, (this.scaleList.size() - 1) * this.scaleInterval);
            invalidate();
        } else {
            double d = this.currentOffset / this.scaleInterval;
            Double.isNaN(d);
            int i = (int) (d + 0.5d);
            int size = this.scaleList.size();
            if (i >= 0 && size > i) {
                double dDoubleValue = this.scaleList.get(i).getFirst().doubleValue();
                Function1<? super Double, Unit> function1 = this.onSpeedUpdateListener;
                if (function1 != null) {
                    function1.invoke(Double.valueOf(dDoubleValue));
                }
            }
            this.animateCountLeft = 10;
            this.animateStep = ((i * this.scaleInterval) - this.currentOffset) / 10;
            this.isAnimating = true;
            invalidate();
        }
        return true;
    }

    private final void drawRoundLine(Canvas canvas, float f, float f2, float f3, float f4, Paint paint) {
        float strokeWidth = this.paint.getStrokeWidth() / 2;
        this.drawRectF.set(f - strokeWidth, f2 - strokeWidth, f3 + strokeWidth, f4 + strokeWidth);
        canvas.drawRoundRect(this.drawRectF, strokeWidth, strokeWidth, paint);
    }
}
