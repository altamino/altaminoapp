package com.narvii.widget.histogram;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.util.Utils;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.histogram.HistogramItemConfig;
import com.narvii.widget.histogram.HistogramView;
import com.narvii.widget.histogram.HistogramView.DrawConfig;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt___CollectionsJvmKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: HistogramView.kt */
/* loaded from: classes3.dex */
public final class HistogramView extends View {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(HistogramView.class), "drawConfig", "getDrawConfig()Lcom/narvii/widget/histogram/HistogramView$DrawConfig;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(HistogramView.class), "percentageAnimator", "getPercentageAnimator()Landroid/animation/ValueAnimator;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(HistogramView.class), "textRect", "getTextRect()Landroid/graphics/Rect;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(HistogramView.class), "hintRect", "getHintRect()Landroid/graphics/Rect;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(HistogramView.class), "dateLabelRect", "getDateLabelRect()Landroid/graphics/Rect;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(HistogramView.class), "decimalFormatOne", "getDecimalFormatOne()Ljava/text/DecimalFormat;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(HistogramView.class), "onItemClickListeners", "getOnItemClickListeners()Ljava/util/ArrayList;"))};
    private HashMap _$_findViewCache;
    private final float[] backgroundLineLevels;
    private final NumberFormat coinFormat;
    private final Lazy dateLabelRect$delegate;
    private final Lazy decimalFormatOne$delegate;
    private final Lazy drawConfig$delegate;
    private final GestureDetector gestureDetector;
    private final HistogramView$gestureListener$1 gestureListener;
    private boolean hasEndDateMarked;
    private boolean hasStartDateMarked;
    private final Lazy hintRect$delegate;
    private final int hintViewHeight;
    private final int hintViewWidth;
    private ArrayList<HistogramItemConfig> itemConfigs;
    private final int itemCount;
    private final float labelTextSize;
    private final float labelTextSizeSmall;
    private final int labelViewSize;
    private int maxValue;
    private final Lazy onItemClickListeners$delegate;
    private final Lazy percentageAnimator$delegate;
    private ArrayList<Rect> rectList;
    private int selectedIndex;
    private ArrayList<HistogramItemConfig> tempItemConfigs;
    private final Lazy textRect$delegate;

    private final Rect getDateLabelRect() {
        Lazy lazy = this.dateLabelRect$delegate;
        KProperty kProperty = $$delegatedProperties[4];
        return (Rect) lazy.getValue();
    }

    private final DecimalFormat getDecimalFormatOne() {
        Lazy lazy = this.decimalFormatOne$delegate;
        KProperty kProperty = $$delegatedProperties[5];
        return (DecimalFormat) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DrawConfig getDrawConfig() {
        Lazy lazy = this.drawConfig$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (DrawConfig) lazy.getValue();
    }

    private final Rect getHintRect() {
        Lazy lazy = this.hintRect$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (Rect) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ArrayList<OnItemClickListener> getOnItemClickListeners() {
        Lazy lazy = this.onItemClickListeners$delegate;
        KProperty kProperty = $$delegatedProperties[6];
        return (ArrayList) lazy.getValue();
    }

    private final ValueAnimator getPercentageAnimator() {
        Lazy lazy = this.percentageAnimator$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (ValueAnimator) lazy.getValue();
    }

    private final Rect getTextRect() {
        Lazy lazy = this.textRect$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (Rect) lazy.getValue();
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

    /* JADX WARN: Type inference failed for: r3v32, types: [com.narvii.widget.histogram.HistogramView$gestureListener$1] */
    public HistogramView(Context context) {
        super(context);
        this.backgroundLineLevels = new float[]{0.0f, 0.25f, 0.5f, 0.75f, 1.0f};
        this.labelTextSize = getResources().getDimension(R.dimen.histogramTextSize);
        this.labelTextSizeSmall = getResources().getDimension(R.dimen.histogramTextSizeSmall);
        this.itemCount = 10;
        this.itemConfigs = new ArrayList<>();
        this.rectList = new ArrayList<>();
        this.selectedIndex = -1;
        this.labelViewSize = getResources().getDimensionPixelSize(R.dimen.histogramLabelViewSize);
        this.hintViewHeight = getResources().getDimensionPixelSize(R.dimen.histogramHintViewHeight);
        this.hintViewWidth = getResources().getDimensionPixelSize(R.dimen.histogramHintViewWidth);
        this.drawConfig$delegate = LazyKt__LazyJVMKt.lazy(new Function0<DrawConfig>() { // from class: com.narvii.widget.histogram.HistogramView$drawConfig$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final HistogramView.DrawConfig invoke() {
                HistogramView histogramView = this.this$0;
                return histogramView.new DrawConfig(histogramView.getBottom() - this.this$0.getPaddingBottom(), (this.this$0.getHeight() - this.this$0.getPaddingBottom()) - this.this$0.getPaddingTop());
            }
        });
        this.percentageAnimator$delegate = LazyKt__LazyJVMKt.lazy(HistogramView$percentageAnimator$2.INSTANCE);
        this.textRect$delegate = LazyKt__LazyJVMKt.lazy(HistogramView$textRect$2.INSTANCE);
        this.hintRect$delegate = LazyKt__LazyJVMKt.lazy(HistogramView$hintRect$2.INSTANCE);
        this.dateLabelRect$delegate = LazyKt__LazyJVMKt.lazy(HistogramView$dateLabelRect$2.INSTANCE);
        this.decimalFormatOne$delegate = LazyKt__LazyJVMKt.lazy(HistogramView$decimalFormatOne$2.INSTANCE);
        NumberFormat numberFormat = NumberFormat.getInstance();
        Intrinsics.checkExpressionValueIsNotNull(numberFormat, "NumberFormat.getInstance()");
        this.coinFormat = numberFormat;
        this.onItemClickListeners$delegate = LazyKt__LazyJVMKt.lazy(HistogramView$onItemClickListeners$2.INSTANCE);
        this.gestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.narvii.widget.histogram.HistogramView$gestureListener$1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                Rect rect;
                int x = (int) (motionEvent != null ? motionEvent.getX() : 0.5f);
                int y = (int) (motionEvent != null ? motionEvent.getY() : 0.5f);
                int i = 0;
                for (HistogramItemConfig histogramItemConfig : this.this$0.itemConfigs) {
                    if (histogramItemConfig != null && (rect = histogramItemConfig.displayRect) != null && rect.contains(x, y)) {
                        this.this$0.selectedIndex = i;
                        Iterator it = this.this$0.getOnItemClickListeners().iterator();
                        while (it.hasNext()) {
                            OnItemClickListener onItemClickListener = (OnItemClickListener) it.next();
                            double d = histogramItemConfig.totalValue;
                            Rect rect2 = histogramItemConfig.displayRect;
                            Intrinsics.checkExpressionValueIsNotNull(rect2, "it.displayRect");
                            onItemClickListener.onItemClick(d, rect2, i);
                        }
                        this.this$0.invalidate();
                        return true;
                    }
                    i++;
                }
                this.this$0.selectedIndex = -1;
                this.this$0.invalidate();
                return true;
            }
        };
        this.coinFormat.setRoundingMode(RoundingMode.FLOOR);
        this.coinFormat.setMaximumFractionDigits(2);
        this.gestureDetector = new GestureDetector(getContext(), this.gestureListener);
        getPercentageAnimator().setRepeatMode(1);
        getPercentageAnimator().setInterpolator(new DecelerateInterpolator());
        getPercentageAnimator().setDuration(1500L);
        getPercentageAnimator().addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.histogram.HistogramView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator animation) {
                HistogramView histogramView = HistogramView.this;
                DrawConfig drawConfig = histogramView.getDrawConfig();
                Intrinsics.checkExpressionValueIsNotNull(animation, "animation");
                Object animatedValue = animation.getAnimatedValue();
                if (animatedValue == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
                }
                drawConfig.setPercentage(((Float) animatedValue).floatValue());
                histogramView.invalidate();
            }
        });
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r3v32, types: [com.narvii.widget.histogram.HistogramView$gestureListener$1] */
    public HistogramView(Context context, AttributeSet attributes) {
        super(context, attributes);
        Intrinsics.checkParameterIsNotNull(attributes, "attributes");
        this.backgroundLineLevels = new float[]{0.0f, 0.25f, 0.5f, 0.75f, 1.0f};
        this.labelTextSize = getResources().getDimension(R.dimen.histogramTextSize);
        this.labelTextSizeSmall = getResources().getDimension(R.dimen.histogramTextSizeSmall);
        this.itemCount = 10;
        this.itemConfigs = new ArrayList<>();
        this.rectList = new ArrayList<>();
        this.selectedIndex = -1;
        this.labelViewSize = getResources().getDimensionPixelSize(R.dimen.histogramLabelViewSize);
        this.hintViewHeight = getResources().getDimensionPixelSize(R.dimen.histogramHintViewHeight);
        this.hintViewWidth = getResources().getDimensionPixelSize(R.dimen.histogramHintViewWidth);
        this.drawConfig$delegate = LazyKt__LazyJVMKt.lazy(new Function0<DrawConfig>() { // from class: com.narvii.widget.histogram.HistogramView$drawConfig$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final HistogramView.DrawConfig invoke() {
                HistogramView histogramView = this.this$0;
                return histogramView.new DrawConfig(histogramView.getBottom() - this.this$0.getPaddingBottom(), (this.this$0.getHeight() - this.this$0.getPaddingBottom()) - this.this$0.getPaddingTop());
            }
        });
        this.percentageAnimator$delegate = LazyKt__LazyJVMKt.lazy(HistogramView$percentageAnimator$2.INSTANCE);
        this.textRect$delegate = LazyKt__LazyJVMKt.lazy(HistogramView$textRect$2.INSTANCE);
        this.hintRect$delegate = LazyKt__LazyJVMKt.lazy(HistogramView$hintRect$2.INSTANCE);
        this.dateLabelRect$delegate = LazyKt__LazyJVMKt.lazy(HistogramView$dateLabelRect$2.INSTANCE);
        this.decimalFormatOne$delegate = LazyKt__LazyJVMKt.lazy(HistogramView$decimalFormatOne$2.INSTANCE);
        NumberFormat numberFormat = NumberFormat.getInstance();
        Intrinsics.checkExpressionValueIsNotNull(numberFormat, "NumberFormat.getInstance()");
        this.coinFormat = numberFormat;
        this.onItemClickListeners$delegate = LazyKt__LazyJVMKt.lazy(HistogramView$onItemClickListeners$2.INSTANCE);
        this.gestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.narvii.widget.histogram.HistogramView$gestureListener$1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                Rect rect;
                int x = (int) (motionEvent != null ? motionEvent.getX() : 0.5f);
                int y = (int) (motionEvent != null ? motionEvent.getY() : 0.5f);
                int i = 0;
                for (HistogramItemConfig histogramItemConfig : this.this$0.itemConfigs) {
                    if (histogramItemConfig != null && (rect = histogramItemConfig.displayRect) != null && rect.contains(x, y)) {
                        this.this$0.selectedIndex = i;
                        Iterator it = this.this$0.getOnItemClickListeners().iterator();
                        while (it.hasNext()) {
                            OnItemClickListener onItemClickListener = (OnItemClickListener) it.next();
                            double d = histogramItemConfig.totalValue;
                            Rect rect2 = histogramItemConfig.displayRect;
                            Intrinsics.checkExpressionValueIsNotNull(rect2, "it.displayRect");
                            onItemClickListener.onItemClick(d, rect2, i);
                        }
                        this.this$0.invalidate();
                        return true;
                    }
                    i++;
                }
                this.this$0.selectedIndex = -1;
                this.this$0.invalidate();
                return true;
            }
        };
        this.coinFormat.setRoundingMode(RoundingMode.FLOOR);
        this.coinFormat.setMaximumFractionDigits(2);
        this.gestureDetector = new GestureDetector(getContext(), this.gestureListener);
        getPercentageAnimator().setRepeatMode(1);
        getPercentageAnimator().setInterpolator(new DecelerateInterpolator());
        getPercentageAnimator().setDuration(1500L);
        getPercentageAnimator().addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.histogram.HistogramView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator animation) {
                HistogramView histogramView = HistogramView.this;
                DrawConfig drawConfig = histogramView.getDrawConfig();
                Intrinsics.checkExpressionValueIsNotNull(animation, "animation");
                Object animatedValue = animation.getAnimatedValue();
                if (animatedValue == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
                }
                drawConfig.setPercentage(((Float) animatedValue).floatValue());
                histogramView.invalidate();
            }
        });
    }

    @Override // android.view.View
    public void invalidate() {
        this.hasStartDateMarked = false;
        this.hasEndDateMarked = false;
        super.invalidate();
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        prepareRects(i + getPaddingLeft() + this.labelViewSize, i2 + getPaddingTop(), i3 - getPaddingRight(), i4 - getPaddingBottom());
        ArrayList<HistogramItemConfig> arrayList = this.tempItemConfigs;
        if (arrayList == null || getWidth() <= 0 || getHeight() <= 0 || arrayList.isEmpty()) {
            return;
        }
        processItemConfigs(arrayList);
        this.tempItemConfigs = null;
        getPercentageAnimator().start();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkParameterIsNotNull(canvas, "canvas");
        drawBackgroundLines(canvas);
        drawPillars(canvas);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (getPercentageAnimator().isRunning()) {
            getPercentageAnimator().cancel();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.gestureDetector.onTouchEvent(motionEvent) || super.onTouchEvent(motionEvent);
    }

    public final void setItemConfigs(ArrayList<HistogramItemConfig> itemConfigs) {
        Intrinsics.checkParameterIsNotNull(itemConfigs, "itemConfigs");
        if (getWidth() == 0 || getHeight() == 0) {
            this.tempItemConfigs = itemConfigs;
        } else {
            processItemConfigs(itemConfigs);
            getPercentageAnimator().start();
        }
    }

    public final boolean hasData() {
        return !this.itemConfigs.isEmpty();
    }

    public final void addOnItemClickListener(OnItemClickListener listener) {
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        getOnItemClickListeners().add(listener);
    }

    public final void removeOnItemClickListener(OnItemClickListener listener) {
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        getOnItemClickListeners().remove(listener);
    }

    private final void drawBackgroundLines(Canvas canvas) {
        int width;
        int paddingRight;
        float f = this.labelViewSize / 2.0f;
        float height = (((getHeight() - getPaddingTop()) - getPaddingBottom()) - this.labelViewSize) - f;
        float paddingLeft = Utils.isRtl() ? getPaddingLeft() : getPaddingLeft() + this.labelViewSize;
        if (Utils.isRtl()) {
            width = getWidth() - getPaddingRight();
            paddingRight = this.labelViewSize;
        } else {
            width = getWidth();
            paddingRight = getPaddingRight();
        }
        float f2 = width - paddingRight;
        int width2 = Utils.isRtl() ? (getWidth() - getPaddingRight()) - this.labelViewSize : getPaddingLeft();
        int width3 = Utils.isRtl() ? getWidth() - getPaddingRight() : getPaddingLeft() + this.labelViewSize;
        int i = this.maxValue;
        int i2 = i == 0 ? 100 : i;
        float[] fArr = this.backgroundLineLevels;
        int length = fArr.length;
        int i3 = 0;
        while (i3 < length) {
            float f3 = fArr[i3];
            float f4 = height * f3;
            int i4 = i3;
            int i5 = length;
            canvas.drawLine(paddingLeft, getPaddingTop() + f + f4, f2, getPaddingTop() + f + f4, getDrawConfig().getLinePaint());
            getTextRect().set(width2, getPaddingTop() + ((int) f4), width3, (int) (getPaddingTop() + f4 + this.labelViewSize));
            float f5 = (((getTextRect().bottom + getTextRect().top) - getDrawConfig().getLabelPaint().getFontMetricsInt().bottom) - getDrawConfig().getLabelPaint().getFontMetricsInt().top) / 2.0f;
            float f6 = i2 * (1 - f3);
            if (f6 > 99999) {
                getDrawConfig().getLabelPaint().setTextSize(this.labelTextSizeSmall);
            } else {
                getDrawConfig().getLabelPaint().setTextSize(this.labelTextSize);
            }
            canvas.drawText(getDecimalFormatOne().format(Float.valueOf(f6)), getTextRect().centerX(), f5, getDrawConfig().getLabelPaint());
            i3 = i4 + 1;
            length = i5;
        }
    }

    private final void drawDateLabel(Canvas canvas, HistogramItemConfig histogramItemConfig) {
        Rect dateLabelRect = getDateLabelRect();
        Rect rect = histogramItemConfig.displayRect;
        int i = rect.left;
        int i2 = rect.bottom;
        dateLabelRect.set(i, i2, rect.right, this.labelViewSize + i2);
        canvas.drawText(histogramItemConfig.getDateString("M/d"), Utils.isRtl() ? getDateLabelRect().left : getDateLabelRect().right, (((getDateLabelRect().bottom + getDateLabelRect().top) - getDrawConfig().getLabelPaint().getFontMetricsInt().bottom) - getDrawConfig().getLabelPaint().getFontMetricsInt().top) / 2.0f, getDrawConfig().getLabelPaint());
    }

    private final void drawPillars(Canvas canvas) {
        float curPercentage = getDrawConfig().getCurPercentage();
        HistogramItemConfig histogramItemConfig = null;
        int i = 0;
        for (HistogramItemConfig histogramItemConfig2 : this.itemConfigs) {
            if (histogramItemConfig2 != null) {
                HistogramItemConfig.ItemRectConfig rectToDraw = histogramItemConfig2.getRectToDraw(curPercentage, i == this.selectedIndex);
                Intrinsics.checkExpressionValueIsNotNull(rectToDraw, "it.getRectToDraw(percent…arIndex == selectedIndex)");
                if (!this.hasStartDateMarked) {
                    drawDateLabel(canvas, histogramItemConfig2);
                    this.hasStartDateMarked = true;
                } else if (!this.hasEndDateMarked && i == this.itemConfigs.size() - 1) {
                    drawDateLabel(canvas, histogramItemConfig2);
                    this.hasEndDateMarked = true;
                }
                Rect[] rectArr = rectToDraw.rectToDraw;
                Intrinsics.checkExpressionValueIsNotNull(rectArr, "itemRectConfig.rectToDraw");
                int length = rectArr.length;
                for (int i2 = 0; i2 < length; i2++) {
                    Rect rect = rectArr[i2];
                    if (rect != null) {
                        getDrawConfig().getPillarPaint().setColor(rectToDraw.paintColors[i2]);
                        canvas.drawRect(rect, getDrawConfig().getPillarPaint());
                    }
                }
                if (i == this.selectedIndex && curPercentage == 1.0f) {
                    histogramItemConfig = histogramItemConfig2;
                }
            }
            i++;
        }
        if (histogramItemConfig != null) {
            getHintRect().set(histogramItemConfig.displayRect.centerX() - (this.hintViewWidth / 2), (histogramItemConfig.displayRect.top - this.hintViewHeight) - Utils.dpToPxInt(getContext(), 5.0f), histogramItemConfig.displayRect.centerX() + (this.hintViewWidth / 2), histogramItemConfig.displayRect.top - Utils.dpToPxInt(getContext(), 5.0f));
            View viewFindViewById = getDrawConfig().getHintView().findViewById(R.id.hint_date);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "drawConfig.hintView.find…TextView>(R.id.hint_date)");
            ((TextView) viewFindViewById).setText(histogramItemConfig.getDateString("MMM d"));
            View viewFindViewById2 = getDrawConfig().getHintView().findViewById(R.id.hint_coins);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "drawConfig.hintView.find…extView>(R.id.hint_coins)");
            ((TextView) viewFindViewById2).setText(TextUtils.numberFormat.format(Integer.valueOf((int) histogramItemConfig.totalValue)));
            getDrawConfig().getHintView().measure(View.MeasureSpec.makeMeasureSpec(this.hintViewWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(this.hintViewHeight, 1073741824));
            getDrawConfig().getHintView().layout(getHintRect().left, getHintRect().top, getHintRect().right, getHintRect().bottom);
            canvas.save();
            canvas.translate(getHintRect().left, getHintRect().top);
            getDrawConfig().getHintView().draw(canvas);
            canvas.restore();
        }
    }

    private final void prepareRects(int i, int i2, int i3, int i4) {
        int width = Utils.isRtl() ? (getWidth() - getPaddingRight()) - this.labelViewSize : getPaddingLeft() + this.labelViewSize;
        double d = i3 - i;
        int i5 = this.itemCount;
        double d2 = i5 - 1;
        Double.isNaN(d2);
        double d3 = 1;
        Double.isNaN(d3);
        Double.isNaN(d);
        double d4 = d / ((d2 * 1.5d) + d3);
        double d5 = 0.5f;
        Double.isNaN(d5);
        int i6 = (int) (d4 + d5);
        int i7 = (int) ((i6 / 2) + 0.5f);
        float f = this.labelViewSize / 2.0f;
        for (int i8 = 0; i8 < i5; i8++) {
            if (Utils.isRtl()) {
                this.rectList.add(new Rect(width - i6, (int) (getPaddingTop() + f), width, ((getPaddingTop() + i4) - i2) - this.labelViewSize));
                width -= i6 + i7;
            } else {
                this.rectList.add(new Rect(width, (int) (getPaddingTop() + f), width + i6, ((getPaddingTop() + i4) - i2) - this.labelViewSize));
                width += i6 + i7;
            }
        }
    }

    private final void processItemConfigs(ArrayList<HistogramItemConfig> arrayList) {
        int i;
        this.maxValue = 0;
        Iterator<T> it = arrayList.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            double d = ((HistogramItemConfig) it.next()).totalValue;
            if (d >= this.maxValue) {
                this.selectedIndex = i2;
                double d2 = 0.5f;
                Double.isNaN(d2);
                this.maxValue = (int) (d + d2);
            }
            i2++;
        }
        if (this.maxValue == 0) {
            this.selectedIndex = -1;
        }
        this.maxValue = getFixedMaxValue(this.maxValue);
        this.itemConfigs.clear();
        int size = arrayList.size();
        int size2 = this.itemCount;
        if (size <= size2) {
            size2 = arrayList.size();
        }
        for (int i3 = 0; i3 < size2; i3++) {
            HistogramItemConfig histogramItemConfig = arrayList.get((arrayList.size() - 1) - i3);
            Intrinsics.checkExpressionValueIsNotNull(histogramItemConfig, "configs[configs.size - 1 - index]");
            HistogramItemConfig histogramItemConfig2 = histogramItemConfig;
            Rect rect = new Rect(this.rectList.get((this.itemCount - 1) - i3));
            if (this.maxValue == 0) {
                i = rect.bottom;
            } else {
                double d3 = rect.bottom;
                double dHeight = rect.height();
                double d4 = histogramItemConfig2.totalValue;
                double d5 = this.maxValue * 1.0f;
                Double.isNaN(d5);
                Double.isNaN(dHeight);
                Double.isNaN(d3);
                i = (int) (d3 - (dHeight * (d4 / d5)));
            }
            rect.top = i;
            histogramItemConfig2.setDisplayRect(rect);
            this.itemConfigs.add(histogramItemConfig2);
        }
        CollectionsKt___CollectionsJvmKt.reverse(this.itemConfigs);
    }

    private final int getFixedMaxValue(int i) {
        if (i <= 0) {
            return 0;
        }
        if (i <= 10) {
            return 10;
        }
        if (i < 100) {
            return ((i / 10) + 1) * 10;
        }
        if (i == 100) {
            return 100;
        }
        if (i < 1000) {
            return ((i / 100) + 1) * 100;
        }
        int iPow = (int) Math.pow(10.0d, Math.ceil(Math.log10(i)) - 2.0d);
        return i % iPow == 0 ? i : ((i / iPow) + 1) * iPow;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: HistogramView.kt */
    final class DrawConfig {
        private int bottom;
        private int curTop;
        private int height;
        private final View hintView;
        private float curPercentage = 0.01f;
        private final Paint linePaint = new Paint();
        private final Paint labelPaint = new Paint();
        private final Paint pillarPaint = new Paint();
        private final Paint hintBgPaint = new Paint();

        public DrawConfig(int i, int i2) {
            this.bottom = i;
            this.height = i2;
            this.curTop = this.bottom;
            View viewInflate = View.inflate(HistogramView.this.getContext(), R.layout.histogram_hint_view, null);
            Intrinsics.checkExpressionValueIsNotNull(viewInflate, "inflate(context, R.layou…istogram_hint_view, null)");
            this.hintView = viewInflate;
            this.hintView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            this.linePaint.setAntiAlias(true);
            this.linePaint.setStyle(Paint.Style.STROKE);
            this.linePaint.setColor(Color.parseColor("#F0F0F0"));
            this.linePaint.setStrokeWidth(4.0f);
            this.labelPaint.setAntiAlias(true);
            this.labelPaint.setColor(Color.parseColor("#B3B3B3"));
            this.labelPaint.setTextAlign(Utils.isRtl() ? Paint.Align.LEFT : Paint.Align.RIGHT);
            this.labelPaint.setTextSize(HistogramView.this.labelTextSize);
            this.pillarPaint.setAntiAlias(true);
            this.pillarPaint.setStyle(Paint.Style.FILL);
            this.hintBgPaint.setAntiAlias(true);
            this.hintBgPaint.setStyle(Paint.Style.FILL);
        }

        public final int getBottom() {
            return this.bottom;
        }

        public final int getHeight() {
            return this.height;
        }

        public final void setBottom(int i) {
            this.bottom = i;
        }

        public final void setHeight(int i) {
            this.height = i;
        }

        public final float getCurPercentage() {
            return this.curPercentage;
        }

        public final void setCurPercentage(float f) {
            this.curPercentage = f;
        }

        public final int getCurTop() {
            return this.curTop;
        }

        public final void setCurTop(int i) {
            this.curTop = i;
        }

        public final Paint getLinePaint() {
            return this.linePaint;
        }

        public final Paint getLabelPaint() {
            return this.labelPaint;
        }

        public final Paint getPillarPaint() {
            return this.pillarPaint;
        }

        public final Paint getHintBgPaint() {
            return this.hintBgPaint;
        }

        public final View getHintView() {
            return this.hintView;
        }

        public final void setPercentage(float f) {
            this.curPercentage = f;
            this.curTop = (int) ((this.bottom - (this.height * f)) + 0.5f);
        }
    }
}
