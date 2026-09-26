package com.narvii.master.home.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.util.Utils;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class AdsModuleIndicator extends View {
    private static final float INDICATOR_INTERVAL = 5.0f;
    private static final float INDICATOR_SIZE = 3.0f;
    private int indexCount;
    private final float indicatorInterval;
    private final float indicatorSize;
    private int selectedIndex;

    @NotNull
    private final Paint selectedPaint;

    @NotNull
    private final Paint unSelectedPaint;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int UNSELECTED_COLOR = Color.parseColor("#80FFFFFF");
    private static final int SELECTED_COLOR = Color.parseColor("#FFFFFF");

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public AdsModuleIndicator(@Nullable Context context) {
        super(context);
        this.indicatorSize = Utils.dpToPx(getContext(), 3.0f);
        this.indicatorInterval = Utils.dpToPx(getContext(), INDICATOR_INTERVAL);
        Paint paint = new Paint();
        this.selectedPaint = paint;
        Paint paint2 = new Paint();
        this.unSelectedPaint = paint2;
        paint.setColor(SELECTED_COLOR);
        paint.setAntiAlias(true);
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint2.setColor(UNSELECTED_COLOR);
        paint2.setAntiAlias(true);
        paint2.setStyle(style);
    }

    public final int getIndexCount() {
        return this.indexCount;
    }

    public final int getSelectedIndex() {
        return this.selectedIndex;
    }

    @Override // android.view.View
    protected void onDraw(@NotNull Canvas canvas) {
        t.j(canvas, "canvas");
        if (this.indexCount < 1) {
            return;
        }
        float width = getWidth();
        int i10 = this.indexCount;
        float f = ((width - (i10 * this.indicatorSize)) - ((i10 + 1) * this.indicatorInterval)) / 2;
        int i11 = 0;
        while (i11 < i10) {
            int i12 = i11 + 1;
            canvas.drawCircle((((i11 * 2) - 1) * this.indicatorSize) + f + (i12 * this.indicatorInterval), getHeight() / 2.0f, this.indicatorSize, i11 == this.selectedIndex ? this.selectedPaint : this.unSelectedPaint);
            i11 = i12;
        }
    }

    public final void setIndexCount(int i10) {
        this.indexCount = i10;
        invalidate();
    }

    public final void setSelectedIndex(int i10) {
        if (this.selectedIndex == i10) {
            return;
        }
        this.selectedIndex = i10;
        invalidate();
    }

    public AdsModuleIndicator(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.indicatorSize = Utils.dpToPx(getContext(), 3.0f);
        this.indicatorInterval = Utils.dpToPx(getContext(), INDICATOR_INTERVAL);
        Paint paint = new Paint();
        this.selectedPaint = paint;
        Paint paint2 = new Paint();
        this.unSelectedPaint = paint2;
        paint.setColor(SELECTED_COLOR);
        paint.setAntiAlias(true);
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint2.setColor(UNSELECTED_COLOR);
        paint2.setAntiAlias(true);
        paint2.setStyle(style);
    }

    public AdsModuleIndicator(@Nullable Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.indicatorSize = Utils.dpToPx(getContext(), 3.0f);
        this.indicatorInterval = Utils.dpToPx(getContext(), INDICATOR_INTERVAL);
        Paint paint = new Paint();
        this.selectedPaint = paint;
        Paint paint2 = new Paint();
        this.unSelectedPaint = paint2;
        paint.setColor(SELECTED_COLOR);
        paint.setAntiAlias(true);
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint2.setColor(UNSELECTED_COLOR);
        paint2.setAntiAlias(true);
        paint2.setStyle(style);
    }
}
