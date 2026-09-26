package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.topic.widgets.StoryTopicMoreView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class ItemDiscoverTabTopicTitleBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView icon;

    @NonNull
    public final FrameLayout iconContainer;

    @NonNull
    public final FrameLayout interestView;

    @NonNull
    public final StoryTopicMoreView loadingView;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static ItemDiscoverTabTopicTitleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemDiscoverTabTopicTitleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_discover_tab_topic_title, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemDiscoverTabTopicTitleBinding(@NonNull FrameLayout frameLayout, @NonNull ThumbImageView thumbImageView, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull StoryTopicMoreView storyTopicMoreView, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.icon = thumbImageView;
        this.iconContainer = frameLayout2;
        this.interestView = frameLayout3;
        this.loadingView = storyTopicMoreView;
        this.title = textView;
    }

    @NonNull
    public static ItemDiscoverTabTopicTitleBinding bind(@NonNull View view) {
        int i10 = R.id.icon;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.icon);
        if (thumbImageView != null) {
            i10 = R.id.icon_container;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.icon_container);
            if (frameLayout != null) {
                i10 = R.id.interest_view;
                FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.interest_view);
                if (frameLayout2 != null) {
                    i10 = R.id.loading_view;
                    StoryTopicMoreView storyTopicMoreView = (StoryTopicMoreView) ViewBindings.a(view, R.id.loading_view);
                    if (storyTopicMoreView != null) {
                        i10 = R.id.title;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.title);
                        if (textView != null) {
                            return new ItemDiscoverTabTopicTitleBinding((FrameLayout) view, thumbImageView, frameLayout, frameLayout2, storyTopicMoreView, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
