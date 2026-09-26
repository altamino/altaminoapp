package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemPageLoadStateBinding implements ViewBinding {

    @NonNull
    public final TextView errorMsg;

    @NonNull
    public final ProgressBar progressBar;

    @NonNull
    public final FontAwesomeView retryButton;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemPageLoadStateBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemPageLoadStateBinding bind(@NonNull View view) {
        int i10 = R.id.error_msg;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            i10 = R.id.progress_bar;
            ProgressBar progressBar = (ProgressBar) ViewBindings.a(view, i10);
            if (progressBar != null) {
                i10 = R.id.retry_button;
                FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, i10);
                if (fontAwesomeView != null) {
                    return new ItemPageLoadStateBinding((LinearLayout) view, textView, progressBar, fontAwesomeView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemPageLoadStateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_page_load_state, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemPageLoadStateBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ProgressBar progressBar, @NonNull FontAwesomeView fontAwesomeView) {
        this.rootView = linearLayout;
        this.errorMsg = textView;
        this.progressBar = progressBar;
        this.retryButton = fontAwesomeView;
    }
}
