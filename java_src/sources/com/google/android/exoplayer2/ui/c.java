package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import com.safedk.android.analytics.brandsafety.DetectTouchUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class c extends View implements SubtitleView.a {
    private float bottomPaddingFraction;
    private List<com.google.android.exoplayer2.text.b> cues;
    private final List<x0> painters;
    private d style;
    private float textSize;
    private int textSizeType;

    public c(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent me) {
        DetectTouchUtils.viewOnTouch("com.google.android.exoplayer", this, me);
        return super.dispatchTouchEvent(me);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (1 == 0) {
            setMeasuredDimension(0, 0);
        } else {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        }
    }

    public c(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.painters = new ArrayList();
        this.cues = Collections.emptyList();
        this.textSizeType = 0;
        this.textSize = 0.0533f;
        this.style = d.DEFAULT;
        this.bottomPaddingFraction = 0.08f;
    }

    @Override // com.google.android.exoplayer2.ui.SubtitleView.a
    public void a(List<com.google.android.exoplayer2.text.b> list, d dVar, float f, int i10, float f6) {
        this.cues = list;
        this.style = dVar;
        this.textSize = f;
        this.textSizeType = i10;
        this.bottomPaddingFraction = f6;
        while (this.painters.size() < list.size()) {
            this.painters.add(new x0(getContext()));
        }
        invalidate();
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        List<com.google.android.exoplayer2.text.b> list = this.cues;
        if (list.isEmpty()) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int paddingBottom = height - getPaddingBottom();
        if (paddingBottom <= paddingTop || width <= paddingLeft) {
            return;
        }
        int i10 = paddingBottom - paddingTop;
        float fH = a1.h(this.textSizeType, this.textSize, height, i10);
        if (fH <= 0.0f) {
            return;
        }
        int size = list.size();
        int i11 = 0;
        while (i11 < size) {
            com.google.android.exoplayer2.text.b bVarB = list.get(i11);
            if (bVarB.verticalType != Integer.MIN_VALUE) {
                bVarB = b(bVarB);
            }
            com.google.android.exoplayer2.text.b bVar = bVarB;
            int i12 = paddingBottom;
            this.painters.get(i11).b(bVar, this.style, fH, a1.h(bVar.textSizeType, bVar.textSize, height, i10), this.bottomPaddingFraction, canvas, paddingLeft, paddingTop, width, i12);
            i11++;
            size = size;
            i10 = i10;
            paddingBottom = i12;
            width = width;
        }
    }

    private static com.google.android.exoplayer2.text.b b(com.google.android.exoplayer2.text.b bVar) {
        com.google.android.exoplayer2.text.b.C0178b c0178bP = bVar.b().k(-3.4028235E38f).l(Integer.MIN_VALUE).p(null);
        if (bVar.lineType == 0) {
            c0178bP.h(1.0f - bVar.line, 0);
        } else {
            c0178bP.h((-bVar.line) - 1.0f, 1);
        }
        int i10 = bVar.lineAnchor;
        if (i10 != 0) {
            if (i10 == 2) {
                c0178bP.i(0);
            }
        } else {
            c0178bP.i(2);
        }
        return c0178bP.a();
    }
}
