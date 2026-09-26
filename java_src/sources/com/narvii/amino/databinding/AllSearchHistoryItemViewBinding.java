package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes5.dex */
public final class AllSearchHistoryItemViewBinding implements ViewBinding {

    @NonNull
    public final TextView historySearchText;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static AllSearchHistoryItemViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AllSearchHistoryItemViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.all_search_history_item_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AllSearchHistoryItemViewBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.historySearchText = textView;
    }

    @NonNull
    public static AllSearchHistoryItemViewBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.a(view, R.id.history_search_text);
        if (textView != null) {
            return new AllSearchHistoryItemViewBinding((FrameLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.history_search_text)));
    }
}
