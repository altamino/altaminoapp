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
import com.narvii.feed.FeedListItem;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemFeedHeadlineUnknownBinding implements ViewBinding {

    @NonNull
    public final CommunityInfoLayoutBinding communityInfo;

    @NonNull
    public final FeedListItem headlineFeedItem;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView unknown;

    @NonNull
    public static ItemFeedHeadlineUnknownBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemFeedHeadlineUnknownBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_feed_headline_unknown, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemFeedHeadlineUnknownBinding(@NonNull LinearLayout linearLayout, @NonNull CommunityInfoLayoutBinding communityInfoLayoutBinding, @NonNull FeedListItem feedListItem, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.communityInfo = communityInfoLayoutBinding;
        this.headlineFeedItem = feedListItem;
        this.unknown = textView;
    }

    @NonNull
    public static ItemFeedHeadlineUnknownBinding bind(@NonNull View view) {
        int i10 = R.id.community_info;
        View viewA = ViewBindings.a(view, R.id.community_info);
        if (viewA != null) {
            CommunityInfoLayoutBinding communityInfoLayoutBindingBind = CommunityInfoLayoutBinding.bind(viewA);
            int i11 = R.id.headline_feed_item;
            FeedListItem feedListItem = (FeedListItem) ViewBindings.a(view, R.id.headline_feed_item);
            if (feedListItem != null) {
                i11 = R.id.unknown;
                TextView textView = (TextView) ViewBindings.a(view, R.id.unknown);
                if (textView != null) {
                    return new ItemFeedHeadlineUnknownBinding((LinearLayout) view, communityInfoLayoutBindingBind, feedListItem, textView);
                }
            }
            i10 = i11;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
