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
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes7.dex */
public final class FeedRefTopicBinding implements ViewBinding {

    @NonNull
    public final TextView content;

    @NonNull
    public final FeedImage3SecretBinding feedImages;

    @NonNull
    public final TintButton icon;

    @NonNull
    private final FeedListItem rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static FeedRefTopicBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FeedListItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedRefTopicBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_ref_topic, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedRefTopicBinding(@NonNull FeedListItem feedListItem, @NonNull TextView textView, @NonNull FeedImage3SecretBinding feedImage3SecretBinding, @NonNull TintButton tintButton, @NonNull TextView textView2) {
        this.rootView = feedListItem;
        this.content = textView;
        this.feedImages = feedImage3SecretBinding;
        this.icon = tintButton;
        this.title = textView2;
    }

    @NonNull
    public static FeedRefTopicBinding bind(@NonNull View view) {
        int i10 = R.id.content;
        TextView textView = (TextView) ViewBindings.a(view, R.id.content);
        if (textView != null) {
            i10 = R.id.feed_images;
            View viewA = ViewBindings.a(view, R.id.feed_images);
            if (viewA != null) {
                FeedImage3SecretBinding feedImage3SecretBindingBind = FeedImage3SecretBinding.bind(viewA);
                i10 = R.id.icon;
                TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.icon);
                if (tintButton != null) {
                    i10 = R.id.title;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                    if (textView2 != null) {
                        return new FeedRefTopicBinding((FeedListItem) view, textView, feedImage3SecretBindingBind, tintButton, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
