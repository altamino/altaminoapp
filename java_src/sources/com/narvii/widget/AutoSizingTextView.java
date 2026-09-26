package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.TextViewCompat;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes6.dex */
public class AutoSizingTextView extends AppCompatTextView {
    private int autoSizeTextMaxSize;
    private int autoSizeTextMinSize;
    private int autoSizeTextStep;
    private boolean isAutoSizeText;

    public AutoSizingTextView(Context context) {
        this(context, null);
    }

    public int getAutoSizeTextMaxSize() {
        return this.autoSizeTextMaxSize;
    }

    public int getAutoSizeTextMinSize() {
        return this.autoSizeTextMinSize;
    }

    public int getAutoSizeTextStep() {
        return this.autoSizeTextStep;
    }

    public boolean isAutoSizeText() {
        return this.isAutoSizeText;
    }

    public AutoSizingTextView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private int fitAutoSize() {
        if (this.autoSizeTextMinSize < 1) {
            this.autoSizeTextMinSize = 1;
        }
        return Math.max(this.autoSizeTextMaxSize, this.autoSizeTextMinSize + 1);
    }

    private void resetAutoSizing() {
        if (!this.isAutoSizeText) {
            TextViewCompat.i(this, 0);
            return;
        }
        int iFitAutoSize = fitAutoSize();
        getPaint().setTextSize(iFitAutoSize);
        TextViewCompat.h(this, this.autoSizeTextMinSize, iFitAutoSize, this.autoSizeTextStep, 0);
    }

    public void setAutoSizeText(boolean z6) {
        this.isAutoSizeText = z6;
        resetAutoSizing();
    }

    public void setAutoSizeTextMaxSize(int i10) {
        this.autoSizeTextMaxSize = i10;
        resetAutoSizing();
    }

    public void setAutoSizeTextMinSize(int i10) {
        this.autoSizeTextMinSize = i10;
        resetAutoSizing();
    }

    public void setAutoSizeTextStep(int i10) {
        this.autoSizeTextStep = i10;
        resetAutoSizing();
    }

    public AutoSizingTextView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AutoSizingTextView, i10, 0);
        this.isAutoSizeText = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AutoSizingTextView_autoSizeText, true);
        int i11 = (int) (context.getResources().getDisplayMetrics().scaledDensity * 8.0f);
        this.autoSizeTextMinSize = i11;
        this.autoSizeTextMinSize = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.AutoSizingTextView_autoSizeTextMinSize, i11);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.AutoSizingTextView_autoSizeTextMaxSize, 0);
        this.autoSizeTextMaxSize = dimensionPixelOffset;
        if (dimensionPixelOffset == 0) {
            this.autoSizeTextMaxSize = (int) getTextSize();
        }
        this.autoSizeTextStep = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.AutoSizingTextView_autoSizeTextStep, 1);
        typedArrayObtainStyledAttributes.recycle();
        resetAutoSizing();
    }

    public void resizingFromMaxSize() {
        getPaint().setTextSize(fitAutoSize());
    }
}
