package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes6.dex */
public class TextLoadingLayout extends FrameLayout {
    boolean loading;
    SpinningView spinningView;
    TextView textView;

    public boolean isLoading() {
        return this.loading;
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

    public void setLoading(boolean z6) {
        this.loading = z6;
        updateViews();
    }

    public TextLoadingLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.textView = (TextView) findViewById(R.id.text);
        this.spinningView = (SpinningView) findViewById(R.id.spinner);
        updateViews();
    }
}
