package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.feed.FeedListItem;

/* JADX INFO: loaded from: classes8.dex */
public final class FeedRefNullBinding implements ViewBinding {

    @NonNull
    public final TextView nullText;

    @NonNull
    private final FeedListItem rootView;

    @NonNull
    public static FeedRefNullBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FeedListItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedRefNullBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_ref_null, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedRefNullBinding(@NonNull FeedListItem feedListItem, @NonNull TextView textView) {
        this.rootView = feedListItem;
        this.nullText = textView;
    }

    @NonNull
    public static FeedRefNullBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.a(view, R.id.null_text);
        if (textView != null) {
            return new FeedRefNullBinding((FeedListItem) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.null_text)));
    }
}
