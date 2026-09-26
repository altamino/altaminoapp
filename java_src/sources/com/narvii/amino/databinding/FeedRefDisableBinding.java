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

/* JADX INFO: loaded from: classes9.dex */
public final class FeedRefDisableBinding implements ViewBinding {

    @NonNull
    public final TextView disabledContent;

    @NonNull
    private final FeedListItem rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static FeedRefDisableBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FeedListItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedRefDisableBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_ref_disable, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedRefDisableBinding(@NonNull FeedListItem feedListItem, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = feedListItem;
        this.disabledContent = textView;
        this.title = textView2;
    }

    @NonNull
    public static FeedRefDisableBinding bind(@NonNull View view) {
        int i10 = R.id.disabled_content;
        TextView textView = (TextView) ViewBindings.a(view, R.id.disabled_content);
        if (textView != null) {
            i10 = R.id.title;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
            if (textView2 != null) {
                return new FeedRefDisableBinding((FeedListItem) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
