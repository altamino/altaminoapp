package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.story.widgets.StoryTopicView;

/* JADX INFO: loaded from: classes11.dex */
public final class CommunityDetailTopicViewBinding implements ViewBinding {

    @NonNull
    private final StoryTopicView rootView;

    @NonNull
    public final StoryTopicView storyTopicLayout;

    @NonNull
    public static CommunityDetailTopicViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public StoryTopicView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CommunityDetailTopicViewBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        StoryTopicView storyTopicView = (StoryTopicView) view;
        return new CommunityDetailTopicViewBinding(storyTopicView, storyTopicView);
    }

    @NonNull
    public static CommunityDetailTopicViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.community_detail_topic_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CommunityDetailTopicViewBinding(@NonNull StoryTopicView storyTopicView, @NonNull StoryTopicView storyTopicView2) {
        this.rootView = storyTopicView;
        this.storyTopicLayout = storyTopicView2;
    }
}
