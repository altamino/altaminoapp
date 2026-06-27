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

/* loaded from: classes3.dex */
public class ExpandTextView extends TextViewFixTouchConsume {
    private boolean expand;
    private int expandId;
    private Boolean expandable;
    private int maxLines;

    public ExpandTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ExpandTextView);
        this.expandId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ExpandTextView_expandId, R.id.expand);
        typedArrayObtainStyledAttributes.recycle();
        setEllipsize(null);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        super.setMaxLines(i);
        this.maxLines = i;
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        boolean z = !Utils.isEquals(String.valueOf(getText()), String.valueOf(charSequence));
        super.setText(charSequence, bufferType);
        if (z) {
            this.expandable = null;
        }
    }

    private View expandView() {
        if (this.expandId != 0 && (getParent() instanceof ViewGroup)) {
            return ((ViewGroup) getParent()).findViewById(this.expandId);
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View viewExpandView;
        int lineCount;
        super.onLayout(z, i, i2, i3, i4);
        if (this.expandable == null && (lineCount = getLineCount()) > 0) {
            int i5 = this.maxLines;
            this.expandable = Boolean.valueOf(i5 > 0 && i5 < lineCount);
        }
        if (this.expandable == null || (viewExpandView = expandView()) == null) {
            return;
        }
        viewExpandView.setVisibility((this.expand || !this.expandable.booleanValue()) ? 4 : 0);
    }

    public Boolean isExpandable() {
        return this.expandable;
    }

    public boolean isExpand() {
        return this.expand;
    }

    public void setExpand(boolean z) {
        this.expand = z;
        super.setMaxLines(z ? Integer.MAX_VALUE : this.maxLines);
        View viewExpandView = expandView();
        if (viewExpandView != null) {
            viewExpandView.setVisibility((z || getVisibility() != 0) ? 4 : 0);
        }
    }
}
