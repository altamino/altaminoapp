package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.AbsListView;
import com.narvii.list.overlay.OverlayLayout;

/* loaded from: classes3.dex */
public class AlphaHeaderOverlayLayout extends OverlayLayout {
    private CustomAlphaAlgorithm alphaAlgorithm;
    private int firstHeight;
    private HeaderOverlayScrollChanged listener;

    public interface CustomAlphaAlgorithm {
        float getAlpha(float f);
    }

    public interface HeaderOverlayScrollChanged {
        void onScroll(float f);
    }

    public AlphaHeaderOverlayLayout(Context context) {
        this(context, null);
    }

    public AlphaHeaderOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.firstHeight = 0;
    }

    @Override // com.narvii.list.overlay.OverlayLayout, android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        super.onScroll(absListView, i, i2, i3);
        if (absListView.getChildCount() < 2) {
            this.firstHeight = 0;
        } else {
            this.firstHeight = absListView.getChildAt(1).getTop() - absListView.getChildAt(0).getTop();
        }
    }

    @Override // com.narvii.list.overlay.OverlayLayout
    public void setScroll(int i) {
        double d;
        int i2 = this.firstHeight;
        if (i2 == 0) {
            d = 0.0d;
        } else {
            double d2 = i;
            Double.isNaN(d2);
            double d3 = i2;
            Double.isNaN(d3);
            d = (d2 * 1.0d) / d3;
        }
        float fMin = (float) Math.min(1.0d, d);
        setAlpha(getAlphaValue(fMin));
        super.setScroll(i);
        HeaderOverlayScrollChanged headerOverlayScrollChanged = this.listener;
        if (headerOverlayScrollChanged != null) {
            headerOverlayScrollChanged.onScroll(fMin);
        }
    }

    public void setScrollStatusListener(HeaderOverlayScrollChanged headerOverlayScrollChanged) {
        this.listener = headerOverlayScrollChanged;
    }

    public void setCustomAlphaAlgorithm(CustomAlphaAlgorithm customAlphaAlgorithm) {
        this.alphaAlgorithm = customAlphaAlgorithm;
    }

    private float getAlphaValue(float f) {
        CustomAlphaAlgorithm customAlphaAlgorithm = this.alphaAlgorithm;
        if (customAlphaAlgorithm != null) {
            return customAlphaAlgorithm.getAlpha(f);
        }
        double d = f;
        Double.isNaN(d);
        return (float) Math.min(1.0d, d * 2.0d);
    }
}
