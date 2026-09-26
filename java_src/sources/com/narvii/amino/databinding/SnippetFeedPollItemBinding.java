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
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes5.dex */
public final class SnippetFeedPollItemBinding implements ViewBinding {

    @NonNull
    public final LinearLayout TitleLayout;

    @NonNull
    public final TextView content;

    @NonNull
    public final SnippetFeedToolbarBinding feedToolbar;

    @NonNull
    public final TintButton icon;

    @NonNull
    public final SnippetPollOptionListBinding pollOptionList;

    @NonNull
    private final FeedListItem rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static SnippetFeedPollItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FeedListItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SnippetFeedPollItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.snippet_feed_poll_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SnippetFeedPollItemBinding(@NonNull FeedListItem feedListItem, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull SnippetFeedToolbarBinding snippetFeedToolbarBinding, @NonNull TintButton tintButton, @NonNull SnippetPollOptionListBinding snippetPollOptionListBinding, @NonNull TextView textView2) {
        this.rootView = feedListItem;
        this.TitleLayout = linearLayout;
        this.content = textView;
        this.feedToolbar = snippetFeedToolbarBinding;
        this.icon = tintButton;
        this.pollOptionList = snippetPollOptionListBinding;
        this.title = textView2;
    }

    @NonNull
    public static SnippetFeedPollItemBinding bind(@NonNull View view) {
        int i10 = R.id._title_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id._title_layout);
        if (linearLayout != null) {
            i10 = R.id.content;
            TextView textView = (TextView) ViewBindings.a(view, R.id.content);
            if (textView != null) {
                i10 = R.id.feed_toolbar;
                View viewA = ViewBindings.a(view, R.id.feed_toolbar);
                if (viewA != null) {
                    SnippetFeedToolbarBinding snippetFeedToolbarBindingBind = SnippetFeedToolbarBinding.bind(viewA);
                    i10 = R.id.icon;
                    TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.icon);
                    if (tintButton != null) {
                        i10 = R.id.poll_option_list;
                        View viewA2 = ViewBindings.a(view, R.id.poll_option_list);
                        if (viewA2 != null) {
                            SnippetPollOptionListBinding snippetPollOptionListBindingBind = SnippetPollOptionListBinding.bind(viewA2);
                            i10 = R.id.title;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                            if (textView2 != null) {
                                return new SnippetFeedPollItemBinding((FeedListItem) view, linearLayout, textView, snippetFeedToolbarBindingBind, tintButton, snippetPollOptionListBindingBind, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
