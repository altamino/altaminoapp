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
import com.narvii.widget.Card2View;
import com.narvii.widget.CardLayout;
import com.narvii.widget.CardView;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.SecretImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class FeedRefItemBinding implements ViewBinding {

    @NonNull
    public final TextView content;

    @NonNull
    public final CardView feedItemCard;

    @NonNull
    public final Card2View feedItemCard2;

    @NonNull
    public final SecretImageView image;

    @NonNull
    public final FontAwesomeView mask;

    @NonNull
    private final FeedListItem rootView;

    @NonNull
    public final CardLayout stub1;

    @NonNull
    public final TextView title;

    @NonNull
    public static FeedRefItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FeedListItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedRefItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_ref_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedRefItemBinding(@NonNull FeedListItem feedListItem, @NonNull TextView textView, @NonNull CardView cardView, @NonNull Card2View card2View, @NonNull SecretImageView secretImageView, @NonNull FontAwesomeView fontAwesomeView, @NonNull CardLayout cardLayout, @NonNull TextView textView2) {
        this.rootView = feedListItem;
        this.content = textView;
        this.feedItemCard = cardView;
        this.feedItemCard2 = card2View;
        this.image = secretImageView;
        this.mask = fontAwesomeView;
        this.stub1 = cardLayout;
        this.title = textView2;
    }

    @NonNull
    public static FeedRefItemBinding bind(@NonNull View view) {
        int i10 = R.id.content;
        TextView textView = (TextView) ViewBindings.a(view, R.id.content);
        if (textView != null) {
            i10 = R.id.feed_item_card;
            CardView cardView = (CardView) ViewBindings.a(view, R.id.feed_item_card);
            if (cardView != null) {
                i10 = R.id.feed_item_card2;
                Card2View card2View = (Card2View) ViewBindings.a(view, R.id.feed_item_card2);
                if (card2View != null) {
                    i10 = R.id.image;
                    SecretImageView secretImageView = (SecretImageView) ViewBindings.a(view, R.id.image);
                    if (secretImageView != null) {
                        i10 = R.id.mask;
                        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.mask);
                        if (fontAwesomeView != null) {
                            i10 = R.id.stub1;
                            CardLayout cardLayout = (CardLayout) ViewBindings.a(view, R.id.stub1);
                            if (cardLayout != null) {
                                i10 = R.id.title;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                                if (textView2 != null) {
                                    return new FeedRefItemBinding((FeedListItem) view, textView, cardView, card2View, secretImageView, fontAwesomeView, cardLayout, textView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
