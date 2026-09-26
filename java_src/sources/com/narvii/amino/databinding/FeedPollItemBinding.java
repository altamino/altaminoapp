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

/* JADX INFO: loaded from: classes10.dex */
public final class FeedPollItemBinding implements ViewBinding {

    @NonNull
    public final TextView content;

    @NonNull
    public final FeedToolbarBinding feedToolbar;

    @NonNull
    public final TintButton icon;

    @NonNull
    public final PollOptionListBinding pollOptionList;

    @NonNull
    private final FeedListItem rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public final FeedUserHeaderBinding userHead;

    @NonNull
    public static FeedPollItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FeedListItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedPollItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_poll_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedPollItemBinding(@NonNull FeedListItem feedListItem, @NonNull TextView textView, @NonNull FeedToolbarBinding feedToolbarBinding, @NonNull TintButton tintButton, @NonNull PollOptionListBinding pollOptionListBinding, @NonNull TextView textView2, @NonNull FeedUserHeaderBinding feedUserHeaderBinding) {
        this.rootView = feedListItem;
        this.content = textView;
        this.feedToolbar = feedToolbarBinding;
        this.icon = tintButton;
        this.pollOptionList = pollOptionListBinding;
        this.title = textView2;
        this.userHead = feedUserHeaderBinding;
    }

    @NonNull
    public static FeedPollItemBinding bind(@NonNull View view) {
        int i10 = R.id.content;
        TextView textView = (TextView) ViewBindings.a(view, R.id.content);
        if (textView != null) {
            i10 = R.id.feed_toolbar;
            View viewA = ViewBindings.a(view, R.id.feed_toolbar);
            if (viewA != null) {
                FeedToolbarBinding feedToolbarBindingBind = FeedToolbarBinding.bind(viewA);
                i10 = R.id.icon;
                TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.icon);
                if (tintButton != null) {
                    i10 = R.id.poll_option_list;
                    View viewA2 = ViewBindings.a(view, R.id.poll_option_list);
                    if (viewA2 != null) {
                        PollOptionListBinding pollOptionListBindingBind = PollOptionListBinding.bind(viewA2);
                        i10 = R.id.title;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                        if (textView2 != null) {
                            i10 = R.id.user_head;
                            View viewA3 = ViewBindings.a(view, R.id.user_head);
                            if (viewA3 != null) {
                                return new FeedPollItemBinding((FeedListItem) view, textView, feedToolbarBindingBind, tintButton, pollOptionListBindingBind, textView2, FeedUserHeaderBinding.bind(viewA3));
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
