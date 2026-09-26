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
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.c0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes3.dex */
public final class HistogramView extends View {

    @NotNull
    private final float[] backgroundLineLevels;

    @NotNull
    private final NumberFormat coinFormat;

    @NotNull
    private final m dateLabelRect$delegate;

    @NotNull
    private final m decimalFormatOne$delegate;

    @NotNull
    private final m drawConfig$delegate;

    @NotNull
    private final GestureDetector gestureDetector;

    @NotNull
    private final HistogramView$gestureListener$1 gestureListener;
    private boolean hasEndDateMarked;
    private boolean hasStartDateMarked;

    @NotNull
    private final m hintRect$delegate;
    private final int hintViewHeight;
    private final int hintViewWidth;

    @NotNull
    private ArrayList<HistogramItemConfig> itemConfigs;
    private final int itemCount;
    private final float labelTextSize;
    private final float labelTextSizeSmall;
    private final int labelViewSize;
    private int maxValue;

    @NotNull
    private final m onItemClickListeners$delegate;

    @NotNull
    private final m percentageAnimator$delegate;

    @NotNull
    private ArrayList<Rect> rectList;
    private int selectedIndex;

    @Nullable
    private ArrayList<HistogramItemConfig> tempItemConfigs;

    @NotNull
    private final m textRect$delegate;

    /* JADX INFO: Access modifiers changed from: private */
    final class DrawConfig {
        private int bottom;
        private float curPercentage = 0.01f;
        private int curTop;
        private int height;

        @NotNull
        private final Paint hintBgPaint;

        @NotNull
        private final View hintView;

        @NotNull
        private final Paint labelPaint;

        @NotNull
        private final Paint linePaint;

        @NotNull
        private final Paint pillarPaint;

        public final int getBottom() {
            return this.bottom;
        }

        public final float getCurPercentage() {
            return this.curPercentage;
        }

        public final int getCurTop() {
            return this.curTop;
        }

        public final int getHeight() {
            return this.height;
        }

        @NotNull
        public final Paint getHintBgPaint() {
            return this.hintBgPaint;
        }

        @NotNull
        public final View getHintView() {
            return this.hintView;
        }

        @NotNull
        public final Paint getLabelPaint() {
            return this.labelPaint;
        }

        @NotNull
        public final Paint getLinePaint() {
            return this.linePaint;
        }

        @NotNull
        public final Paint getPillarPaint() {
            return this.pillarPaint;
        }

        public final void setBottom(int i10) {
            this.bottom = i10;
        }

        public final void setCurPercentage(float f) {
            this.curPercentage = f;
        }

        public final void setCurTop(int i10) {
            this.curTop = i10;
        }

        public final void setHeight(int i10) {
            this.height = i10;
        }

        public final void setPercentage(float f) {
            this.curPercentage = f;
            this.curTop = (int) ((this.bottom - (this.height * f)) + 0.5f);
        }

