package com.narvii.paging.state;

import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.SpinningView;

/* loaded from: classes3.dex */
public class PageLoadStateItemViewHolder extends RecyclerView.ViewHolder {
    private View btnRetry;
    private TextView errorMessage;
    private boolean isDarkTheme;
    private ErrorRetryListener listener;
    private View progressBar;

    public PageLoadStateItemViewHolder(View view) {
        super(view);
        this.progressBar = view.findViewById(R.id.progress_bar);
        this.errorMessage = (TextView) view.findViewById(R.id.error_msg);
        this.btnRetry = view.findViewById(R.id.retry_button);
    }

    public void setDarkTheme(boolean z) {
        this.isDarkTheme = z;
        View view = this.progressBar;
        if (view instanceof SpinningView) {
            ((SpinningView) view).setSpinColor(z ? -1 : ViewCompat.MEASURED_STATE_MASK);
        }
        View view2 = this.btnRetry;
        if (view2 instanceof FontAwesomeView) {
            ((FontAwesomeView) view2).setTextColor(z ? -1 : ViewCompat.MEASURED_STATE_MASK);
        }
    }

    public void bind(PageLoadState pageLoadState, final ErrorRetryListener errorRetryListener) {
        if (pageLoadState == null) {
            return;
        }
        this.listener = errorRetryListener;
        this.progressBar.setVisibility(pageLoadState.status == 0 ? 0 : 8);
        this.errorMessage.setVisibility(!TextUtils.isEmpty(pageLoadState.errorMessage) ? 0 : 8);
        TextView textView = this.errorMessage;
        textView.setText(textView.getContext().getString(R.string.normal_error));
        this.errorMessage.setTextColor(this.isDarkTheme ? -1 : ViewCompat.MEASURED_STATE_MASK);
        this.errorMessage.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.paging.state.-$$Lambda$PageLoadStateItemViewHolder$rQbLmv7W041_-uXfW9ZscfsfV8E
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                errorRetryListener.onErrorRetry();
            }
        });
        View view = this.btnRetry;
        if (view != null) {
            view.setVisibility(pageLoadState.status != 2 ? 8 : 0);
            this.btnRetry.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.paging.state.-$$Lambda$PageLoadStateItemViewHolder$OyYZmRKcvFfGd1awMHpOhmY3bD4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    errorRetryListener.onErrorRetry();
                }
            });
        }
    }
}
