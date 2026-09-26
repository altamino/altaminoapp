package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes7.dex */
public final class ItemPageLoadStateStoryBinding implements ViewBinding {

    @NonNull
    public final TextView errorMsg;

    @NonNull
    public final SpinningView progressBar;

    @NonNull
    public final FontAwesomeView retryButton;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemPageLoadStateStoryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemPageLoadStateStoryBinding bind(@NonNull View view) {
        int i10 = R.id.error_msg;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            i10 = R.id.progress_bar;
            SpinningView spinningView = (SpinningView) ViewBindings.a(view, i10);
            if (spinningView != null) {
                i10 = R.id.retry_button;
                FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, i10);
                if (fontAwesomeView != null) {
                    return new ItemPageLoadStateStoryBinding((LinearLayout) view, textView, spinningView, fontAwesomeView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemPageLoadStateStoryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_page_load_state_story, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemPageLoadStateStoryBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull SpinningView spinningView, @NonNull FontAwesomeView fontAwesomeView) {
        this.rootView = linearLayout;
        this.errorMsg = textView;
        this.progressBar = spinningView;
        this.retryButton = fontAwesomeView;
    }
}
