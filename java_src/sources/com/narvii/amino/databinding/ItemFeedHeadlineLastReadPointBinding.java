package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.feed.FeedListItem;
import com.narvii.widget.PushEffectLayout;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemFeedHeadlineLastReadPointBinding implements ViewBinding {

    @NonNull
    public final FeedListItem headlineFeedItem;

    @NonNull
    public final PushEffectLayout lastPosContainer;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemFeedHeadlineLastReadPointBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemFeedHeadlineLastReadPointBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_feed_headline_last_read_point, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemFeedHeadlineLastReadPointBinding(@NonNull LinearLayout linearLayout, @NonNull FeedListItem feedListItem, @NonNull PushEffectLayout pushEffectLayout) {
        this.rootView = linearLayout;
        this.headlineFeedItem = feedListItem;
        this.lastPosContainer = pushEffectLayout;
    }

    @NonNull
    public static ItemFeedHeadlineLastReadPointBinding bind(@NonNull View view) {
        int i10 = R.id.headline_feed_item;
        FeedListItem feedListItem = (FeedListItem) ViewBindings.a(view, R.id.headline_feed_item);
        if (feedListItem != null) {
            i10 = R.id.last_pos_container;
            PushEffectLayout pushEffectLayout = (PushEffectLayout) ViewBindings.a(view, R.id.last_pos_container);
            if (pushEffectLayout != null) {
                return new ItemFeedHeadlineLastReadPointBinding((LinearLayout) view, feedListItem, pushEffectLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
