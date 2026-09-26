package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;

/* JADX INFO: loaded from: classes4.dex */
public class AutoFitTextView extends TextView implements AutofitHelper.OnTextSizeChangeListener {
    AutofitHelper mHelper;

    public AutoFitTextView(Context context) {
        this(context, null);
    }

    public AutofitHelper getAutofitHelper() {
        return this.mHelper;
    }

    @Override // com.narvii.widget.AutofitHelper.OnTextSizeChangeListener
    public void onTextSizeChange(float f, float f6) {
    }

    public void setMaxTextSize(float f) {
        this.mHelper.setMaxTextSize(f);
    }

    public void setMinTextSize(int i10) {
        this.mHelper.setMinTextSize(2, i10);
    }

    public void setSizeToFit() {
        setSizeToFit(true);
    }

    public AutoFitTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public float getMaxTextSize() {
        return this.mHelper.getMaxTextSize();
    }

    public float getMinTextSize() {
        return this.mHelper.getMinTextSize();
    }

    public boolean isSizeToFit() {
        return this.mHelper.isEnabled();
    }

    public void setMaxTextSize(int i10, float f) {
        this.mHelper.setMaxTextSize(i10, f);
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i10) {
        AutofitHelper autofitHelper = this.mHelper;
        if (autofitHelper != null) {
            autofitHelper.setMaxWidth(i10);
        }
    }

    public void setMinTextSize(int i10, float f) {
        this.mHelper.setMinTextSize(i10, f);
    }

    public void setSizeToFit(boolean z6) {
        this.mHelper.setEnabled(z6);
    }

    public AutoFitTextView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        init(context, attributeSet, i10);
    }

    private void init(Context context, AttributeSet attributeSet, int i10) {
        this.mHelper = AutofitHelper.create(this, attributeSet, i10).addOnTextSizeChangeListener(this);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i10, int i11) {
        boolean z6;
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i11);
        AutofitHelper autofitHelper = this.mHelper;
        if (autofitHelper != null) {
            if (mode == 1073741824) {
                z6 = true;
            } else {
                z6 = false;
            }
            autofitHelper.setFitHeight(z6);
        }
    }

    @Override // android.widget.TextView
    public void setLines(int i10) {
        super.setLines(i10);
        AutofitHelper autofitHelper = this.mHelper;
        if (autofitHelper != null) {
            autofitHelper.setMaxLines(i10);
        }
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i10) {
        super.setMaxLines(i10);
        AutofitHelper autofitHelper = this.mHelper;
        if (autofitHelper != null) {
            autofitHelper.setMaxLines(i10);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i10, float f) {
        super.setTextSize(i10, f);
        AutofitHelper autofitHelper = this.mHelper;
        if (autofitHelper != null) {
            autofitHelper.setTextSize(i10, f);
        }
    }
}
