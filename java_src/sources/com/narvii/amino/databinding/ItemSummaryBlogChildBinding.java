package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.feed.FeedSummaryItem;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemSummaryBlogChildBinding implements ViewBinding {

    @NonNull
    public final ImageView chevronRight;

    @NonNull
    public final TextView feedContent;

    @NonNull
    public final FeedSummaryItem feedSummaryItem;

    @NonNull
    public final TextView feedTitle;

    @NonNull
    public final NVImageView image;

    @NonNull
    private final FeedSummaryItem rootView;

    @NonNull
    public static ItemSummaryBlogChildBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FeedSummaryItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSummaryBlogChildBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_summary_blog_child, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemSummaryBlogChildBinding(@NonNull FeedSummaryItem feedSummaryItem, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull FeedSummaryItem feedSummaryItem2, @NonNull TextView textView2, @NonNull NVImageView nVImageView) {
        this.rootView = feedSummaryItem;
        this.chevronRight = imageView;
        this.feedContent = textView;
        this.feedSummaryItem = feedSummaryItem2;
        this.feedTitle = textView2;
        this.image = nVImageView;
    }

    @NonNull
    public static ItemSummaryBlogChildBinding bind(@NonNull View view) {
        int i10 = R.id.chevron_right;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.chevron_right);
        if (imageView != null) {
            i10 = R.id.feed_content;
            TextView textView = (TextView) ViewBindings.a(view, R.id.feed_content);
            if (textView != null) {
                FeedSummaryItem feedSummaryItem = (FeedSummaryItem) view;
                i10 = R.id.feed_title;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.feed_title);
                if (textView2 != null) {
                    i10 = R.id.image;
                    NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.image);
                    if (nVImageView != null) {
                        return new ItemSummaryBlogChildBinding(feedSummaryItem, imageView, textView, feedSummaryItem, textView2, nVImageView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
