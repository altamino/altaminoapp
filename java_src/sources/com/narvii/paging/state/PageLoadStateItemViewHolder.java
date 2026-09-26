package com.narvii.paging.state;

import android.view.View;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.lib.R;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes10.dex */
public class PageLoadStateItemViewHolder extends RecyclerView.ViewHolder {
    private View btnRetry;
    private TextView errorMessage;
    private boolean isDarkTheme;
    private ErrorRetryListener listener;
    private View progressBar;

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
        this.errorMessage.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.paging.state.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                errorRetryListener.onErrorRetry();
            }
        });
        View view = this.btnRetry;
        if (view != null) {
            view.setVisibility(pageLoadState.status == 2 ? 0 : 8);
            this.btnRetry.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.paging.state.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    errorRetryListener.onErrorRetry();
                }
            });
        }
    }

    public void setDarkTheme(boolean z6) {
        this.isDarkTheme = z6;
        View view = this.progressBar;
        boolean z10 = view instanceof SpinningView;
        int i10 = ViewCompat.MEASURED_STATE_MASK;
        if (z10) {
            ((SpinningView) view).setSpinColor(z6 ? -1 : -16777216);
        }
        View view2 = this.btnRetry;
        if (view2 instanceof FontAwesomeView) {
            FontAwesomeView fontAwesomeView = (FontAwesomeView) view2;
            if (z6) {
                i10 = -1;
            }
            fontAwesomeView.setTextColor(i10);
        }
    }

    public PageLoadStateItemViewHolder(View view) {
        super(view);
        this.progressBar = view.findViewById(R.id.progress_bar);
        this.errorMessage = (TextView) view.findViewById(R.id.error_msg);
        this.btnRetry = view.findViewById(R.id.retry_button);
    }
}
