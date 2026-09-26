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
import com.narvii.widget.CardView;
import com.narvii.widget.SecretImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class ItemSummaryFavoriteChildBinding implements ViewBinding {

    @NonNull
    public final ImageView chevronRight;

    @NonNull
    public final TextView feedContent;

    @NonNull
    public final FeedSummaryItem feedSummaryItem;

    @NonNull
    public final TextView feedTitle;

    @NonNull
    public final SecretImageView image;

    @NonNull
    public final CardView itemCard;

    @NonNull
    private final FeedSummaryItem rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static ItemSummaryFavoriteChildBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FeedSummaryItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSummaryFavoriteChildBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_summary_favorite_child, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemSummaryFavoriteChildBinding(@NonNull FeedSummaryItem feedSummaryItem, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull FeedSummaryItem feedSummaryItem2, @NonNull TextView textView2, @NonNull SecretImageView secretImageView, @NonNull CardView cardView, @NonNull TextView textView3) {
        this.rootView = feedSummaryItem;
        this.chevronRight = imageView;
        this.feedContent = textView;
        this.feedSummaryItem = feedSummaryItem2;
        this.feedTitle = textView2;
        this.image = secretImageView;
        this.itemCard = cardView;
        this.title = textView3;
    }

    @NonNull
    public static ItemSummaryFavoriteChildBinding bind(@NonNull View view) {
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
                    SecretImageView secretImageView = (SecretImageView) ViewBindings.a(view, R.id.image);
                    if (secretImageView != null) {
                        i10 = R.id.item_card;
                        CardView cardView = (CardView) ViewBindings.a(view, R.id.item_card);
                        if (cardView != null) {
                            i10 = R.id.title;
                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.title);
                            if (textView3 != null) {
                                return new ItemSummaryFavoriteChildBinding(feedSummaryItem, imageView, textView, feedSummaryItem, textView2, secretImageView, cardView, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
