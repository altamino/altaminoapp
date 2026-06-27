package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class NVStatusLayout extends FrameLayout {
    private View errorView;
    private View loadingView;
    private View mainLayout;
    onErrorRetryListener onErrorRetryListener;

    public interface onErrorRetryListener {
        void onErrorRetry();
    }

    public NVStatusLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setOnErrorRetryListener(onErrorRetryListener onerrorretrylistener) {
        this.onErrorRetryListener = onerrorretrylistener;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.errorView = findViewById(R.id.error);
        this.loadingView = findViewById(R.id.loading);
        this.mainLayout = findViewById(R.id.main_layout);
        for (int i = 0; i < getChildCount(); i++) {
            getChildAt(i).setVisibility(4);
        }
    }

    public void showLoading() {
        View view = this.loadingView;
        if (view != null) {
            view.setVisibility(0);
        }
        View view2 = this.errorView;
        if (view2 != null) {
            view2.setVisibility(4);
        }
        View view3 = this.mainLayout;
        if (view3 != null) {
            view3.setVisibility(4);
        }
    }

    public void showError(String str) {
        View view = this.loadingView;
        if (view != null) {
            view.setVisibility(4);
        }
        View view2 = this.errorView;
        if (view2 != null) {
            view2.setVisibility(0);
            TextView textView = (TextView) this.errorView.findViewById(R.id.error_text);
            String string = getContext().getString(R.string.normal_error_offline2);
            if (Utils.isDeviceOffline(getContext())) {
                str = string;
            }
            textView.setText(str);
            this.errorView.findViewById(R.id.error_retry).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.widget.NVStatusLayout.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view3) {
                    onErrorRetryListener onerrorretrylistener = NVStatusLayout.this.onErrorRetryListener;
                    if (onerrorretrylistener != null) {
                        onerrorretrylistener.onErrorRetry();
                    }
                }
            });
        }
        View view3 = this.mainLayout;
        if (view3 != null) {
            view3.setVisibility(4);
        }
    }

    public void showContent() {
        View view = this.loadingView;
        if (view != null) {
            view.setVisibility(4);
        }
        View view2 = this.errorView;
        if (view2 != null) {
            view2.setVisibility(4);
        }
        View view3 = this.mainLayout;
        if (view3 != null) {
            view3.setVisibility(0);
        }
    }
}
