package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.safedk.android.analytics.brandsafety.DetectTouchUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class SubtitleView extends FrameLayout {
    public static final float DEFAULT_BOTTOM_PADDING_FRACTION = 0.08f;
    public static final float DEFAULT_TEXT_SIZE_FRACTION = 0.0533f;
    public static final int VIEW_TYPE_CANVAS = 1;
    public static final int VIEW_TYPE_WEB = 2;
    private boolean applyEmbeddedFontSizes;
    private boolean applyEmbeddedStyles;
    private float bottomPaddingFraction;
    private List<com.google.android.exoplayer2.text.b> cues;
    private float defaultTextSize;
    private int defaultTextSizeType;
    private View innerSubtitleView;
    private a output;
    private d style;
    private int viewType;

    interface a {
        void a(List<com.google.android.exoplayer2.text.b> list, d dVar, float f, int i10, float f6);
    }

    public SubtitleView(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent me) {
        DetectTouchUtils.viewOnTouch("com.google.android.exoplayer", this, me);
        return super.dispatchTouchEvent(me);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (1 == 0) {
            setMeasuredDimension(0, 0);
        } else {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        }
    }

    public void setFractionalTextSize(float f) {
        b(f, false);
    }

    public SubtitleView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.cues = Collections.emptyList();
        this.style = d.DEFAULT;
        this.defaultTextSizeType = 0;
        this.defaultTextSize = 0.0533f;
        this.bottomPaddingFraction = 0.08f;
        this.applyEmbeddedStyles = true;
        this.applyEmbeddedFontSizes = true;
        c cVar = new c(context);
        this.output = cVar;
        this.innerSubtitleView = cVar;
        addView(cVar);
        this.viewType = 1;
    }

    private void c(int i10, float f) {
        this.defaultTextSizeType = i10;
        this.defaultTextSize = f;
        f();
    }

    private void f() {
        this.output.a(getCuesWithStylingPreferencesApplied(), this.style, this.defaultTextSize, this.defaultTextSizeType, this.bottomPaddingFraction);
    }

    private List<com.google.android.exoplayer2.text.b> getCuesWithStylingPreferencesApplied() {
        if (this.applyEmbeddedStyles && this.applyEmbeddedFontSizes) {
            return this.cues;
        }
        ArrayList arrayList = new ArrayList(this.cues.size());
        for (int i10 = 0; i10 < this.cues.size(); i10++) {
            arrayList.add(a(this.cues.get(i10)));
        }
        return arrayList;
    }

    private float getUserCaptionFontScale() {
        CaptioningManager captioningManager;
        if (com.google.android.exoplayer2.util.o0.SDK_INT < 19 || isInEditMode() || (captioningManager = (CaptioningManager) getContext().getSystemService("captioning")) == null || !captioningManager.isEnabled()) {
            return 1.0f;
        }
        return captioningManager.getFontScale();
    }

    private d getUserCaptionStyle() {
        if (com.google.android.exoplayer2.util.o0.SDK_INT < 19 || isInEditMode()) {
            return d.DEFAULT;
        }
        CaptioningManager captioningManager = (CaptioningManager) getContext().getSystemService("captioning");
        return (captioningManager == null || !captioningManager.isEnabled()) ? d.DEFAULT : d.a(captioningManager.getUserStyle());
    }

    private <T extends View & a> void setView(T t5) {
        removeView(this.innerSubtitleView);
        View view = this.innerSubtitleView;
        if (view instanceof d1) {
            ((d1) view).g();
        }
        this.innerSubtitleView = t5;
        this.output = t5;
        addView(t5);
    }

    public void setApplyEmbeddedFontSizes(boolean z6) {
        this.applyEmbeddedFontSizes = z6;
        f();
    }

    public void setApplyEmbeddedStyles(boolean z6) {
        this.applyEmbeddedStyles = z6;
        f();
    }

    public void setBottomPaddingFraction(float f) {
        this.bottomPaddingFraction = f;
        f();
    }

    public void setCues(@Nullable List<com.google.android.exoplayer2.text.b> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        this.cues = list;
        f();
    }

    public void setStyle(d dVar) {
        this.style = dVar;
        f();
    }

    public void setViewType(int i10) {
        if (this.viewType == i10) {
            return;
        }
        if (i10 == 1) {
            setView(new c(getContext()));
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException();
            }
            setView(new d1(getContext()));
        }
        this.viewType = i10;
    }

    private com.google.android.exoplayer2.text.b a(com.google.android.exoplayer2.text.b bVar) {
        com.google.android.exoplayer2.text.b.C0178b c0178bB = bVar.b();
        if (!this.applyEmbeddedStyles) {
            a1.e(c0178bB);
        } else if (!this.applyEmbeddedFontSizes) {
            a1.f(c0178bB);
        }
        return c0178bB.a();
    }

    public void b(float f, boolean z6) {
        c(z6 ? 1 : 0, f);
    }

    public void d() {
        setStyle(getUserCaptionStyle());
    }

    public void e() {
        setFractionalTextSize(getUserCaptionFontScale() * 0.0533f);
    }
}
