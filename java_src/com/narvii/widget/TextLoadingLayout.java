package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;

/* loaded from: classes3.dex */
public class TextLoadingLayout extends FrameLayout {
    boolean loading;
    SpinningView spinningView;
    TextView textView;

    public TextLoadingLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public boolean isLoading() {
        return this.loading;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.textView = (TextView) findViewById(R.id.text);
        this.spinningView = (SpinningView) findViewById(R.id.spinner);
        updateViews();
    }

    public void setLoading(boolean z) {
        this.loading = z;
        updateViews();
    }

    private void updateViews() {
        setClickable(!this.loading);
        TextView textView = this.textView;
        if (textView != null) {
            textView.setVisibility(this.loading ? 8 : 0);
        }
        SpinningView spinningView = this.spinningView;
        if (spinningView != null) {
            spinningView.setVisibility(this.loading ? 0 : 8);
        }
    }
}
