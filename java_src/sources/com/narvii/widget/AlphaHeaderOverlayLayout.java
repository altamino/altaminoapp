package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.AbsListView;
import com.narvii.list.overlay.OverlayLayout;

/* JADX INFO: loaded from: classes3.dex */
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

    public void setCustomAlphaAlgorithm(CustomAlphaAlgorithm customAlphaAlgorithm) {
        this.alphaAlgorithm = customAlphaAlgorithm;
    }

    public void setScrollStatusListener(HeaderOverlayScrollChanged headerOverlayScrollChanged) {
        this.listener = headerOverlayScrollChanged;
    }

    public AlphaHeaderOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.firstHeight = 0;
    }

    private float getAlphaValue(float f) {
        CustomAlphaAlgorithm customAlphaAlgorithm = this.alphaAlgorithm;
        return customAlphaAlgorithm != null ? customAlphaAlgorithm.getAlpha(f) : (float) Math.min(1.0d, ((double) f) * 2.0d);
    }

    @Override // com.narvii.list.overlay.OverlayLayout
    public void setScroll(int i10) {
        int i11 = this.firstHeight;
        float fMin = (float) Math.min(1.0d, i11 == 0 ? com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE : (((double) i10) * 1.0d) / ((double) i11));
        setAlpha(getAlphaValue(fMin));
        super.setScroll(i10);
        HeaderOverlayScrollChanged headerOverlayScrollChanged = this.listener;
        if (headerOverlayScrollChanged != null) {
            headerOverlayScrollChanged.onScroll(fMin);
        }
    }

    @Override // com.narvii.list.overlay.OverlayLayout, android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
        super.onScroll(absListView, i10, i11, i12);
        if (absListView.getChildCount() < 2) {
            this.firstHeight = 0;
        } else {
            this.firstHeight = absListView.getChildAt(1).getTop() - absListView.getChildAt(0).getTop();
        }
    }
}
