package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.util.Utils;
import com.narvii.util.text.TextViewFixTouchConsume;

/* JADX INFO: loaded from: classes6.dex */
public class ExpandTextView extends TextViewFixTouchConsume {
    private boolean expand;
    private int expandId;
    private Boolean expandable;
    private int maxLines;

    public boolean isExpand() {
        return this.expand;
    }

    public Boolean isExpandable() {
        return this.expandable;
    }

    private View expandView() {
        if (this.expandId != 0 && (getParent() instanceof ViewGroup)) {
            return ((ViewGroup) getParent()).findViewById(this.expandId);
        }
        return null;
    }

    public void setExpand(boolean z6) {
        this.expand = z6;
        super.setMaxLines(z6 ? Integer.MAX_VALUE : this.maxLines);
        View viewExpandView = expandView();
        if (viewExpandView != null) {
            viewExpandView.setVisibility((z6 || getVisibility() != 0) ? 4 : 0);
        }
    }

    public ExpandTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ExpandTextView);
        this.expandId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ExpandTextView_expandId, R.id.expand);
        typedArrayObtainStyledAttributes.recycle();
        setEllipsize(null);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        View viewExpandView;
        int lineCount;
        boolean z10;
        super.onLayout(z6, i10, i11, i12, i13);
        int i14 = 0;
        if (this.expandable == null && (lineCount = getLineCount()) > 0) {
            int i15 = this.maxLines;
            if (i15 > 0 && i15 < lineCount) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.expandable = Boolean.valueOf(z10);
        }
        if (this.expandable != null && (viewExpandView = expandView()) != null) {
            if (this.expand || !this.expandable.booleanValue()) {
                i14 = 4;
            }
            viewExpandView.setVisibility(i14);
        }
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i10) {
        super.setMaxLines(i10);
        this.maxLines = i10;
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        boolean z6 = !Utils.isEquals(String.valueOf(getText()), String.valueOf(charSequence));
        super.setText(charSequence, bufferType);
        if (z6) {
            this.expandable = null;
        }
    }
}
