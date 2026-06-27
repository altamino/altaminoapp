package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.narvii.widget.AutofitHelper;

/* loaded from: classes3.dex */
public class AutoFitTextView extends TextView implements AutofitHelper.OnTextSizeChangeListener {
    AutofitHelper mHelper;

    @Override // com.narvii.widget.AutofitHelper.OnTextSizeChangeListener
    public void onTextSizeChange(float f, float f2) {
    }

    public AutoFitTextView(Context context) {
        this(context, null);
    }

    public AutoFitTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AutoFitTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet, i);
    }

    private void init(Context context, AttributeSet attributeSet, int i) {
        this.mHelper = AutofitHelper.create(this, attributeSet, i).addOnTextSizeChangeListener(this);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        super.setTextSize(i, f);
        AutofitHelper autofitHelper = this.mHelper;
        if (autofitHelper != null) {
            autofitHelper.setTextSize(i, f);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        AutofitHelper autofitHelper = this.mHelper;
        if (autofitHelper != null) {
            autofitHelper.setFitHeight(mode == 1073741824);
        }
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i) {
        AutofitHelper autofitHelper = this.mHelper;
        if (autofitHelper != null) {
            autofitHelper.setMaxWidth(i);
        }
    }

    @Override // android.widget.TextView
    public void setLines(int i) {
        super.setLines(i);
        AutofitHelper autofitHelper = this.mHelper;
        if (autofitHelper != null) {
            autofitHelper.setMaxLines(i);
        }
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        super.setMaxLines(i);
        AutofitHelper autofitHelper = this.mHelper;
        if (autofitHelper != null) {
            autofitHelper.setMaxLines(i);
        }
    }

    public AutofitHelper getAutofitHelper() {
        return this.mHelper;
    }

    public boolean isSizeToFit() {
        return this.mHelper.isEnabled();
    }

    public void setSizeToFit() {
        setSizeToFit(true);
    }

    public void setSizeToFit(boolean z) {
        this.mHelper.setEnabled(z);
    }

    public float getMaxTextSize() {
        return this.mHelper.getMaxTextSize();
    }

    public void setMaxTextSize(float f) {
        this.mHelper.setMaxTextSize(f);
    }

    public void setMaxTextSize(int i, float f) {
        this.mHelper.setMaxTextSize(i, f);
    }

    public float getMinTextSize() {
        return this.mHelper.getMinTextSize();
    }

    public void setMinTextSize(int i) {
        this.mHelper.setMinTextSize(2, i);
    }

    public void setMinTextSize(int i, float f) {
        this.mHelper.setMinTextSize(i, f);
    }
}
