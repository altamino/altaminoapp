package com.narvii.master.home.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.util.Utils;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: AdsModuleIndicator.kt */
/* loaded from: classes3.dex */
public final class AdsModuleIndicator extends View {
    private static final float INDICATOR_INTERVAL = 5.0f;
    private static final float INDICATOR_SIZE = 3.0f;
    private HashMap _$_findViewCache;
    private int indexCount;
    private final float indicatorInterval;
    private final float indicatorSize;
    private int selectedIndex;
    private final Paint selectedPaint;
    private final Paint unSelectedPaint;
    public static final Companion Companion = new Companion(null);
    private static final int UNSELECTED_COLOR = Color.parseColor("#80FFFFFF");
    private static final int SELECTED_COLOR = Color.parseColor("#FFFFFF");

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

    public AdsModuleIndicator(Context context) {
        super(context);
        this.indicatorSize = Utils.dpToPx(getContext(), 3.0f);
        this.indicatorInterval = Utils.dpToPx(getContext(), INDICATOR_INTERVAL);
        this.selectedPaint = new Paint();
        this.unSelectedPaint = new Paint();
        this.selectedPaint.setColor(SELECTED_COLOR);
        this.selectedPaint.setAntiAlias(true);
        this.selectedPaint.setStyle(Paint.Style.FILL);
        this.unSelectedPaint.setColor(UNSELECTED_COLOR);
        this.unSelectedPaint.setAntiAlias(true);
        this.unSelectedPaint.setStyle(Paint.Style.FILL);
    }

    public AdsModuleIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.indicatorSize = Utils.dpToPx(getContext(), 3.0f);
        this.indicatorInterval = Utils.dpToPx(getContext(), INDICATOR_INTERVAL);
        this.selectedPaint = new Paint();
        this.unSelectedPaint = new Paint();
        this.selectedPaint.setColor(SELECTED_COLOR);
        this.selectedPaint.setAntiAlias(true);
        this.selectedPaint.setStyle(Paint.Style.FILL);
        this.unSelectedPaint.setColor(UNSELECTED_COLOR);
        this.unSelectedPaint.setAntiAlias(true);
        this.unSelectedPaint.setStyle(Paint.Style.FILL);
    }

    public AdsModuleIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.indicatorSize = Utils.dpToPx(getContext(), 3.0f);
        this.indicatorInterval = Utils.dpToPx(getContext(), INDICATOR_INTERVAL);
        this.selectedPaint = new Paint();
        this.unSelectedPaint = new Paint();
        this.selectedPaint.setColor(SELECTED_COLOR);
        this.selectedPaint.setAntiAlias(true);
        this.selectedPaint.setStyle(Paint.Style.FILL);
        this.unSelectedPaint.setColor(UNSELECTED_COLOR);
        this.unSelectedPaint.setAntiAlias(true);
        this.unSelectedPaint.setStyle(Paint.Style.FILL);
    }

    public final int getIndexCount() {
        return this.indexCount;
    }

    public final void setIndexCount(int i) {
        this.indexCount = i;
        invalidate();
    }

    public final int getSelectedIndex() {
        return this.selectedIndex;
    }

    public final void setSelectedIndex(int i) {
        if (this.selectedIndex == i) {
            return;
        }
        this.selectedIndex = i;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (canvas == null || this.indexCount < 1) {
            return;
        }
        float width = getWidth();
        int i = this.indexCount;
        float f = ((width - (i * this.indicatorSize)) - ((i + 1) * this.indicatorInterval)) / 2;
        int i2 = 0;
        while (i2 < i) {
            int i3 = i2 + 1;
            canvas.drawCircle((((i2 * 2) - 1) * this.indicatorSize) + f + (i3 * this.indicatorInterval), getHeight() / 2.0f, this.indicatorSize, i2 == this.selectedIndex ? this.selectedPaint : this.unSelectedPaint);
            i2 = i3;
        }
    }

    /* compiled from: AdsModuleIndicator.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
