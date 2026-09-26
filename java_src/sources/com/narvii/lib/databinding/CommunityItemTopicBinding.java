package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;
import com.narvii.widget.TopicView;

/* JADX INFO: loaded from: classes2.dex */
public final class CommunityItemTopicBinding implements ViewBinding {

    @NonNull
    private final TopicView rootView;

    @NonNull
    public final TopicView storyTopicLayout;

    @NonNull
    public static CommunityItemTopicBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public TopicView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CommunityItemTopicBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        TopicView topicView = (TopicView) view;
        return new CommunityItemTopicBinding(topicView, topicView);
    }

    @NonNull
    public static CommunityItemTopicBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.community_item_topic, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CommunityItemTopicBinding(@NonNull TopicView topicView, @NonNull TopicView topicView2) {
        this.rootView = topicView;
        this.storyTopicLayout = topicView2;
    }
}
