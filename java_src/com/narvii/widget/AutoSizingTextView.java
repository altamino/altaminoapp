package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.widget.AppCompatTextView;
import android.util.AttributeSet;
import com.narvii.lib.R;

/* loaded from: classes3.dex */
public class AutoSizingTextView extends AppCompatTextView {
    private int autoSizeTextMaxSize;
    private int autoSizeTextMinSize;
    private int autoSizeTextStep;
    private boolean isAutoSizeText;

    public AutoSizingTextView(Context context) {
        this(context, null);
    }

    public AutoSizingTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AutoSizingTextView(Context context, AttributeSet attributeSet, int i) throws IllegalArgumentException {
        super(context, attributeSet, i);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AutoSizingTextView, i, 0);
        this.isAutoSizeText = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AutoSizingTextView_autoSizeText, true);
        this.autoSizeTextMinSize = (int) (context.getResources().getDisplayMetrics().scaledDensity * 8.0f);
        this.autoSizeTextMinSize = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.AutoSizingTextView_autoSizeTextMinSize, this.autoSizeTextMinSize);
        this.autoSizeTextMaxSize = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.AutoSizingTextView_autoSizeTextMaxSize, 0);
        if (this.autoSizeTextMaxSize == 0) {
            this.autoSizeTextMaxSize = (int) getTextSize();
        }
        this.autoSizeTextStep = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.AutoSizingTextView_autoSizeTextStep, 1);
        typedArrayObtainStyledAttributes.recycle();
        resetAutoSizing();
    }

    public boolean isAutoSizeText() {
        return this.isAutoSizeText;
    }

    public void setAutoSizeText(boolean z) throws IllegalArgumentException {
        this.isAutoSizeText = z;
        resetAutoSizing();
    }

    public int getAutoSizeTextMinSize() {
        return this.autoSizeTextMinSize;
    }

    public void setAutoSizeTextMinSize(int i) throws IllegalArgumentException {
        this.autoSizeTextMinSize = i;
        resetAutoSizing();
    }

    public int getAutoSizeTextMaxSize() {
        return this.autoSizeTextMaxSize;
    }

    public void setAutoSizeTextMaxSize(int i) throws IllegalArgumentException {
        this.autoSizeTextMaxSize = i;
        resetAutoSizing();
    }

    public int getAutoSizeTextStep() {
        return this.autoSizeTextStep;
    }

    public void setAutoSizeTextStep(int i) throws IllegalArgumentException {
        this.autoSizeTextStep = i;
        resetAutoSizing();
    }

    public void resizingFromMaxSize() {
        getPaint().setTextSize(fitAutoSize());
    }

    private void resetAutoSizing() throws IllegalArgumentException {
        if (this.isAutoSizeText) {
            int iFitAutoSize = fitAutoSize();
            getPaint().setTextSize(iFitAutoSize);
            TextViewCompat.setAutoSizeTextTypeUniformWithConfiguration(this, this.autoSizeTextMinSize, iFitAutoSize, this.autoSizeTextStep, 0);
            return;
        }
        TextViewCompat.setAutoSizeTextTypeWithDefaults(this, 0);
    }

    private int fitAutoSize() {
        if (this.autoSizeTextMinSize < 1) {
            this.autoSizeTextMinSize = 1;
        }
        return Math.max(this.autoSizeTextMaxSize, this.autoSizeTextMinSize + 1);
    }
}
