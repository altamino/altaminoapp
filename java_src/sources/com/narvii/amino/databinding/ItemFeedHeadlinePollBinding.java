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
public final class ItemFeedHeadlinePollBinding implements ViewBinding {

    @NonNull
    public final CommunityInfoLayoutBinding communityInfo;

    @NonNull
    public final FeedToolbarHeadlineBinding feedToolbar;

    @NonNull
    public final FeedListItem headlineFeedItem;

    @NonNull
    public final ItemHeadlinePollOptionListBinding pollOptionList;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static ItemFeedHeadlinePollBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemFeedHeadlinePollBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_feed_headline_poll, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemFeedHeadlinePollBinding(@NonNull LinearLayout linearLayout, @NonNull CommunityInfoLayoutBinding communityInfoLayoutBinding, @NonNull FeedToolbarHeadlineBinding feedToolbarHeadlineBinding, @NonNull FeedListItem feedListItem, @NonNull ItemHeadlinePollOptionListBinding itemHeadlinePollOptionListBinding, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.communityInfo = communityInfoLayoutBinding;
        this.feedToolbar = feedToolbarHeadlineBinding;
        this.headlineFeedItem = feedListItem;
        this.pollOptionList = itemHeadlinePollOptionListBinding;
        this.title = textView;
    }

    @NonNull
    public static ItemFeedHeadlinePollBinding bind(@NonNull View view) {
        int i10 = R.id.community_info;
        View viewA = ViewBindings.a(view, R.id.community_info);
        if (viewA != null) {
            CommunityInfoLayoutBinding communityInfoLayoutBindingBind = CommunityInfoLayoutBinding.bind(viewA);
            i10 = R.id.feed_toolbar;
            View viewA2 = ViewBindings.a(view, R.id.feed_toolbar);
            if (viewA2 != null) {
                FeedToolbarHeadlineBinding feedToolbarHeadlineBindingBind = FeedToolbarHeadlineBinding.bind(viewA2);
                i10 = R.id.headline_feed_item;
                FeedListItem feedListItem = (FeedListItem) ViewBindings.a(view, R.id.headline_feed_item);
                if (feedListItem != null) {
                    i10 = R.id.poll_option_list;
                    View viewA3 = ViewBindings.a(view, R.id.poll_option_list);
                    if (viewA3 != null) {
                        ItemHeadlinePollOptionListBinding itemHeadlinePollOptionListBindingBind = ItemHeadlinePollOptionListBinding.bind(viewA3);
                        i10 = R.id.title;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.title);
                        if (textView != null) {
                            return new ItemFeedHeadlinePollBinding((LinearLayout) view, communityInfoLayoutBindingBind, feedToolbarHeadlineBindingBind, feedListItem, itemHeadlinePollOptionListBindingBind, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
