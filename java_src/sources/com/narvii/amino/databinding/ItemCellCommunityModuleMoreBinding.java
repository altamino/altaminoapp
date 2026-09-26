package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.topic.widgets.StoryTopicMoreView;

/* JADX INFO: loaded from: classes9.dex */
public final class ItemCellCommunityModuleMoreBinding implements ViewBinding {

    @NonNull
    public final StoryTopicMoreView loadingView;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ItemCellCommunityModuleMoreBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemCellCommunityModuleMoreBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_cell_community_module_more, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemCellCommunityModuleMoreBinding(@NonNull FrameLayout frameLayout, @NonNull StoryTopicMoreView storyTopicMoreView) {
        this.rootView = frameLayout;
        this.loadingView = storyTopicMoreView;
    }

    @NonNull
    public static ItemCellCommunityModuleMoreBinding bind(@NonNull View view) {
        StoryTopicMoreView storyTopicMoreView = (StoryTopicMoreView) ViewBindings.a(view, R.id.loading_view);
        if (storyTopicMoreView != null) {
            return new ItemCellCommunityModuleMoreBinding((FrameLayout) view, storyTopicMoreView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.loading_view)));
    }
}