        public DrawConfig(int i10, int i11) {
            this.bottom = i10;
            this.height = i11;
            this.curTop = i10;
            Paint paint = new Paint();
            this.linePaint = paint;
            Paint paint2 = new Paint();
            this.labelPaint = paint2;
            Paint paint3 = new Paint();
            this.pillarPaint = paint3;
            Paint paint4 = new Paint();
            this.hintBgPaint = paint4;
            View viewInflate = View.inflate(HistogramView.this.getContext(), R.layout.histogram_hint_view, null);
            t.i(viewInflate, "inflate(...)");
            this.hintView = viewInflate;
            viewInflate.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint.setColor(Color.parseColor("#F0F0F0"));
            paint.setStrokeWidth(4.0f);
            paint2.setAntiAlias(true);
            paint2.setColor(Color.parseColor("#B3B3B3"));
            paint2.setTextAlign(Utils.isRtl() ? Paint.Align.LEFT : Paint.Align.RIGHT);
            paint2.setTextSize(HistogramView.this.labelTextSize);
            paint3.setAntiAlias(true);
            Paint.Style style = Paint.Style.FILL;
            paint3.setStyle(style);
            paint4.setAntiAlias(true);
            paint4.setStyle(style);
        }
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [android.view.GestureDetector$OnGestureListener, com.narvii.widget.histogram.HistogramView$gestureListener$1] */
    public HistogramView(@Nullable Context context) {
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
        this.drawConfig$delegate = o.a(new HistogramView$drawConfig$2(this));
        this.percentageAnimator$delegate = o.a(HistogramView$percentageAnimator$2.INSTANCE);
        this.textRect$delegate = o.a(HistogramView$textRect$2.INSTANCE);
        this.hintRect$delegate = o.a(HistogramView$hintRect$2.INSTANCE);
        this.dateLabelRect$delegate = o.a(HistogramView$dateLabelRect$2.INSTANCE);
        this.decimalFormatOne$delegate = o.a(HistogramView$decimalFormatOne$2.INSTANCE);
        NumberFormat numberFormat = NumberFormat.getInstance();
        t.i(numberFormat, "getInstance(...)");
        this.coinFormat = numberFormat;
        this.onItemClickListeners$delegate = o.a(HistogramView$onItemClickListeners$2.INSTANCE);
        ?? r1 = new GestureDetector.SimpleOnGestureListener() { // from class: com.narvii.widget.histogram.HistogramView$gestureListener$1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(@NotNull MotionEvent e) {
                t.j(e, "e");
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(@NotNull MotionEvent e) {
                t.j(e, "e");
                int x6 = (int) e.getX();
                int y6 = (int) e.getY();
                int i10 = 0;
                for (HistogramItemConfig histogramItemConfig : this.this$0.itemConfigs) {
                    int i11 = i10 + 1;
                    if (histogramItemConfig != null) {
                        HistogramView histogramView = this.this$0;
                        Rect rect = histogramItemConfig.displayRect;
                        if (rect != null && rect.contains(x6, y6)) {
                            histogramView.selectedIndex = i10;
                            for (OnItemClickListener onItemClickListener : histogramView.getOnItemClickListeners()) {
                                double d = histogramItemConfig.totalValue;
                                Rect displayRect = histogramItemConfig.displayRect;
                                t.i(displayRect, "displayRect");
                                onItemClickListener.onItemClick(d, displayRect, i10);
                            }
                            histogramView.invalidate();
                            return true;
                        }
                    }
                    i10 = i11;
                }
                this.this$0.selectedIndex = -1;
                this.this$0.invalidate();
                return true;
            }
        };
        this.gestureListener = r1;
        numberFormat.setRoundingMode(RoundingMode.FLOOR);
        numberFormat.setMaximumFractionDigits(2);
        this.gestureDetector = new GestureDetector(getContext(), (GestureDetector.OnGestureListener) r1);
        getPercentageAnimator().setRepeatMode(1);
        getPercentageAnimator().setInterpolator(new DecelerateInterpolator());
        getPercentageAnimator().setDuration(1500L);
        getPercentageAnimator().addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.histogram.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                HistogramView._init_$lambda$1(this.f3078a, valueAnimator);
            }
        });
    }

    private final void processItemConfigs(ArrayList<HistogramItemConfig> arrayList) {
        this.maxValue = 0;
        Iterator<HistogramItemConfig> it = arrayList.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            int i11 = i10 + 1;
            double d = it.next().totalValue;
            if (d >= this.maxValue) {
                this.selectedIndex = i10;
                this.maxValue = (int) (d + ((double) 0.5f));
            }
            i10 = i11;
        }
        int i12 = this.maxValue;
        if (i12 == 0) {
            this.selectedIndex = -1;
        }
        this.maxValue = getFixedMaxValue(i12);
        this.itemConfigs.clear();
        int size = arrayList.size();
        int size2 = this.itemCount;
        if (size <= size2) {
            size2 = arrayList.size();
        }
        for (int i13 = 0; i13 < size2; i13++) {
            HistogramItemConfig histogramItemConfig = arrayList.get((arrayList.size() - 1) - i13);
            t.i(histogramItemConfig, "get(...)");
            HistogramItemConfig histogramItemConfig2 = histogramItemConfig;
            Rect rect = new Rect(this.rectList.get((this.itemCount - 1) - i13));
            rect.top = this.maxValue == 0 ? rect.bottom : (int) (((double) rect.bottom) - (((double) rect.height()) * (histogramItemConfig2.totalValue / ((double) (this.maxValue * 1.0f)))));
            histogramItemConfig2.setDisplayRect(rect);
            this.itemConfigs.add(histogramItemConfig2);
        }
        c0.X(this.itemConfigs);
    }

    @Override // android.view.View
    public void invalidate() {
        this.hasStartDateMarked = false;
        this.hasEndDateMarked = false;
        super.invalidate();
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
        float f6 = width - paddingRight;
        int width2 = Utils.isRtl() ? (getWidth() - getPaddingRight()) - this.labelViewSize : getPaddingLeft();
        int width3 = Utils.isRtl() ? getWidth() - getPaddingRight() : getPaddingLeft() + this.labelViewSize;
        int i10 = this.maxValue;
        if (i10 == 0) {
            i10 = 100;
        }
        int i11 = i10;
        float[] fArr = this.backgroundLineLevels;
        int length = fArr.length;
        int i12 = 0;
        while (i12 < length) {
            float f7 = fArr[i12];
            float f10 = height * f7;
            int i13 = i12;
            int i14 = length;
            canvas.drawLine(paddingLeft, getPaddingTop() + f + f10, f6, getPaddingTop() + f + f10, getDrawConfig().getLinePaint());
            getTextRect().set(width2, getPaddingTop() + ((int) f10), width3, (int) (getPaddingTop() + f10 + this.labelViewSize));
            float f11 = (((getTextRect().bottom + getTextRect().top) - getDrawConfig().getLabelPaint().getFontMetricsInt().bottom) - getDrawConfig().getLabelPaint().getFontMetricsInt().top) / 2.0f;
            float f12 = i11 * (1 - f7);
            if (f12 > 99999.0f) {
                getDrawConfig().getLabelPaint().setTextSize(this.labelTextSizeSmall);
            } else {
                getDrawConfig().getLabelPaint().setTextSize(this.labelTextSize);
            }
            canvas.drawText(getDecimalFormatOne().format(Float.valueOf(f12)), getTextRect().centerX(), f11, getDrawConfig().getLabelPaint());
            i12 = i13 + 1;
            length = i14;
        }
    }

    private final Rect getDateLabelRect() {
        return (Rect) this.dateLabelRect$delegate.getValue();
    }

    private final DecimalFormat getDecimalFormatOne() {
        return (DecimalFormat) this.decimalFormatOne$delegate.getValue();
    }

    private final DrawConfig getDrawConfig() {
        return (DrawConfig) this.drawConfig$delegate.getValue();
    }

    private final int getFixedMaxValue(int i10) {
        if (i10 <= 0) {
            return 0;
        }
        if (i10 <= 10) {
            return 10;
        }
        if (i10 < 100) {
            return ((i10 / 10) + 1) * 10;
        }
        if (i10 == 100) {
            return 100;
        }
        if (i10 < 1000) {
            return ((i10 / 100) + 1) * 100;
        }
        int iPow = (int) Math.pow(10.0d, Math.ceil(Math.log10(i10)) - 2.0d);
        return i10 % iPow == 0 ? i10 : ((i10 / iPow) + 1) * iPow;
    }

    private final Rect getHintRect() {
        return (Rect) this.hintRect$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ArrayList<OnItemClickListener> getOnItemClickListeners() {
        return (ArrayList) this.onItemClickListeners$delegate.getValue();
    }

    private final ValueAnimator getPercentageAnimator() {
        Object value = this.percentageAnimator$delegate.getValue();
        t.i(value, "getValue(...)");
        return (ValueAnimator) value;
    }

    private final Rect getTextRect() {
        return (Rect) this.textRect$delegate.getValue();
    }

    public final void addOnItemClickListener(@NotNull OnItemClickListener listener) {
        t.j(listener, "listener");
        getOnItemClickListeners().add(listener);
    }

    public final boolean hasData() {
        return !this.itemConfigs.isEmpty();
    }

    @Override // android.view.View
    protected void onDraw(@NotNull Canvas canvas) {
        t.j(canvas, "canvas");
        drawBackgroundLines(canvas);
        drawPillars(canvas);
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        t.j(event, "event");
        return this.gestureDetector.onTouchEvent(event) || super.onTouchEvent(event);
    }

    public final void removeOnItemClickListener(@NotNull OnItemClickListener listener) {
        t.j(listener, "listener");
        getOnItemClickListeners().remove(listener);
    }

    public final void setItemConfigs(@NotNull ArrayList<HistogramItemConfig> itemConfigs) {
        t.j(itemConfigs, "itemConfigs");
        if (getWidth() == 0 || getHeight() == 0) {
            this.tempItemConfigs = itemConfigs;
        } else {
            processItemConfigs(itemConfigs);
            getPercentageAnimator().start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$1(HistogramView this$0, ValueAnimator animation) {
        t.j(this$0, "this$0");
        t.j(animation, "animation");
        DrawConfig drawConfig = this$0.getDrawConfig();
        Object animatedValue = animation.getAnimatedValue();
        t.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        drawConfig.setPercentage(((Float) animatedValue).floatValue());
        this$0.invalidate();
    }

    private final void drawDateLabel(Canvas canvas, HistogramItemConfig histogramItemConfig) {
        int i10;
        Rect dateLabelRect = getDateLabelRect();
        Rect rect = histogramItemConfig.displayRect;
        int i11 = rect.left;
        int i12 = rect.bottom;
        dateLabelRect.set(i11, i12, rect.right, this.labelViewSize + i12);
        float f = (((getDateLabelRect().bottom + getDateLabelRect().top) - getDrawConfig().getLabelPaint().getFontMetricsInt().bottom) - getDrawConfig().getLabelPaint().getFontMetricsInt().top) / 2.0f;
        String dateString = histogramItemConfig.getDateString("M/d");
        if (Utils.isRtl()) {
            i10 = getDateLabelRect().left;
        } else {
            i10 = getDateLabelRect().right;
        }
        canvas.drawText(dateString, i10, f, getDrawConfig().getLabelPaint());
    }

    private final void drawPillars(Canvas canvas) {
        boolean z6;
        float curPercentage = getDrawConfig().getCurPercentage();
        HistogramItemConfig histogramItemConfig = null;
        int i10 = 0;
        for (HistogramItemConfig histogramItemConfig2 : this.itemConfigs) {
            int i11 = i10 + 1;
            if (histogramItemConfig2 != null) {
                if (i10 == this.selectedIndex) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                HistogramItemConfig.ItemRectConfig rectToDraw = histogramItemConfig2.getRectToDraw(curPercentage, z6);
                t.i(rectToDraw, "getRectToDraw(...)");
                if (!this.hasStartDateMarked) {
                    drawDateLabel(canvas, histogramItemConfig2);
                    this.hasStartDateMarked = true;
                } else if (!this.hasEndDateMarked && i10 == this.itemConfigs.size() - 1) {
                    drawDateLabel(canvas, histogramItemConfig2);
                    this.hasEndDateMarked = true;
                }
                Rect[] rectToDraw2 = rectToDraw.rectToDraw;
                t.i(rectToDraw2, "rectToDraw");
                int length = rectToDraw2.length;
                for (int i12 = 0; i12 < length; i12++) {
                    Rect rect = rectToDraw2[i12];
                    if (rect != null) {
                        t.g(rect);
                        getDrawConfig().getPillarPaint().setColor(rectToDraw.paintColors[i12]);
                        canvas.drawRect(rect, getDrawConfig().getPillarPaint());
                    }
                }
                if (i10 == this.selectedIndex && curPercentage == 1.0f) {
                    histogramItemConfig = histogramItemConfig2;
                }
            }
            i10 = i11;
        }
        if (histogramItemConfig != null) {
            getHintRect().set(histogramItemConfig.displayRect.centerX() - (this.hintViewWidth / 2), (histogramItemConfig.displayRect.top - this.hintViewHeight) - Utils.dpToPxInt(getContext(), 5.0f), histogramItemConfig.displayRect.centerX() + (this.hintViewWidth / 2), histogramItemConfig.displayRect.top - Utils.dpToPxInt(getContext(), 5.0f));
            ((TextView) getDrawConfig().getHintView().findViewById(R.id.hint_date)).setText(histogramItemConfig.getDateString("MMM d"));
            ((TextView) getDrawConfig().getHintView().findViewById(R.id.hint_coins)).setText(TextUtils.numberFormat.format(Integer.valueOf((int) histogramItemConfig.totalValue)));
            getDrawConfig().getHintView().measure(View.MeasureSpec.makeMeasureSpec(this.hintViewWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(this.hintViewHeight, 1073741824));
            getDrawConfig().getHintView().layout(getHintRect().left, getHintRect().top, getHintRect().right, getHintRect().bottom);
            canvas.save();
            canvas.translate(getHintRect().left, getHintRect().top);
            getDrawConfig().getHintView().draw(canvas);
            canvas.restore();
        }
    }

    private final void prepareRects(int i10, int i11, int i12, int i13) {
        int paddingLeft;
        if (Utils.isRtl()) {
            paddingLeft = (getWidth() - getPaddingRight()) - this.labelViewSize;
        } else {
            paddingLeft = getPaddingLeft() + this.labelViewSize;
        }
        double d = i12 - i10;
        int i14 = this.itemCount;
        int i15 = (int) ((d / ((((double) (i14 - 1)) * 1.5d) + ((double) 1))) + ((double) 0.5f));
        int i16 = (int) ((i15 / 2) + 0.5f);
        float f = this.labelViewSize / 2.0f;
        for (int i17 = 0; i17 < i14; i17++) {
            if (Utils.isRtl()) {
                this.rectList.add(new Rect(paddingLeft - i15, (int) (getPaddingTop() + f), paddingLeft, ((getPaddingTop() + i13) - i11) - this.labelViewSize));
                paddingLeft -= i15 + i16;
            } else {
                this.rectList.add(new Rect(paddingLeft, (int) (getPaddingTop() + f), paddingLeft + i15, ((getPaddingTop() + i13) - i11) - this.labelViewSize));
                paddingLeft += i15 + i16;
            }
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (getPercentageAnimator().isRunning()) {
            getPercentageAnimator().cancel();
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        prepareRects(i10 + getPaddingLeft() + this.labelViewSize, i11 + getPaddingTop(), i12 - getPaddingRight(), i13 - getPaddingBottom());
        ArrayList<HistogramItemConfig> arrayList = this.tempItemConfigs;
        if (arrayList != null && getWidth() > 0 && getHeight() > 0 && !arrayList.isEmpty()) {
            processItemConfigs(arrayList);
            this.tempItemConfigs = null;
            getPercentageAnimator().start();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r4v9, types: [android.view.GestureDetector$OnGestureListener, com.narvii.widget.histogram.HistogramView$gestureListener$1] */
    public HistogramView(@Nullable Context context, @NotNull AttributeSet attributes) {
        super(context, attributes);
        t.j(attributes, "attributes");
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
        this.drawConfig$delegate = o.a(new HistogramView$drawConfig$2(this));
        this.percentageAnimator$delegate = o.a(HistogramView$percentageAnimator$2.INSTANCE);
        this.textRect$delegate = o.a(HistogramView$textRect$2.INSTANCE);
        this.hintRect$delegate = o.a(HistogramView$hintRect$2.INSTANCE);
        this.dateLabelRect$delegate = o.a(HistogramView$dateLabelRect$2.INSTANCE);
        this.decimalFormatOne$delegate = o.a(HistogramView$decimalFormatOne$2.INSTANCE);
        NumberFormat numberFormat = NumberFormat.getInstance();
        t.i(numberFormat, "getInstance(...)");
        this.coinFormat = numberFormat;
        this.onItemClickListeners$delegate = o.a(HistogramView$onItemClickListeners$2.INSTANCE);
        ?? r5 = new GestureDetector.SimpleOnGestureListener() { // from class: com.narvii.widget.histogram.HistogramView$gestureListener$1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(@NotNull MotionEvent e) {
                t.j(e, "e");
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(@NotNull MotionEvent e) {
                t.j(e, "e");
                int x6 = (int) e.getX();
                int y6 = (int) e.getY();
                int i10 = 0;
                for (HistogramItemConfig histogramItemConfig : this.this$0.itemConfigs) {
                    int i11 = i10 + 1;
                    if (histogramItemConfig != null) {
                        HistogramView histogramView = this.this$0;
                        Rect rect = histogramItemConfig.displayRect;
                        if (rect != null && rect.contains(x6, y6)) {
                            histogramView.selectedIndex = i10;
                            for (OnItemClickListener onItemClickListener : histogramView.getOnItemClickListeners()) {
                                double d = histogramItemConfig.totalValue;
                                Rect displayRect = histogramItemConfig.displayRect;
                                t.i(displayRect, "displayRect");
                                onItemClickListener.onItemClick(d, displayRect, i10);
                            }
                            histogramView.invalidate();
                            return true;
                        }
                    }
                    i10 = i11;
                }
                this.this$0.selectedIndex = -1;
                this.this$0.invalidate();
                return true;
            }
        };
        this.gestureListener = r5;
        numberFormat.setRoundingMode(RoundingMode.FLOOR);
        numberFormat.setMaximumFractionDigits(2);
        this.gestureDetector = new GestureDetector(getContext(), (GestureDetector.OnGestureListener) r5);
        getPercentageAnimator().setRepeatMode(1);
        getPercentageAnimator().setInterpolator(new DecelerateInterpolator());
        getPercentageAnimator().setDuration(1500L);
        getPercentageAnimator().addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.histogram.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                HistogramView._init_$lambda$1(this.f3078a, valueAnimator);
            }
        });
    }
}
