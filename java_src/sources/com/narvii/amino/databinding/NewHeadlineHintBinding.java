package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes8.dex */
public final class NewHeadlineHintBinding implements ViewBinding {

    @NonNull
    public final TextView newFeedHint;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static NewHeadlineHintBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static NewHeadlineHintBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.new_headline_hint, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private NewHeadlineHintBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.newFeedHint = textView;
    }

    @NonNull
    public static NewHeadlineHintBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.a(view, R.id.new_feed_hint);
        if (textView != null) {
            return new NewHeadlineHintBinding((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.new_feed_hint)));
    }
}
